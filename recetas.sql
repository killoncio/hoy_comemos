
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 16, 2017 at 05:40 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u715635737_recet`
--

-- --------------------------------------------------------

--
-- Table structure for table `recetas`
--

CREATE TABLE IF NOT EXISTS `recetas` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ingredientes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dificultad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tiempo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=59 ;

--
-- Dumping data for table `recetas`
--

INSERT INTO `recetas` (`id`, `nombre`, `tipo`, `ingredientes`, `dificultad`, `tiempo`, `link`) VALUES
(1, 'pittige varkenhaas', 'carne', '', '', '', ''),
(2, 'pasta con carne', 'pasta', '', '', '', ''),
(3, 'carne con tomate', 'carne', '', '', '', ''),
(4, 'lentejas', 'guiso', '', '', '', ''),
(5, 'pasta con salmon', 'pasta', '', '', '', ''),
(6, 'pastel de ajo', 'especial', '', '', '', ''),
(7, 'pasta con pesto rojo', 'pasta', '', '', '', ''),
(8, 'pasta con pesto verde', 'pasta', '', '', '', ''),
(9, 'hamburguesas', 'carne', '', '', '', ''),
(10, 'lasagna', 'pasta', '', '', '', ''),
(11, 'tortilla de patata', 'especial', '', '', '', ''),
(12, 'salmon', 'pescado', '', '', '', ''),
(13, 'pasta carbonara', 'pasta', '', '', '', ''),
(14, 'garbanzos con gambas', 'guiso', '', '', '', ''),
(15, 'kipsate', 'carne', '', '', '', ''),
(16, 'papas con chocos', 'guiso', '', '', '', ''),
(17, 'garbanzos con pescado', 'guiso', '', '', '', ''),
(18, 'papas con carne', 'guiso', '', '', '', ''),
(20, 'guisantes con pescado', 'guiso', '', '', '', ''),
(21, 'garbanzos con chorizo', 'guiso', '', '', '', ''),
(23, 'atun', 'pescado', '', '', '', ''),
(54, 'Tortitas americanas', 'postre', '', 'baja', 'baja', 'http://www.gutamama.com/2014/03/tortitas-americanas-o-pancakes.html?m=1'),
(25, 'rissoto', 'pasta', '', '', '', ''),
(26, 'carbonara al curry', 'pasta', '', '', '', 'http://javirecetas.hola.com/carbonara-al-curry/'),
(27, 'mouse chocolate negro', 'postre', '', '', '', 'http://javirecetas.hola.com/mousse-de-chocolate-negro/'),
(28, 'risotto gambas', 'pasta', '', '', '', 'http://javirecetas.hola.com/risotto-de-gambas-y-esparragos/'),
(29, 'merluza en salsa verde', 'pescado', '', '', '', 'http://javirecetas.hola.com/merluza-en-salsa-verde/'),
(30, 'merluza en salsa', 'pescado', '', '', '', 'http://javirecetas.hola.com/merluza-en-salsa/'),
(31, 'bonito con tomate', 'pescado', '', '', '', 'http://elcomidista.elpais.com/elcomidista/2011/08/25/articulo/1314248400_131424.html'),
(32, 'tarta de santiago', 'postre', '', '', '', 'http://javirecetas.hola.com/tarta-de-santiago/'),
(33, 'tiramisu', 'postre', '', '', '', 'https://www.directoalpaladar.com/postres/como-hacer-tiramisu-casero-receta'),
(34, 'pasta con gambas y pesto verde', 'pasta', '', '', '', 'http://elcomidista.elpais.com/elcomidista/2010/10/13/receta/1286949600_128694.html'),
(35, 'brocheta de pollo con salsa agridulce', 'carne', '', '', '', 'http://www.consumer.es/web/es/alimentacion/recetas/2003/02/24/58044.php'),
(52, 'caballa', 'pescado', '', '', '', ''),
(37, 'solomillo al whiski', 'carne', '', '', '', 'http://javirecetas.hola.com/solomillo-al-whisky/'),
(38, 'papas con carne', 'guiso', '', '', '', 'http://javirecetas.hola.com/papas-con-carne-nueva-receta/'),
(39, 'suddervlees met frites', 'carne', '', '', '', 'https://www.ah.nl/allerhande/recept/R-R591756/suddervlees-met-frites;WLSESSIONID=PdNwxBQKYbzV4IlU3H_MKvRSpSqFKOg9EdVBJHsgafiXmpppoJbd!2135815550?_requestid=7279938'),
(40, 'notentaar', 'postre', '', '', '', 'https://www.ah.nl/allerhande/recept/R-R869432/intense-notentaart?returnId=591756&_requestid=7280222'),
(41, 'rollo de roquefort y jamon york', 'especial', '', '', '', 'http://pandora-lacocinadepandora.blogspot.nl/2010/08/rollo-de-roquefort-con-jamon-york.html'),
(42, 'arroz con pollo', 'guiso', '', '', '', 'http://javirecetas.hola.com/arroz-con-pollo/'),
(43, 'entrecot con patatas a las finas hierbas', 'carne', '', 'media', 'alta', 'https://www.youtube.com/watch?v=nQxUNwbShSg'),
(44, 'sushi', 'especial', '', 'media', 'alta', 'https://www.youtube.com/watch?v=4k6YxVEaIPk'),
(45, 'dorada a la sal', 'pescado', '', 'baja', 'media', 'http://javirecetas.hola.com/dorada-a-la-sal/'),
(47, 'garbanzos con langostinos', 'guiso', '', '', '', 'http://javirecetas.hola.com/garbanzos-con-langostinos/'),
(48, 'mini gehakte empanadas', 'especial', '', '', '', 'https://www.jumbo.com/mini-gehaktempanada''s/501144/'),
(49, 'mac and cheese', 'pasta', '', 'media', 'alta', 'https://www.buzzfeed.com/adambianchi/terry-crews-took-over-the-tasty-kitchen-and-made-his-famous?bffbtasty&ref=bffbtasty&utm_term=.cvm9PmAon#.nlMy0E7XP'),
(50, 'goulash', 'carne', '', 'media', 'media', 'https://www.jumbo.com/klassieke-goulash/500602/'),
(51, 'puchero', 'guiso', '', '', '', 'http://javirecetas.hola.com/puchero-gaditano/'),
(53, 'Pastel de chocolate', 'postre', '', '', '', ''),
(55, 'Arroz con garbanzos y carrillera alioli', 'guiso', '', 'baja', 'baja', 'http://elcomidista.elpais.com/elcomidista/2014/10/02/articulo/1412226000_141222.html'),
(56, 'Mejillones con chile', 'especial', '', 'baja', 'baja', 'http://elcomidista.elpais.com/elcomidista/2016/10/11/receta/1476222023_811675.html'),
(57, 'Tarta de queso japonesa', 'postre', '', 'baja', 'baja', 'http://elcomidista.elpais.com/elcomidista/2016/10/19/receta/1476906514_131989.html');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
