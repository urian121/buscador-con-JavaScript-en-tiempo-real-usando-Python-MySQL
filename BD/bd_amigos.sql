-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para bd_amigos
CREATE DATABASE IF NOT EXISTS `bd_amigos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_amigos`;

-- Volcando estructura para tabla bd_amigos.amigos
CREATE TABLE IF NOT EXISTS `amigos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `profesion` varchar(50) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla bd_amigos.amigos: ~0 rows (aproximadamente)
INSERT INTO `amigos` (`id`, `nombre`, `profesion`, `imagen`) VALUES
	(1, 'Urian Viera', 'Ingeniero de Sistemas', 'urian.png'),
	(2, 'Abelardo Perez', 'Ingeniero de Sistemas', 'abelardo.jpg'),
	(3, 'Braudin Laya', 'Ingeniero de Sistemas', 'braudin.png'),
	(4, 'Dayana Ramirez', 'Web Developer', 'dayana.png'),
	(5, 'Any Somosa', 'Licenciada en Enfermera', 'any.png'),
	(6, 'Jennifer Lopez', 'Agente Comercial', 'jennifer.png'),
	(7, 'Alberto Fodol', 'Desarrollador', 'alberto.png'),
	(8, 'Jose Gregorio', 'full-stack', 'gregorio.png'),
	(9, 'Luisa Mora', 'Diseñadora UI/UX', 'luisa.png'),
	(10, 'Dary Perez', 'Analista de Sistemas', 'dary.jpg'),
	(11, 'Ryan Gosling', 'Diseñador Grafico', 'ryan.png'),
	(12, 'Chris Hemsworth', 'Analista de Sistemas', 'chris.png');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
