Vue.component('receipt-item', {
  props: ['receipt'],
  template: '
  	<li class="receipt {{v-if=receipt.is_new}}receipt--new" data-category={{receipt.category}} draggable="true">
		<div class="receipt_name">
			{{ receipt.name }}
			<span v-if="receipt.ingredients" class="ingredients_trigger">-i-</span>
			<span v-if="receipt.link"><a href={{ receipt.link }} target='_blank'>+</a></span>
			<span v-if="receipt.is_new" class="label label-success">New!</span>
		</div>
		<div class='receipt_image img-wrapper'>
			<img class='img-responsive' src='assets/img/{{ receipt.image }}.jpg'
				onerror="this.onerror=null;this.src='assets/img/placeholder.jpg';">
		</div>
		<div v-if="receipt.ingredients" class="receipt_ingredients hide">
			{{ receipt.ingredients }}
		</div>
	</li>
  	'>
})