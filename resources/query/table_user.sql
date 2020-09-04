# ************************************************************
# Sequel Pro SQL dump
# Versi�n 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: tuliverydev.cwfe8bk8ds70.us-east-1.rds.amazonaws.com (MySQL 5.7.22-log)
# Base de datos: db_tulivery_v3
# Tiempo de Generaci�n: 2020-08-16 21:18:15 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `icon` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `name`, `icon`, `status`, `created_at`, `updated_at`)
VALUES
	(1, 'Rocio', 'https://walter.conceptomercado.com/public/images/icon_rocio.jpg', 1, now(), now()),
	(2, 'Anita', 'https://walter.conceptomercado.com/public/images/icon_anita.jpeg', 1, now(), now()),
	(3, 'Ale', 'https://walter.conceptomercado.com/public/images/icon_ale.jpg', 1, now(), now()),
	(4, 'Cubita', 'https://walter.conceptomercado.com/public/images/icon_cuba.jpg', 1, now(), now()),
	(5, 'Beatriz', 'https://walter.conceptomercado.com/public/images/icon_betty.jpg', 1, now(), now()),
	(6, 'Lucero', 'https://walter.conceptomercado.com/public/images/icon_lucero.jpg', 1, now(), now()),
	(7, 'Diana', 'https://walter.conceptomercado.com/public/images/icon_andrea.jpg', 1, now(), now()),
	(8, 'Grecia', 'https://walter.conceptomercado.com/public/images/icon_maylen.jpg', 1, now(), now()),
	(9, 'Andrea', 'https://walter.conceptomercado.com/public/images/icon_musa.jpg', 1, now(), now()),
	(10, 'Gonza', 'https://walter.conceptomercado.com/public/images/icon_gonza.jpg', 1, now(), now()),
	(11, 'Walter', 'https://walter.conceptomercado.com/public/images/icon_walter.jpeg', 1, now(), now());

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
