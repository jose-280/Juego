/*
SQLyog Enterprise - MySQL GUI v8.1 
MySQL - 5.0.17-nt : Database - juego
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`juego` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `juego`;

/*Table structure for table `preguntas` */

DROP TABLE IF EXISTS `preguntas`;

CREATE TABLE `preguntas` (
  `numpregunta` int(100) NOT NULL auto_increment,
  `pregunta` varchar(200) default NULL,
  `opcion1` varchar(200) default NULL,
  `opcion2` varchar(200) default NULL,
  `opcion3` varchar(200) default NULL,
  `opcion4` varchar(200) default NULL,
  `res_correcta` varchar(10) default NULL,
  PRIMARY KEY  (`numpregunta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `preguntas` */

insert  into `preguntas`(numpregunta,pregunta,opcion1,opcion2,opcion3,opcion4,res_correcta) values (1,'En cual pais se encuentra la torre de Pisa','Francia','Inglaterra','Italia','Alemania','3'),(2,'Cual es la musica tipica de Argentina','Currulao','Tango','Cumbia','Rock','2'),(3,'Como se llama el himno nacional de Francia','La francesa','La Lindosa','La marsellesa','Le soup','3'),(4,'Cuantos huesos tiene el ser humano','106','202','307','206','4'),(5,'Cual es la ultima letra del alfabeto Griego','Alpha','Omega','Zeta','Pi','2'),(6,'Cual de estos reptiles cambia de color','Cobra','Iguana','Camaleon','Cocodrilo','3'),(7,'Cual es la fuerza mas importante en el universo','Fuerza Electromagnetica','Fuerza centripeta','Fuerza gravitatoria','Fuerza bruta','3'),(8,'Cuantos sentidos tiene el ser humano','4','5','6','7','2'),(9,'Cuantos colores tiene el arcoiris','5','6','7','8','3'),(10,'En que pais queda la Torre Eiffel','Francia','Irlanda','Noruega','Portugal','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
