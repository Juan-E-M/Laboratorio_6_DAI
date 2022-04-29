-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.33 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para lab06
CREATE DATABASE IF NOT EXISTS `lab06` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `lab06`;

-- Volcando estructura para tabla lab06.carousel
CREATE TABLE IF NOT EXISTS `carousel` (
  `imagen` varchar(400) DEFAULT NULL,
  `juego` varchar(50) DEFAULT NULL,
  `precio` varchar(50) DEFAULT NULL,
  `consola` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla lab06.carousel: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `carousel` DISABLE KEYS */;
INSERT INTO `carousel` (`imagen`, `juego`, `precio`, `consola`) VALUES
	('https://assets.nintendo.com/image/upload/ar_16:9,b_auto,c_pad,dpr_auto,f_auto,q_auto,w_auto:100/b_rgb:ffffff/v1/ncom/en_US/games/switch/s/super-smash-bros-ultimate-switch/super-smash-bros-ultimate-switch-hero', 'SSB Ultimate', '$99.99', 'Nintendo Switch'),
	('https://assets.nintendo.com/image/upload/ar_16:9,b_auto,c_pad,dpr_auto,f_auto,q_auto,w_auto:100/b_rgb:ffffff/v1/ncom/en_US/games/switch/m/mario-kart-8-deluxe-switch/hero', 'Mario Kart 8', '$59.99', 'Nintendo Switch'),
	('https://assets.nintendo.com/image/upload/ar_16:9,b_auto,c_pad,dpr_auto,f_auto,q_auto,w_auto:100/b_rgb:ffffff/v1/ncom/en_US/games/switch/t/triangle-strategy-switch/hero', 'TRIANGLE STRATEGY', '$59.99', 'Nintendo Switch'),
	('https://assets.nintendo.com/image/upload/ar_16:9,b_auto,c_pad,dpr_auto,f_auto,q_auto,w_auto:100/b_rgb:ffffff/v1/ncom/en_US/games/switch/p/pokemon-legends-arceus-switch/hero', 'Pokémon legends: Arceus', '$59.99', 'Nintendo Switch'),
	('https://assets.nintendo.com/image/upload/ar_16:9,b_auto,c_pad,dpr_auto,f_auto,q_auto,w_auto:100/b_rgb:ffffff/v1/ncom/en_US/games/switch/n/nintendo-switch-sports-switch/hero', 'Nintendo Switch Sports', '$49.99', 'Nintendo Switch'),
	('https://assets.nintendo.com/image/upload/ar_16:9,b_auto,c_pad,dpr_auto,f_auto,q_auto,w_auto:100/b_rgb:ffffff/v1/ncom/en_US/games/switch/m/mario-strikers-battle-league-switch/hero', 'MS BattleLeague', '$49.99', 'Nintendo Switch'),
	('https://assets.nintendo.com/image/upload/ar_16:9,b_auto,c_pad,dpr_auto,f_auto,q_auto,w_auto:100/b_rgb:ffffff/v1/ncom/en_US/games/switch/m/metroid-dread-switch/hero', 'Metroid Dread', '$49.99', 'Nintendo Switch'),
	('https://assets.nintendo.com/image/upload/ar_16:9,b_auto,c_pad,dpr_auto,f_auto,q_auto,w_auto:100/b_rgb:ffffff/v1/ncom/en_US/games/switch/p/pokemon-brilliant-diamond-switch/hero', 'Pokémon Brillant Diamond', '$69.99', 'Nintendo Switch'),
	('https://assets.nintendo.com/image/upload/ar_16:9,b_auto,c_pad,dpr_auto,f_auto,q_auto,w_auto:100/b_rgb:ffffff/v1/ncom/en_US/games/switch/p/pokemon-shining-pearl-switch/hero', 'Pokémon Shining Pearl', '$69.99', 'Nintendo Switch'),
	('https://assets.nintendo.com/image/upload/ar_16:9,b_auto,c_pad,dpr_auto,f_auto,q_auto,w_auto:100/b_rgb:ffffff/v1/Nintendo%20Direct/2021/10-15-2021/aw7f2jh5/posters/ACNH-happy-home-paradise', 'Animal Crossing', '$49.99', 'Nintendo Switch');
/*!40000 ALTER TABLE `carousel` ENABLE KEYS */;

-- Volcando estructura para tabla lab06.carousel_1
CREATE TABLE IF NOT EXISTS `carousel_1` (
  `imagen` varchar(400) DEFAULT NULL,
  `precio` varchar(50) DEFAULT NULL,
  `consola` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla lab06.carousel_1: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `carousel_1` DISABLE KEYS */;
INSERT INTO `carousel_1` (`imagen`, `precio`, `consola`) VALUES
	('https://assets.nintendo.com/image/upload/ncom/en_US/switch/site-design-update/oled-model-promo', '$799.99', 'Nintendo Switch OLED Model'),
	('https://assets.nintendo.com/image/upload/ncom/en_US/switch/split-cta-system', '$699.99', 'Nintendo Switch'),
	('https://assets.nintendo.com/image/upload/ncom/en_US/switch/lite/split-cta-switch-lite', '$509.99', 'Nintendo Switch Lite'),
	('https://www.pdvg.it/wp-content/uploads/2020/09/Nintendo3ds-1024x576.jpg', '$1099.99', 'Nintendo 3DS XL');
/*!40000 ALTER TABLE `carousel_1` ENABLE KEYS */;

-- Volcando estructura para tabla lab06.continentes
CREATE TABLE IF NOT EXISTS `continentes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla lab06.continentes: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `continentes` DISABLE KEYS */;
INSERT INTO `continentes` (`id`, `nombre`) VALUES
	(1, 'America'),
	(2, 'Europa'),
	(3, 'Asia'),
	(4, 'Africa'),
	(5, 'Oceania');
/*!40000 ALTER TABLE `continentes` ENABLE KEYS */;

-- Volcando estructura para tabla lab06.footer_contenido
CREATE TABLE IF NOT EXISTS `footer_contenido` (
  `columna` varchar(50) DEFAULT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `nombre_imagen` varchar(50) DEFAULT NULL,
  `descripcion` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla lab06.footer_contenido: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `footer_contenido` DISABLE KEYS */;
INSERT INTO `footer_contenido` (`columna`, `titulo`, `nombre_imagen`, `descripcion`) VALUES
	('Mas-informacion', 'Mas informacion de la compañia', '', 'Esta compania se dedica dar informacion sobre juegos y a la venta de  videojuegos, asi tambien como a noticias sobre el medio de los video juegos y actualidad en el mundo del software.'),
	('Redes-Sociales', 'Redes Sociales', 'facebook', 'Siguenos en Facebook'),
	('Redes-Sociales', 'Redes Sociales', 'twitter', 'Siguenos en Twitter'),
	('Redes-Sociales', 'Redes Sociales', 'instagram', 'Siguenos en Instagram'),
	('Redes-Sociales', 'Redes Sociales', 'youtube', 'Siguenos en Youtube'),
	('Informacion-contacto', 'Informacion Contactos', 'celular', '+51-992-682-292'),
	('Informacion-contacto', 'Informacion Contactos', 'contacto', 'empresa@gmail.com');
/*!40000 ALTER TABLE `footer_contenido` ENABLE KEYS */;

-- Volcando estructura para tabla lab06.images
CREATE TABLE IF NOT EXISTS `images` (
  `id_image_left` int(11) NOT NULL AUTO_INCREMENT,
  `image_left` varchar(100) DEFAULT NULL,
  `image_right` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_image_left`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla lab06.images: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` (`id_image_left`, `image_left`, `image_right`) VALUES
	(1, 'src="Imagenes\\Sonic.png"', 'src="Imagenes/Mario.png"');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;

-- Volcando estructura para tabla lab06.letrero
CREATE TABLE IF NOT EXISTS `letrero` (
  `id_letrero` int(11) NOT NULL AUTO_INCREMENT,
  `letrero_titulo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_letrero`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla lab06.letrero: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `letrero` DISABLE KEYS */;
INSERT INTO `letrero` (`id_letrero`, `letrero_titulo`) VALUES
	(1, 'Pasala genial!');
/*!40000 ALTER TABLE `letrero` ENABLE KEYS */;

-- Volcando estructura para tabla lab06.noticias
CREATE TABLE IF NOT EXISTS `noticias` (
  `url_ref` varchar(400) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `descripcion` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla lab06.noticias: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` (`url_ref`, `imagen`, `descripcion`) VALUES
	('https://www.nintendo.com/es_LA/whatsnew/detail/2022/mario-kart-8-deluxe-la-primera-ola-ya-esta-disponible/', 'noticia1.jpg', '¡La primera ola ya está disponible! Compite a través del Centro Cocotero y otras pistas.'),
	('https://www.nintendo.com/es_LA/whatsnew/detail/2022/novedades-del-mes-de-abril/', 'noticia2.jpg', 'Nintendo Switch Online + Paquete de expansión: Juegos de SEGA Genesis del mes de marzo.'),
	('https://www.nintendo.com/es_LA/whatsnew/detail/2022/escondete-en-las-sombras-en-estos-juegos-sigilosos/', 'noticia3.jpg', '¡Escóndete en las sombras (o en la hierba alta) en estos juegos sigilosos!'),
	('https://www.nintendo.com/es_LA/whatsnew/detail/2022/nintendo-switch-online-paquete-de-expansion-juegos-de-sega-genesis-del-mes-de-marzo/"', 'noticia4.jpg', 'Nintendo Switch Online + Paquete de expansión: Juegos de SEGA Genesis del mes de marzo.'),
	('https://www.nintendo.com/es_LA/whatsnew/detail/2021/animal-crossing-new-horizons-happy-home-paradise-nuevo-contenido-descargable/', 'noticia7.jpg', '¡Nuevo contenido descargable! Expande tus horizontes con el contenido descargable Animal Crossing: New Horizons – Happy Home Paradise.'),
	('https://www.nintendo.com/es_LA/whatsnew/detail/2022/preparate-para-el-desafio-y-unete-a-la-caza-en-monster-hunter-rise-el-mas-reciente-juego-de-muestra/', 'noticia5.jpg', 'Prepárate para el desafío y únete a la caza en MONSTER HUNTER RISE, el más reciente juego de muestra.'),
	('https://www.nintendo.com/es_LA/whatsnew/detail/2022/nintendo-switch-online-paquete-de-expansion-ya-esta-disponible-the-legend-of-zelda-majoras-mask/', 'noticia6.jpg', 'Nintendo Switch Online + Paquete de expansión: ¡ya está disponible The Legend of Zelda: Majora’s Mask!');
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;

-- Volcando estructura para tabla lab06.paises
CREATE TABLE IF NOT EXISTS `paises` (
  `id` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  KEY `id` (`id`),
  CONSTRAINT `FK__nombres` FOREIGN KEY (`id`) REFERENCES `continentes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla lab06.paises: ~126 rows (aproximadamente)
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` (`id`, `nombre`) VALUES
	(1, 'Antigua y Barbuda'),
	(1, 'Argentina'),
	(1, 'Bahamas'),
	(1, 'Barbados'),
	(1, 'Belice'),
	(1, 'Bolivia'),
	(1, 'Brasil'),
	(1, 'Canada'),
	(1, 'Chile'),
	(1, 'Colombia'),
	(1, 'Costa Rica'),
	(1, 'Cuba'),
	(1, 'Dominica'),
	(1, 'Ecuador'),
	(1, 'El Salvador'),
	(1, 'Estados Unidos'),
	(1, 'Granada'),
	(1, 'Guatemala'),
	(1, 'Guyana'),
	(1, 'Haiti'),
	(1, 'Honduras'),
	(1, 'Jamaica'),
	(1, 'Mexico'),
	(1, 'Nicaragua'),
	(1, 'Panama'),
	(1, 'Paraguay'),
	(1, 'Per&uacute'),
	(1, 'Republica Dominicana'),
	(1, 'San Cristobal y Nieves'),
	(1, 'San Vicente y las Granadinas'),
	(1, 'Santa Lucia'),
	(1, 'Surinam'),
	(1, 'Trinidad y Tobago'),
	(1, 'Uruguay'),
	(1, 'Venezuela'),
	(3, 'Afganistan'),
	(3, 'Arabia Saudita'),
	(3, 'Banglades'),
	(3, 'Barein'),
	(3, 'Birmania'),
	(3, 'Brunei'),
	(3, 'Butan'),
	(3, 'Camboya'),
	(3, 'Catar'),
	(3, 'China'),
	(3, 'Corea del Sur'),
	(3, 'Filipinas'),
	(3, 'India'),
	(3, 'Irak'),
	(3, 'Iran'),
	(3, 'Israel'),
	(3, 'Japon'),
	(3, 'Jordania'),
	(3, 'Kirguistan'),
	(3, 'Kuwait'),
	(3, 'Laos'),
	(3, 'Libano'),
	(3, 'Malasia'),
	(3, 'Maldivas'),
	(3, 'Mongolia'),
	(3, 'Nepal'),
	(3, 'Oman'),
	(3, 'Pakistan'),
	(3, 'Singapur'),
	(3, 'Siria'),
	(3, 'Sri Lanka'),
	(3, 'Tailandia'),
	(2, 'Andorra'),
	(2, 'Austria'),
	(2, 'Belgica'),
	(2, 'Bosnia'),
	(2, 'Croacia'),
	(2, 'Eslovaquia'),
	(2, 'Dinamarca'),
	(2, 'Espa&ntildea'),
	(2, 'Estonia'),
	(2, 'Francia'),
	(2, 'Grecia'),
	(2, 'Irlanda'),
	(2, 'Italia'),
	(2, 'Luxenburgo'),
	(2, 'Montenegro'),
	(2, 'Noruega'),
	(2, 'Polonia'),
	(2, 'Portugal'),
	(2, 'Reino Unido'),
	(2, 'Rusia'),
	(2, 'Suiza'),
	(2, 'Ucrania'),
	(5, 'Australia'),
	(5, 'Estados Federados de Micronesia'),
	(5, 'Fiyi'),
	(5, 'Kiribati'),
	(5, 'Islas Marshall'),
	(5, 'Islas Salomon'),
	(5, 'Nauru'),
	(5, 'Nueva Zelanda'),
	(5, 'Palaos'),
	(5, 'Papua Nueva Guinea'),
	(5, 'Samoa'),
	(5, 'Tuvalu'),
	(5, 'Vanuatu'),
	(5, 'Indonesia'),
	(4, 'Angola'),
	(4, 'Argelia'),
	(4, 'Benin'),
	(4, 'Botsuana'),
	(4, 'Burundi'),
	(4, 'Cabo Verde'),
	(4, 'Camerun'),
	(4, 'Chad'),
	(4, 'Comoras'),
	(4, 'Republica del Congo '),
	(4, 'Republica Democratica del Congo'),
	(4, 'Costa de Marfil'),
	(4, 'Eritrea'),
	(4, 'Etiopia'),
	(4, 'Gabon'),
	(4, 'Gambia'),
	(4, 'Ghana'),
	(4, 'Guiena'),
	(4, 'Guinea-Bisau'),
	(4, 'Kenia'),
	(4, 'Lesoto'),
	(4, 'Liberia'),
	(4, 'Libia');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
