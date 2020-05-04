# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: lo (MySQL 5.5.5-10.3.16-MariaDB)
# Database: hw4
# Generation Time: 2020-05-04 10:26:25 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table album
# ------------------------------------------------------------

DROP TABLE IF EXISTS `album`;

CREATE TABLE `album` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `genre` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(255) NOT NULL DEFAULT '',
  `image_url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;

INSERT INTO `album` (`id`, `name`, `genre`, `author`, `image_url`)
VALUES
	(1,'アンハッピーリフレイン','Vocaloid','wowaka','https://vignette.wikia.nocookie.net/vocaloid/images/2/2b/URcover.jpg'),
	(2,'アンドロイドガール','Vocaloid','DECO*27','https://vignette.wikia.nocookie.net/vocaloid/images/4/44/アンドロイドガール_(ANDROID_GIRL)_-_DECO*27_-_通常盤(Normal_Edition).jpg'),
	(3,'39D','Vocaloid','Mitchie M','https://vignette.wikia.nocookie.net/vocaloid/images/7/7a/Mitchie-M_39D.jpg'),
	(4,'バーチャル・ポップスター','Vocaloid','Mitchie M','https://vignette.wikia.nocookie.net/vocaloid/images/1/18/Virtual_popstar_mitchie_m.jpg'),
	(5,'ワンミーツハー','Pops','ヒトリエ','https://vignette.wikia.nocookie.net/jpop/images/c/cd/One_Me_Two_Hearts_A.jpg'),
	(6,'STILLING','Touhou Arrange','魂音泉','https://en.touhouwiki.net/images/9/93/TOS037.jpg'),
	(7,'She Saw','Touhou Arrange','魂音泉','https://en.touhouwiki.net/images/6/67/TOS039.jpg'),
	(8,'LIVES','Touhou Arrange','魂音泉','https://en.touhouwiki.net/images/1/11/TOS043.jpg'),
	(9,'Chill In Wonderland','Touhou Arrange','魂音泉','https://en.touhouwiki.net/images/2/2a/TOS045.jpg'),
	(10,'ROOTS','Touhou Arrange','魂音泉','https://en.touhouwiki.net/images/a/a3/TOS047.jpg'),
	(11,'Grand Slam','Touhou Arrange','Halozy','https://en.touhouwiki.net/images/5/54/HLZY-0026.jpg'),
	(12,'ブチアゲ♂トウホウ','Touhou Arrange','Halozy','https://en.touhouwiki.net/images/2/2e/HLZY-0028.jpg');

/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
