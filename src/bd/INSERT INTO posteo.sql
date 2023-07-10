CREATE DATABASE  IF NOT EXISTS `proyecto` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `proyecto`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `posteo`
--

DROP TABLE IF EXISTS `posteo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posteo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) COLLATE utf8_spanish_ci NULL,
  `post` varchar(1500) COLLATE utf8_spanish_ci NULL,
  `votos` int NULL,
  `imagen` varchar(400) COLLATE utf8_spanish_ci NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posteo`
--

LOCK TABLES `posteo` WRITE;
/*!40000 ALTER TABLE `posteo` DISABLE KEYS */;

INSERT INTO posteo (titulo, post, votos, imagen) VALUES ('BASTA de plásticos en la Península Valdés!', 'La Península Valdés es nuestra casa, es el hogar de innumerables especies como la Ballena Franca Austral, pingüinos, elefantes y lobos marinos. Pero está invadida por 40 toneladas de cajones rotos, baldes, guantes y redes pesqueras en la zona. Yago Lange visitó la Península y dijo que se ven animales muertos rodeados de basura y pingüinos que ponen huevos dentro de cajas. ESTO ES UNA LOCURA y tenemos que hacer algo para cambiar esta situación.', 1275, 'img/plasticos-peninsula-valdes.jpg');

INSERT INTO posteo (titulo, post, votos, imagen) VALUES ('Queremos respirar aire limpio y puro, BASTA de hollín', 'Los vecinos de Ensenada y Berisso respiramos hollín. El hollín es un polvillo tóxico que vuela por distintas zonas de Ensenada y Berisso proveniente de las chimeneas de la planta COPETRO perteneciente a la empresa Oxbow Argentina (filial de Oxbow Corporation). COPETRO está ubicada en el Puerto La Plata, específicamente en el barrio Campamento de la Ciudad de Ensenada y abastece desde 1983 (año en que se instaló) a todo al mercado nacional de aluminio y exporta un importante porcentaje de su producción. Absorbe todo el material que la destilería de YPF le provee para poder convertir el coque en carbón de petróleo. Sólo 200 metros de terreno y un alambrado separan al Barrio Campamento de Ensenada de la planta COPETRO donde se acumula petróleo para procesar.', 987, 'img/basta-de-hollin.webp');

INSERT INTO posteo (titulo, post, votos, imagen) VALUES ('Recuperemos el Río de la plata', 'Es urgente y vital recuperar la salud de la segunda cuenca más grande de Sudamérica: el Río de la plata. Sus aguas son fuente de vida para los millones de habitantes del AMBA; sin embargo hemos transformado nuestro rio en una gran cloaca a cielo abierto. Efectivamente está en el top 10 de los ríos del mundo, no sólo por ser el más ancho, sino también por ser uno de los más contaminados. ', 1530, 'img/riodelaplata.jpg');

INSERT INTO posteo (titulo, post, votos, imagen) VALUES ('RECUPEREMOS EL DIQUE DE LA FALDA!!!', 'LOS VECINOS Y TURISTAS DE VILLA GIARDINO, HUERTA GRANDE, LA FALDA, VALLE HERMOSO Y CASA GRANDE ESTAMOS ALARMADOS POR LA  COLMATACION EN UN 70% DE BARRO DEL DIQUE LA FALDA Y POR LA GRAVE SITUACION DE SU CUENCA. SOLICITAMOS AL GOBIERNO DE LA PROVINCIA DE CORDOBA Y AL GOBIERNOS NACIONAL DE FORMA URGENTE ENCONTRAR Y FINANCIAR UNA SOLUCION ANTES QUE NOS QUEDEMOS SIN AGUA Y SIN BALNEARIOS.', 988, 'img/dique-la-falda.webp');

INSERT INTO posteo (titulo, post, votos, imagen) VALUES ('Por un Río de la Plata libre de contaminación', 'Hasta hace pocos años, las personas pasaban los fines de semana disfrutando el Río de la Plata, metiéndose al agua, aprovechando sus balnearios y playas, pero un día nos quitaron el derecho a acceder al río porque es más fácil prohibir su entrada que controlar a las industrias que lo contaminan. En lugar de alejarnos del río por su nivel de contaminación, ¿porqué no? cuidarlo y exigir su saneamiento. 

El Río Reconquista, el Río Luján, el Arroyo Medrano (sólo para nombrar algunos) y desagües de todo tipo que desembocan en el Río de la Plata se ven brutalmente contaminados por conexiones clandestinas industriales, pluviales y cloacales, llegando así a la toma de agua de la planta potabilizadora de AySA.', 12520, 'img/riodelaplata.webp');

INSERT INTO posteo (titulo, post, votos, imagen) VALUES ('Exigimos el urgente tratamiento en el Congreso del proyecto de Ley de Humedales', 'Exigimos el urgente tratamiento del proyecto de Ley de Humedales para lograr la conservación, protección y uso racional y sostenible de los mismos.
Los humedales no solo son grandes reservas de agua dulce, también son fuente de hábitat, alimento y refugio para el sostén de la diversidad biológica que se encuentra en ellos. Representan el 21.5% del territorio nacional en nuestro país, y protegerlos también es fundamental para aliviar inundaciones y para proveer de agua potable.', 1115, 'img/ley-humedales.webp');

INSERT INTO posteo (titulo, post, votos, imagen) VALUES ('NO al basural en Parchappe', 'CONTRA EL BASURERO EN AV. PARCHAPPE

Vecinos y vecinas del sector nos manifestamos en contra de la decisión del Municipio Bahía Blanca de instalar una planta de separación de residuos en terrenos del Ferrocarril con acceso por Av. Parchappe al 800.

Trabajadores municipales ya comenzaron a talar los árboles de la calle y a tirar basura en los terrenos, incluída la Plaza del Algarrobo. Solicitamos que paren ya de contaminar y arruinar uno de los pocos espacios verdes que tiene nuestra ciudad.', 560, 'img/basurero-parchappe.jpg');

INSERT INTO posteo (titulo, post, votos, imagen) VALUES ('BASTA DE HUMO!', 'Le exigimos al gobernador Omar Perotti que tome las medidas necesarias para frenar la quema de pastizales en los humedales pertenecientes a la provincia de Entre Ríos. Los incendios provocan humo que torna irrespirable el aire en Rosario y la zona. Esperamos que el gobernador se ponga en contacto con las autoridades nacionales y de la provincia vecina para que se frene este despropósito que produce, además, grandes perjuicios para la flora y la fauna. Pedimos además que inicie las acciones pertinentes ante la Corte Suprema de Justicia de la Nación.', 679, 'img/humo.jpg');

INSERT INTO posteo (titulo, post, votos, imagen) VALUES ('BASTA DE AGROTOXICOS EN URUGUAY!', 'Por la gran contaminacion del agua.(superficiales y subterraneas).por la mortandad de fauna en uruguay..por el envenamiento de los habitantes.', 180, 'img/agrotoxicos-uruguay.jpg');

INSERT INTO posteo (titulo, post, votos, imagen) VALUES ('Rio Negro y Neuquen levantemonos en defensa de nuestros rios ya!', 'Exijamos la inmediata intervención de los gobiernos de las provincias de Rio Negro y Neuquén en articulación con las industrias que actualmente vierten en nuestros rios desechos toxicos no degradables naturalmente, con altos niveles de metales pesados y de prolongada persistencia en el tiempo; para que desde una labor politicoambiental mancomunada y comprometida se ponga freno lo antes posible al lamentable deterioro de nuestro medio ambiente y el perjuicio evidente para nuestras generaciones futuras.', 625, 'img/rios-rionegro-neuquen.jpg');