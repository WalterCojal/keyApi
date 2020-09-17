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

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1, /* 1: Imagen, 2: Video, 3: Gif  */
  `source` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;

INSERT INTO `media`
VALUES
	(1, 0, 3, 'https://walter.conceptomercado.com/public/gifs/gif_1.gif', 1, now(), now()),
	(2, 0, 3, 'https://walter.conceptomercado.com/public/gifs/gif_2.gif', 1, now(), now()),
	(3, 0, 3, 'https://walter.conceptomercado.com/public/gifs/gif_3.gif', 1, now(), now()),
	(4, 0, 3, 'https://walter.conceptomercado.com/public/gifs/gif_4.gif', 1, now(), now()),
	(5, 0, 3, 'https://walter.conceptomercado.com/public/gifs/gif_5.gif', 1, now(), now()),

	(6, 1, 2, 'https://walter.conceptomercado.com/public/videos/video_rocio.mp4', 1, now(), now()),
  (7, 2, 2, 'https://walter.conceptomercado.com/public/videos/video_anita.mp4', 1, now(), now()),
  (8, 3, 2, 'https://walter.conceptomercado.com/public/videos/video_ale.mp4', 1, now(), now()),
  (9, 4, 2, 'https://walter.conceptomercado.com/public/videos/video_cuba.mp4', 1, now(), now()),
  (10, 5, 2, 'https://walter.conceptomercado.com/public/videos/video_betty.mp4', 1, now(), now()),
  (11, 6, 2, 'https://walter.conceptomercado.com/public/videos/video_lucero.MOV', 1, now(), now()),
  (12, 7, 2, 'https://walter.conceptomercado.com/public/videos/video_diana.mp4', 1, now(), now()),
  (13, 8, 2, 'https://walter.conceptomercado.com/public/videos/video_grecia.mp4', 1, now(), now()),
  (14, 9, 2, 'https://walter.conceptomercado.com/public/videos/video_andrea.mp4', 1, now(), now()),
  (15, 10, 2, 'https://walter.conceptomercado.com/public/videos/video_gonza.mp4', 1, now(), now()),
  (16, 11, 2, 'https://walter.conceptomercado.com/public/videos/video_maylen.mp4', 1, now(), now()),
  (17, 20, 2, 'https://walter.conceptomercado.com/public/videos/video_walter.mp4', 1, now(), now()),
  (18, 12, 2, 'https://walter.conceptomercado.com/public/videos/video_abel.mp4', 1, now(), now()),
  (19, 12, 2, 'https://walter.conceptomercado.com/public/videos/video_mafer.mp4', 1, now(), now()),
  (20, 12, 2, 'https://walter.conceptomercado.com/public/videos/video_santi.mp4', 1, now(), now()),
  (21, 12, 2, 'https://walter.conceptomercado.com/public/videos/video_pedrito.mp4', 1, now(), now());

/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
