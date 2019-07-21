var receipts =  $('.receipt');
var addForm = $('#addRecetaForm');
var purchaseListWrapper = $('#purchase_text');
var purchaseList = '';

function loadReceipts(receipts) {
	var template = $('#receipt_template').html();
	Mustache.parse(template);   // optional, speeds up future uses
	var rendered = Mustache.render(template, receipts);
	$('#receipt_list').html(rendered);
}

function createImageName(receipts) {
	var wordsToReplace = [" a la ", " a las ", " y "," con "," al "," met "," de "," la "," las "," en ", " a ", " and ", " "];

	for (var i=0; i < receipts.length; i++) {
		var receipt = receipts[i];
		var image_name = receipt.name;
		var re;
		for (var j=0; j < wordsToReplace.length;j++) {
			re = new RegExp(wordsToReplace[j], "g");
			image_name = image_name.replace(re, "_");
		}
		receipt.image = image_name;

		if (receipt.ingredients) {
			receipt.ingredients = receipt.ingredients.replace(/-|\+/g,'</br><input type="checkbox">');
		}
	}

	return receipts;
}

function fetchData() {
    $.ajax({
        url: 'get_receipts.php',
        method: 'GET',
        dataType:'json'
    }).done(function(data){
    	var receipts = createImageName(data);
        loadReceipts({'receipts': receipts});
    });
}

var data = [
		{"id": 1, "nombre":"pittige varkenhaas", "category":"carne"},
		{"id": 2, "nombre":"lentejas", "category":"guiso"},
		{"id": 3, "nombre":"pasta con salmon", "category":"pasta"},
		{"id": 4, "nombre":"pasta con pesto verde", "category":"pasta"},
		{"id": 5, "nombre":"hamburguesas", "category":"carne"},
		{"id": 6, "nombre":"lasagna", "category":"pasta"},
		{"id": 7, "nombre":"tortilla de patata", "especial":"carne"},
		{"id": 8, "nombre":"salmon", "category":"pescado"},
		{"id": 9, "nombre":"pasta carbonara", "category":"pasta"},
		{"id": 10, "nombre":"garbanzos con gambas", "category":"guiso"},
		{"id": 11, "nombre":"kipsate", "category":"pasta"},
		{"id": 12, "nombre":"garbanzos con pescado", "category":"guiso"},
		{"id": 13, "nombre":"guisantes con pescado", "category":"guiso"},
		{"id": 14, "nombre":"papas con carne", "category":"guiso"},
		{"id": 15, "nombre":"garbanzos con chorizo", "category":"guiso"},
		{"id": 16, "nombre":"risotto", "category":"pasta"},
		{"id": 17, "nombre":"carbonara al curry", "category":"pasta"},
		{"id": 18, "nombre":"arroz con pollo", "category":"pasta"},
		{"id": 19, "nombre":"puchero", "category":"guiso"}
	];

var toggleTask = function(){
	$(this).toggleClass('done');
}

var toggleType = function(e) {
	var button = $(e.target);
	var type = button.data('type');

	if (receipts.length === 0) {
		receipts = $('.receipt');
	}

	button.closest('li').addClass('active').siblings('.active').removeClass('active');

	if (type === "todo" || type === "add" || type === "lista") {
		receipts.toggleClass('hide', type !== "todo");
		addForm.toggleClass('hide', type !== "add");
		purchaseListWrapper.toggleClass('hide', type !== "lista");
	} else if (type === "new") {
		receipts.addClass('hide').filter(".receipt_new").removeClass('hide');
	} else {
		receipts.addClass('hide').filter("[data-category=" + type + "]").removeClass('hide');
	}

}

function showRandomElement() {
	var receiptsSinPostres = receipts.filter('[data-tipo!=postre]');
	var randomNumber = Math.floor(Math.random() * receiptsSinPostres.length);
	receiptsSinPostres.eq(randomNumber).removeClass('hide');
}



var dropzone = $('#receipt_list'),
    leftOffset = 0,
    leftX = 0,
    overallMovement = 0;

var placeholder;
var isPlaceholderAppended = false;

var onTouchStart = function(event) {
	var $this = $(event.currentTarget);
	var offset = $this.offset();
	var width = $this.outerWidth();
	var height = $this.outerHeight();

	placeholder = '<li style="width:' + width + 'px; height:' + height + 'px;"></li>';
	leftX = offset.left;
	var touches = event.originalEvent.changedTouches;
	leftOffset = touches[0].clientX - leftX;
}

var onTouchMove = function(event) {
	var $this = $(event.currentTarget);
	var touches = event.originalEvent.changedTouches;
	var leftMovement = touches[0].clientX - leftOffset;

	if (leftMovement > -10) {

	} else {
		event.preventDefault();
		$this.css({'position': 'relative',
		         'left': leftMovement});

		overallMovement = Math.abs(leftMovement - leftX);
		if (overallMovement > 199) {
			$this.fadeOut(200);
		}
	}
}

var onTouchEnd = function(event) {
	var $this = $(event.currentTarget);

	if (overallMovement < 200) {
		$this.css({'position': 'relative',
			'left': leftX});
	}



    leftOffset = 0;
    leftX = 0;
    overallMovement = 0;
}

function showIngredients(event) {
	event.preventDefault();
	var trigger = $(event.target);
	var ingredients = trigger.parent('.receipt_name').siblings('.receipt_ingredients').text();

	var template = $('#ingredients_template').html();
	Mustache.parse(template);   // optional, speeds up future uses
	var rendered = Mustache.render(template,{'ingredients': ingredients});
	$('#ingredients_text').html(rendered);

}

function hideIngredients(){
	$('#ingredients_text').empty();
}

function addIngredientsToPurchaseList(event) {
	var items = $(event.target).siblings('.ingredients_list').find('input:checked').html();
	purchaseList += items;
	var template = $('#purchase_list_template').html();
	Mustache.parse(template);   // optional, speeds up future uses
	var rendered = Mustache.render(template,{'purchaseList': purchaseList});
	purchaseListWrapper.html(rendered);
}

function attachEvents() {
	$('#receipt_list')
		.on('touchstart', '.receipt', onTouchStart)
		.on('touchmove', '.receipt', onTouchMove)
		.on('touchend', '.receipt', onTouchEnd)
		.on('click', '.ingredients_trigger', showIngredients);

	$('ul.task_list').on('click','.task', toggleTask);

	$('#type_selector').on('click','a', toggleType);
	$('#ingredients_text')
		.on('click','.ingredients_close_button',hideIngredients)
		.on('click','.ingredients_submit_button',addIngredientsToPurchaseList);
}

function init() {


// createImageName();
	fetchData();
	attachEvents();
}

init();


