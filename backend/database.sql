-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: localhost    Database: cave
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alsace`
--

DROP TABLE IF EXISTS `alsace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alsace` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Appellation` varchar(255) DEFAULT NULL,
  `Domaine` varchar(255) DEFAULT NULL,
  `classement` varchar(255) DEFAULT NULL,
  `lieu_achat` varchar(255) DEFAULT NULL,
  `date_achat` varchar(255) DEFAULT NULL,
  `millésime` int DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `prix_achat` float DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `commentaire` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alsace`
--

LOCK TABLES `alsace` WRITE;
/*!40000 ALTER TABLE `alsace` DISABLE KEYS */;
INSERT INTO `alsace` VALUES (1,'GEWURZTRAMINER','Sélection de grains nobles','','Cora','26/9/07',1998,2,14.9,'',0,''),(2,'GEWURZTRAMINER','Clos Saint Apolline PRESTIGE','','','',2002,1,15,'',0,''),(3,'RIESLING','Vendanges Tardives\"  Jean Victor SCHUTZ','','Leclerc','9/10',2007,1,9.1,'',0,''),(4,'PINOT GRIS','Vendanges Tardives','','Domaine R.Schmitt','12/8/11',2007,2,17,'',0,''),(5,'GEWURZTRAMINER','Vendanges Tardives \"Vieilles vignes','','EARL Y.AMBERG','8/8/11',2007,1,19,'',0,''),(6,'GEWURZTRAMINER','Cuvée Angélique','','Carrefour','7/9/11',2009,1,8.9,'',0,''),(7,'GEWURZTRAMINER','Vendanges Tardives \"Altenberg de Bergbieten','','Domaine R.Schmitt','13/10/11',2009,3,20,'',0,''),(8,'RIESLING',' Les Ecaillers \" Léon BEYER','','Vente privée','11/12/15',2009,2,12.2,'',0,''),(9,'GEWURZTRAMINER','Grand Cru \"Altenberg\" Les jardins d\'aurélien','','Domaine R.Schmitt','12/8/11',2010,2,14.2,'',0,''),(10,'GEWURZTRAMINER','Glintzberg\" cuvée anniversaire  400 Millésimes','','Domaine R.Schmitt','12/8/11',2010,1,12,'',0,''),(11,'RIESLING','Grand Cru VORBOURG \"Clos Saint Landelin','','Vins G.JEUNEMAÎTRE','2/13',2010,3,18.66,'',0,''),(12,'PINOT GRIS','Grand Cru VORBOURG \"Clos Saint Landelin','','Vins G.JEUNEMAÎTRE','2/13',2010,4,15.19,'',0,''),(13,'RIESLING',' Comtes d\'Eguisheim \" Léon BEYER','','Vente privée','11/12/15',2010,5,16.7,'',0,''),(14,'GRUENSPIEL','Marcel DEISS','Marcel DEISS','1jour1vin.com','19/12/2017',2012,2,30,'',0,''),(15,'GEWURZTRAMINER','Grand Cru \"Eichberg\" Martin SHAETZEL','','InterMarché MAICHE','25/3/17',2013,2,16,'',0,''),(16,'GEWURZTRAMINER','Vieilles vignes','EARL Y.AMBERG','InterMarché MAICHE','25/3/17',2015,1,12.55,'',0,''),(17,'GEWURZTRAMINER','Vieilles vignes','EARL Y.AMBERG','InterMarché MORTEAU','14/8/17',2015,3,9.9,'',0,''),(18,'GEWURZTRAMINER','Fronholz','EARL Y.AMBERG','InterMarché MAICHE','25/3/17',2015,2,16.95,'',0,''),(19,'PINOT GRIS','Vieilles Vignes','EARL Y.AMBERG','InterMarché MAICHE','25/3/17',2015,2,11.95,'',0,''),(20,'ENGELGARTEN','','Marcel DEISS','1jour1vin.com','19/12/2017',2015,3,28,'',0,'');
/*!40000 ALTER TABLE `alsace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beaujolais`
--

DROP TABLE IF EXISTS `beaujolais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beaujolais` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Appellation` varchar(255) DEFAULT NULL,
  `Domaine` varchar(255) DEFAULT NULL,
  `classement` varchar(255) DEFAULT NULL,
  `lieu_achat` varchar(255) DEFAULT NULL,
  `date_achat` varchar(255) DEFAULT NULL,
  `millésime` varchar(45) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `prix_achat` float DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `commentaire` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beaujolais`
--

LOCK TABLES `beaujolais` WRITE;
/*!40000 ALTER TABLE `beaujolais` DISABLE KEYS */;
INSERT INTO `beaujolais` VALUES (1,'MORGON','Côte de Py\" Dominique Piron','','XO-VIN Internet','12/2011','2009',2,22,'',0,''),(2,'JULIENAS','Domaine BERGERON','','Venteprivee.Com','03/02/16','2014',4,7.5,'',0,''),(3,'MOULIN A VENT','Domaine BERGERON','','Venteprivee.Com','03/02/16','2014',4,8,'',0,''),(4,'BROUILLY','Domaine DUMAS','','Venteprivee.Com','03/02/16','2014',4,7,'',0,''),(5,'CHIROUBLE','Né de Velours -  COQUARD','','Leclerc','16/0316','2014',4,6.3,'',0,'');
/*!40000 ALTER TABLE `beaujolais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bordeaux`
--

DROP TABLE IF EXISTS `bordeaux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bordeaux` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Appellation` varchar(255) DEFAULT NULL,
  `Domaine` varchar(255) DEFAULT NULL,
  `classement` varchar(255) DEFAULT NULL,
  `lieu_achat` varchar(255) DEFAULT NULL,
  `date_achat` varchar(255) DEFAULT NULL,
  `millésime` int DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `prix_achat` float DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `commentaire` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bordeaux`
--

LOCK TABLES `bordeaux` WRITE;
/*!40000 ALTER TABLE `bordeaux` DISABLE KEYS */;
INSERT INTO `bordeaux` VALUES (1,'MARGAUX','Château CANTENAC BROWN','3e Grand Cru Classé','Lecler','3/02',1998,7,19.67,'rouge',NULL,''),(2,'MARGAUX','Château CANTENAC BROWN','3e Grand Cru Classé','leclerc','5/03',2000,3,25,'rouge',NULL,''),(3,'MARGAUX','Château GISCOURS','3e Grand Cru Classé','Carrefour','20/9/02',2000,2,25,'rouge',NULL,''),(4,'MARGAUX','Château GISCOURS','3e Grand Cru Classé','ATAC','9/03',2001,5,21.5,'rouge',NULL,''),(5,'SAINT- EMILION','VALANDRAUD','','leclerc 09/2010','',2008,3,24,'rouge',NULL,''),(6,'MARGAUX','Château GISCOURS','3e Grand Cru Classé','G JEUNEMAITRE','2/05',2002,1,22.6,'rouge',NULL,''),(7,'MARGAUX','Château GISCOURS','3e Grand Cru Classé','G JEUNEMAITRE','3/07',2004,6,27.5,'rouge',NULL,''),(8,'SAINT- EMILION','Aromes de PAVIE','2ième vin château PAVIE','Leclerc 02/10/12','',2009,5,34.95,'rouge',NULL,''),(9,'MARGAUX','Château GISCOURS','3e Grand Cru Classé','G JEUNEMAITRE','2/11',2008,3,29.6,'rouge',NULL,''),(10,'SAINT- EMILION','GRAND MAYNE','Grand Cru Classé','Leclerc 04/10/14','',2009,2,37.8,'rouge',NULL,''),(11,'MARGAUX','Château GISCOURS','3e Grand Cru Classé','G JEUNEMAITRE','2/11',2009,6,49.99,'rouge',NULL,''),(12,'SAINT- EMILION','SIMARD','Grand Cru Classé','Intermarché 13/09/2018','',2010,5,17.9,'rouge',NULL,''),(13,'MARGAUX','La SIRENE de GISCOURS','2ième vin Ch.GISCOURS','Intermarché','16/9/12',2010,6,16.87,'rouge',NULL,''),(14,'SAINT- EMILION','FOMBRAUGE','Grand Cru Classé','Intermarché 09/09/17','',2011,4,21.5,'rouge',NULL,''),(15,'MARGAUX','LA DAME DE MALESCOT','2ième vin Ch.MALESCAUX','Leclerc','4/10/14',2011,3,21.95,'rouge',NULL,''),(16,'SAINT- EMILION','FOMBRAUGE','Grand Cru Classé','Leclerc 26/09/16','',2014,6,17.4,'rouge',NULL,''),(17,'MARGAUX','Château PRIEURE-LICHINE','4e Grand Cru Classé','leclerc','07/02/2018',2015,3,69.5,'rouge',NULL,''),(18,'SAINT- EMILION','FOMBRAUGE','Grand Cru Classé','Carrefour 12/09/2017','',2015,6,19.95,'rouge',NULL,''),(19,'HAUT-MEDOC','Château CANTEMERLE','5e Grand Cru Classé','Continent','26/9/98',1995,0,17.84,'rouge',NULL,''),(20,'SAINT- EMILION','GRAND PONTET','Grand Cru Classé','Intermarché 09/09/17','',2015,6,21.9,'rouge',NULL,''),(21,'HAUT-MEDOC','Château LA LAGUNE','3e Grand Cru Classé','Leclerc','7/4/00',1997,1,17.7,'rouge',NULL,''),(22,'SAINT- EMILION','CLOS DES MENUTS','','Maison du Vin St Emilion 30/04/18','',2014,1,18.85,'rouge',NULL,''),(23,'SAINT- EMILION','LES RELIGIEUSES','','JP Plazanet 04/10/2017','',2015,6,11.86,'rouge',NULL,''),(24,'HAUT-MEDOC','Château CANTEMERLE','5e Grand Cru Classé','Leclerc','6/11/03',1999,2,14.9,'rouge',NULL,''),(25,'SAINT- EMILION','LA GRACE DIEU Les Menuts','Grand Cru','Au Château le 31/10/2019','',2015,7,21,'rouge',NULL,''),(26,'HAUT-MEDOC','Château DE CAMENSAC','5e Grand Cru Classé','leclerc','9/10',2005,4,15.9,'rouge',NULL,''),(27,'SAINT- EMILION','CARTEAU - Côtes DAUGAY','Grand Cru','Maison du Vin St Emilion 30/04/18','',2015,1,20.55,'rouge',NULL,''),(28,'HAUT-MEDOC','Château SOCIANDO-MALLET','','1jour1vin.com','10/04/2018',2012,6,27.9,'rouge',NULL,''),(29,'SAINT- EMILION','CLOS LA GAFFELIERE','2ième vin château LA GAFFELIERE','Vente-privée.com 21/06/2018','',2015,6,21,'rouge',NULL,''),(30,'HAUT-MEDOC','Château LA TOUR CARNET','4ième Grand Cru Classé','Auchan','26/09/2017',2015,6,24.9,'rouge',NULL,''),(31,'SAINT- EMILION','LA GRACE DIEU Les Menuts','Grand Cru','Au Château le 31/10/2019','',2016,7,20.2,'rouge',NULL,''),(32,'GRAVES (PESSAC-LEOGNAN)','Château MALARTIC-LAGRAVIERE','Grand Cru Classé','Carrefour','07/09/2010',2006,6,28.9,'rouge',NULL,''),(33,'SAINT- EMILION','LA GRACE DIEU Les Menuts','Grand Cru MAGNUM','Au Château le 31/10/2019','',2016,3,41.4,'rouge',NULL,''),(34,'GRAVES (PESSAC-LEOGNAN)','Château LATOUR-MARTILLAC','Grand Cru Classé','Leclerc','9/10',2008,3,16.15,'rouge',NULL,''),(35,'SAINT- EMILION','FOMBRAUGE','Grand Cru Classé','Foire aux Vins AUCHAN 24/09/18','',2016,6,21.5,'rouge',NULL,''),(36,'GRAVES (PESSAC-LEOGNAN)','Château BOUSCAUT','Cru Classé','Carrefour','07/09/2010',2008,4,14.9,'rouge',NULL,''),(37,'SAINT- EMILION','PIPEAU','Grand Cru','1Jour1Vin 30/06/2019','',2016,8,23,'rouge',NULL,''),(38,'GRAVES (PESSAC-LEOGNAN)','Château CARBONNIEUX','Grand Cru Classé','Intermarché','16/9/12',2010,6,23.69,'rouge',NULL,''),(39,'GRAVES (PESSAC-LEOGNAN)','LES HAUTS DE LARRIVET HAUT-BRION','2ième vin Larrivet Haut Brion','Intermarché','16/9/12',2010,4,13.5,'rouge',NULL,''),(40,'SAINT-ESTEPHE','COS LABORY','5ème Grand Cru Classé','Carrefour 18/09/01','',1998,2,18.14,'rouge',NULL,''),(41,'GRAVES (PESSAC-LEOGNAN)','Château CARBONNIEUX','Grand Cru Classé','Leclerc','4/10/14',2011,2,24.75,'rouge',NULL,''),(42,'SAINT-ESTEPHE','LAFON-ROCHET','4ème Grand Cru Classé','Leclerc 03/2002','',1999,1,17.38,'rouge',NULL,''),(43,'GRAVES (PESSAC-LEOGNAN)','DOMAINE DE CHEVALIER','Cru Classé','Mr PLAZANET','18/9/15',2011,6,30,'rouge',NULL,''),(44,'SAINT-ESTEPHE','COS LABORY','5ème Grand Cru Classé','leclerc 23/10/02','',2000,2,19.71,'rouge',NULL,''),(45,'GRAVES (PESSAC-LEOGNAN)','La Réserve de MALARTIC LAGRAVIERE','2ième vin Malartic Lagravière','1jour1vin.com','10/04/2018',2014,4,16.99,'rouge',NULL,''),(46,'SAINT-ESTEPHE','Les PAGODES DE COS','2ème vin Chât Cos d\'estournel','Carrefour 17/09/03','',2000,2,17.95,'rouge',NULL,''),(47,'SAINT-ESTEPHE','Les PAGODES DE COS','2ème vin Chât Cos d\'estournel','G Jeunemaître 25/02/06','',2003,2,25.12,'rouge',NULL,''),(48,'GRAVES (PESSAC-LEOGNAN)','Château MALARTIC-LAGRAVIERE','Grand Cru Classé','1jour1vin.com','10/04/2018',2014,6,41.9,'rouge',NULL,''),(49,'SAINT-ESTEPHE','COS LABORY','5ème Grand Cru Classé','G Jeunemaître 25/02/06','',2003,2,20.33,'rouge',NULL,''),(50,'GRAVES (PESSAC-LEOGNAN)','Château LARRIVET HAUT BRION','','Intermarché','09/09/2017',2015,6,29.95,'rouge',NULL,''),(51,'SAINT-ESTEPHE','Les PAGODES DE COS','2ème vin Chât Cos d\'estournel','G Jeunemaître 30/03/07','',2004,4,18.55,'rouge',NULL,''),(52,'GRAVES (PESSAC-LEOGNAN)','Château MALARTIC-LAGRAVIERE','Grand Cru Classé','Primeur LECLERC','11/9/16',2015,6,47.5,'rouge',NULL,''),(53,'SAINT-ESTEPHE','COS LABORY','5ème Grand Cru Classé','Leclerc 09/2010','',2005,3,28.5,'rouge',NULL,''),(54,'GRAVES (PESSAC-LEOGNAN)','Château CARBONNIEUX','Grand Cru Classé','Primeur LECLERC','11/9/16',2015,6,32.3,'rouge',NULL,''),(55,'SAINT-ESTEPHE','BEAU SITE','Cru Bourgeois','Cellier fin Gourmet 12/2008','',2005,3,11.6,'rouge',NULL,''),(56,'GRAVES (PESSAC-LEOGNAN)','La Réserve de MALARTIC LAGRAVIERE','2ième vin Malartic Lagravière','Vente-privée.com','21/06/2018',2015,6,19,'rouge',NULL,''),(57,'GRAVES (PESSAC-LEOGNAN)','L\'ESPRIT DE CHEVALIER','2ième vin Domaine de Chevalier','Vente-privée.com','21/06/2018',2015,6,23,'rouge',NULL,''),(58,'SAINT-ESTEPHE','LES ORMES DE PEZ','Cru Bourgeois Exceptionnel','leclerc 30/09/2009','',2006,4,19.74,'rouge',NULL,''),(59,'GRAVES (PESSAC-LEOGNAN)','Château CARBONNIEUX','Grand Cru Classé','Foire aux Vins AUCHAN','24/9/18',2016,6,29.95,'rouge',NULL,''),(60,'SAINT-ESTEPHE','Les PAGODES DE COS','2ème vin Chât Cos d\'estournel','leclerc 30/09/2009','',2006,4,27.5,'rouge',NULL,''),(61,'GRAVES (PESSAC-LEOGNAN)','Château LATOUR-MARTILLAC','Grand Cru Classé','Foire aux vins Leclerc','01/10/2018',2016,6,31.9,'rouge',NULL,''),(62,'SAINT-ESTEPHE','Château HAUT-MARBUZET','Cru Bourgeois','Carrefour 07/09/2010','',2007,4,27.9,'rouge',NULL,''),(63,'SAINT-ESTEPHE','château L\'ARGILUS DU ROI','','Carrefour 06/09/2010','',2008,3,11.9,'rouge',NULL,''),(64,'GRAVES (PESSAC-LEOGNAN)','CLEMENTIN DE PAPE CLEMENT','2ième vin PAPE CLEMENT','Foire aux Vins AUCHAN','24/9/18',2016,6,29.9,'rouge',NULL,''),(65,'SAINT-ESTEPHE','LAFON-ROCHET','4ème Grand Cru Classé','Leclerc 09/2010','',2008,5,22.25,'rouge',NULL,''),(66,'PAUILLAC','Château CARRUADES DE LAFITE','2ième vin chât Lafite','Leclerc 03/2002','',1999,2,22.71,'rouge',NULL,''),(67,'SAINT-ESTEPHE','Les PAGODES DE COS','Cru Bourgeois Exceptionnel','Leclerc 09/2010','',2008,4,27.5,'rouge',NULL,''),(68,'PAUILLAC','Château CARRUADES DE LAFITE','2ième vin chât Lafite','nov.-03','',2000,8,24,'rouge',NULL,''),(69,'SAINT-ESTEPHE','PHELAN SEGUR','Cru Bourgeois Exceptionnel','G Jeunemaître 12/02/11','',2008,3,21.41,'rouge',NULL,''),(70,'PAUILLAC','Château DUHART MILON','4ème Gd Cru Classé','Carrefour 17/09/03','',2001,5,19.5,'rouge',NULL,''),(71,'SAINT-ESTEPHE','PHELAN SEGUR','Cru Bourgeois Exceptionnel','G Jeunemaître 11/02/12','',2009,6,31.1,'rouge',NULL,''),(72,'PAUILLAC','Château CARRUADES DE LAFITE','2ième vin chât Lafite','09/2005 LECLERC Montargis','',2001,3,24.57,'rouge',NULL,''),(73,'SAINT-ESTEPHE','Marquis de CALON','2ème vin Chât Calon Ségur','Carrefour 10/09/12','',2009,4,18.9,'rouge',NULL,''),(74,'PAUILLAC','Château DUHART MILON','4ème Gd Cru Classé','Carrefour 21/09/05','',2002,3,17.94,'rouge',NULL,''),(75,'SAINT-ESTEPHE','BEAU SITE','Cru Bourgeois','Cellier fin Gourmet 12/2012','',2009,6,12.6,'rouge',NULL,''),(76,'PAUILLAC','Château LYNCH BAGES','5ème Gd Cru Classé','G JEUNEMAITRE 02/05','',2002,3,31.69,'rouge',NULL,''),(77,'SAINT-ESTEPHE','Château HAUT-MARBUZET','Cru Bourgeois','Leclerc 02/10/12','',2010,4,32.95,'rouge',NULL,''),(78,'PAUILLAC','Château D\'ARMAILHAC','5ème Gd Cru Classé','Intermarché 21/09/07','',2004,2,17.22,'rouge',NULL,''),(79,'SAINT-ESTEPHE','PHELAN SEGUR','Cru Bourgeois Exceptionnel','Foire aux vins Leclerc 01/10/2018','',2012,6,27.5,'rouge',NULL,''),(80,'SAINT-ESTEPHE','Château HAUT-MARBUZET','Cru Bourgeois','Leclerc 26/09/16','2014',2014,6,29.95,'rouge',NULL,''),(81,'PAUILLAC','Château LACOSTE BORIE','2ième vin Grand Puy Lacoste','Atac 09/09/2009','',2005,2,21.5,'rouge',NULL,''),(82,'SAINT-ESTEPHE','Château HAUT-MARBUZET','Cru Bourgeois','JP Plazanet 04/10/2017','2014',2015,6,27.12,'rouge',NULL,''),(83,'PAUILLAC','Château LA BECASSE','','Le marché des vins SENS','',2006,2,25,'rouge',NULL,''),(84,'SAINT-ESTEPHE','COS LABORY','5ème Grand Cru Classé','Primeur LECLERC 11/09/16','',2015,6,31.2,'rouge',NULL,''),(85,'PAUILLAC','Château GRAND PUY LACOSTE','5ème Gd Cru Classé','G Jeunemaître 12/02/11','',2008,3,31.1,'rouge',NULL,''),(86,'PAUILLAC','Château ECHO DE LYNCH BAGES','2ième vin château LINCH BAGES','G Jeunemaître 11/02/12','',2009,6,29.3,'rouge',NULL,''),(87,'SAINT-ESTEPHE','Château HAUT-MARBUZET','Cru Bourgeois','Primeur LECLERC 11/09/16','2014',2015,6,34.5,'rouge',NULL,''),(88,'PAUILLAC','Château LA BECASSE','','Xo Vins 12/2011','',2009,9,23.38,'rouge',NULL,''),(89,'SAINT-ESTEPHE','COS LABORY','5ème Grand Cru Classé','Foire aux Vins AUCHAN 24/09/18','',2016,6,32.95,'rouge',NULL,''),(90,'PAUILLAC','Château HAUT BAGES MONPELOU','Cru Bourgeois','Mr PLAZANET 07/10/14','',2010,5,22.5,'rouge',NULL,''),(91,'SAINT-JULIEN','LAGRANGE','3 ieme  Cru Classé','Leclerc 06/11/03','',1999,2,23,'rouge',NULL,''),(92,'PAUILLAC','Château LA CROIX DE GRAND PUY DUCASSE','2ième vin château GRAND PUY DUCASSE','Leclerc 04/10/14','',2010,6,23.85,'rouge',NULL,''),(93,'SAINT-JULIEN','BRANAIRE','4ième Cru Classé','Carrefour 13/09/04','',2001,2,20.5,'rouge',NULL,''),(94,'PAUILLAC','Château D\'ARMAILHAC','5ème Gd Cru Classé','Intermarché 09/09/2017','',2014,6,29.95,'rouge',NULL,''),(95,'SAINT-JULIEN','LAGRANGE','3 ieme  Cru Classé','Carrefour 13/09/04','',2001,3,20.39,'rouge',NULL,''),(96,'PAUILLAC','Château BATAILLEY','5ème Gd Cru Classé','Auchan 26/09/2017','',2015,6,39.9,'rouge',NULL,''),(97,'SAINT-JULIEN','GRUAUD LAROSE','2 ieme  Cru Classé','G JEUNEMAITRE 02/05','',2002,2,26.31,'rouge',NULL,''),(98,'SAINT-JULIEN','LEOVILLE POYFERRE','2 ieme  Cru Classé','G JEUNEMAITRE 02/05 3 bteilles + 3 bteilles carrefour 21/09/05','',2002,2,26.91,'rouge',NULL,''),(99,'PAUILLAC','Château LYNCH MOUSSAS','5ème Gd Cru Classé','Primeur LECLERC 11/09/16 livré 01/2018','',2015,6,36,'rouge',NULL,''),(100,'SAINT-JULIEN','LAGRANGE','3 ieme  Cru Classé','G Jeunemaître 25/02/06','',2003,4,22.72,'rouge',NULL,''),(101,'POMEROL','MOULINET-LASSERRE','','Leclerc 16/11/01','',1998,-3,20.58,'rouge',NULL,''),(102,'SAINT-JULIEN','SARGET DE GRUAUD LAROSE','2ème vin Gruaud larose','Carrefour 21/09/06','',2004,2,11.5,'rouge',NULL,''),(103,'POMEROL','LA CROIX DE GAY','','Leclerc 26/09/06','',2004,2,16.39,'rouge',NULL,''),(104,'POMEROL','DE SALES','','Cora 26/09/07','',2005,5,14.5,'rouge',NULL,''),(105,'SAINT-JULIEN','TALBOT','4 ieme  Cru Classé','Intermarché 21/09/07','',2004,2,21.22,'rouge',NULL,''),(106,'POMEROL','SAINT JACQUES','','Aldi 02/04/2011','',2009,3,9.99,'rouge',NULL,''),(107,'SAINT-JULIEN','LALANDE BORIE','','Atac 09/09/2009','',2005,3,21.9,'rouge',NULL,''),(108,'SAINT-JULIEN','TALBOT','4 ieme  Cru Classé','leclerc 09/2010','',2008,4,24.45,'rouge',NULL,''),(109,'POMEROL','Fugue de NENIN','2ième vin château NENIN','Leclerc 02/10/12','',2010,6,23.5,'rouge',NULL,''),(110,'SAINT-JULIEN','BEYCHEVELLE','4 ieme  Cru Classé','G Jeunemaître 12/02/11','',2008,3,29.18,'rouge',NULL,''),(111,'POMEROL','Fugue de NENIN','2ième vin château NENIN','Leclerc 01/10/2019','',2015,6,24.5,'rouge',NULL,''),(112,'SAINT-JULIEN','CLOS DU MARQUIS','','G Jeunemaître 12/02/11','',2008,6,28.11,'rouge',NULL,''),(113,'SAINT- EMILION','CLOS FOURTET','1er Grand Cru Classé','','',1973,1,18.29,'rouge',NULL,''),(114,'SAINT- EMILION','LA DOMINIQUE','Grand Cru Classé','avr.-00','',1996,1,34.9,'rouge',NULL,''),(115,'SAINT-JULIEN','CLOS DU MARQUIS','','G Jeunemaître 12/02/12','',2009,6,44.13,'rouge',NULL,''),(116,'SAINT- EMILION','PAVIE','1er Grand Cru Classé','09/00','',1997,1,32.78,'rouge',NULL,''),(117,'SAINT-JULIEN','LA CROIX DE BEAUCAILLOU 2° vin Chât DUCRU BEAUCAILLOU','','G Jeunemaître 12/02/12','',2009,6,35.28,'rouge',NULL,''),(118,'SAINT- EMILION','LA DOMINIQUE','Grand Cru Classé','','',2003,2,34.9,'rouge',NULL,''),(119,'SAINT-JULIEN','SARGET DE GRUAUD LAROSE','2ème vin Gruaud larose','Intermarché 16/09/12','',2010,6,14.5,'rouge',NULL,''),(120,'SAINT- EMILION','SOUTARD','Grand Cru Classé','leclerc 30/09/2009','',2005,3,24.8,'rouge',NULL,''),(121,'SAINT-JULIEN','AMIRAL DE BEYCHEVELLE','2ème vin château BEYCHEVELLE','Leclerc 02/10/12','',2010,4,28.9,'rouge',NULL,''),(122,'SAINT- EMILION','DASSAULT','Grand Cru Classé','leclerc 30/09/2009','',2006,3,25.5,'rouge',NULL,''),(123,'SAINT-JULIEN','DULUC de BRANAIRE-DUCRU','2ème vin château BRANAIRE-DUCRU','Mr PLAZANET 07/10/14','',2010,2,22.8,'rouge',NULL,''),(124,'SAINT-JULIEN','LES FIEFS DE LAGRANGE','2ème vin château LAGRANGE','Leclerc 04/10/14','',2011,2,19.95,'rouge',NULL,''),(125,'SAINT-JULIEN','LE PETIT LION DU MARQUIS DE LAS CASES','2ème vin château LEOVILLE LAS CASES','Leclerc 26/09/14','',2014,6,25.9,'rouge',NULL,''),(126,'SAINT-JULIEN','GLORIA','','JP Plazanet 04/10/2017','',2015,6,27.12,'rouge',NULL,''),(127,'SAINT-JULIEN','Connétable TALBOT','2ième vin Château TALBOT','leclerc 07/02/2018','',2015,3,49.95,'rouge',NULL,''),(128,'SAINT-JULIEN','SARGET DE GRUAUD LAROSE','2ème vin Gruaud larose','Foire aux Vins AUCHAN 24/09/18','',2016,6,20.85,'rouge',NULL,''),(129,'SAINT-JULIEN','LE PETIT LION DU MARQUIS DE LAS CASES','2ème vin château LEOVILLE LAS CASES','Foire aux vins Leclerc 01/10/2018','',2016,6,43.2,'rouge',NULL,''),(130,'SAINT-JULIEN','Château MOULIN RICHE','Ste Fermèire LEOVILLE POYFERRE','Foire aux Vins AUCHAN 24/09/18','',2016,6,32.8,'rouge',NULL,''),(131,'BORDEAUX SUPERIEUR - PREMIERES COTES DE BORDEAUX - SAINTE-FOY-DE-BORDEAUX','MARTET \"Les hauts de Martet','','G JEUNEMAITRE 04/08','',2005,1,10.9,'rouge',NULL,''),(132,'BORDEAUX SUPERIEUR - PREMIERES COTES DE BORDEAUX - SAINTE-FOY-DE-BORDEAUX','MARTET \"La Réserve de la Famille','','G JEUNEMAITRE 04/08','',2005,2,22.9,'rouge',NULL,''),(133,'BORDEAUX SUPERIEUR - PREMIERES COTES DE BORDEAUX - SAINTE-FOY-DE-BORDEAUX','Grand Vin de REIGNAC','','Leclerc 30/06/2018','',2009,1,14.95,'rouge',NULL,''),(134,'BORDEAUX SUPERIEUR - PREMIERES COTES DE BORDEAUX - SAINTE-FOY-DE-BORDEAUX','Grand Vin de REIGNAC','','Leclerc 03/07/2018','',2011,6,15.95,'rouge',NULL,''),(135,'BORDEAUX SUPERIEUR - PREMIERES COTES DE BORDEAUX - SAINTE-FOY-DE-BORDEAUX','Grand Vin de REIGNAC','','Leclerc 07/09/2018','',2015,6,19.95,'rouge',NULL,''),(136,'BORDEAUX SUPERIEUR - PREMIERES COTES DE BORDEAUX - SAINTE-FOY-DE-BORDEAUX','Grand Vin de REIGNAC','','Foire aux vins Leclerc 01/10/2018','',2016,12,17.95,'rouge',NULL,''),(137,'MEDOC','Clos du Moulin','Cru Bourgeois','Leclerc 02/10/2017','',2015,10,8.9,'rouge',NULL,''),(138,'COTES DE BOURG','Montfollet \"Cuvée Altus','','Carrefour 14/09/11','',2009,1,7.2,'rouge',NULL,''),(139,'BLAYE CÔTES DE BORDEAUX','Les tours de Peyrat \"Vieilles Vignes','','Carrefour 14/09/11','',2009,2,5.99,'rouge',NULL,''),(140,'BLAYE CÔTES DE BORDEAUX','BOURDIEAU N° 1','Médaille OR Paris 2017','Leclerc 02/10/2017','',2015,11,7.6,'rouge',NULL,''),(141,'BLAYE CÔTES DE BORDEAUX','BOURDIEAU N° 1','Médaille OR Paris 2018','Foire aux vins Leclerc 01/10/2018','',2016,6,7.9,'rouge',NULL,''),(142,'PESSAC LEOGNAN','L\'ESPRIT DE CHEVALIER','2ième vin Domaine de Chevalier','Vente-privée.com 21/06/2018','',2015,3,23,'blanc',NULL,''),(143,'SAUTERNES','GUIRAUD','1er Cru Classé','oct.-00','',1986,1,37.65,'liquoreux',NULL,''),(144,'SAUTERNES','SUDUIRAUT','1er Cru Classé','déc.-00','',1990,3,49,'liquoreux',NULL,''),(145,'SAUTERNES','SUDUIRAUT  0.50 l','1er Cru Classé','01/10/2000           0.50 l','',1994,2,16.92,'liquoreux',NULL,''),(146,'SAUTERNES','RIEUSSEC','1er Cru Classé','07/11/01 Leclerc','',1994,4,24.24,'liquoreux',NULL,''),(147,'SAUTERNES','RABAUD PROMIS','1er Cru Classé','Leclerc 06/10/00','',1997,3,24.24,'liquoreux',NULL,''),(148,'SAUTERNES','DE CARLES','','oct.-00','',1998,3,9.38,'liquoreux',NULL,''),(149,'SAUTERNES','DE RAYNE VIGNEAU','1er Cru Classé','Carrefour 18/09/01','',1998,4,20.58,'liquoreux',NULL,''),(150,'SAUTERNES','SIGALAS RABAUD','1er Cru Classé','1jour1vin.com 19/12/2017','',2005,3,31.9,'liquoreux',NULL,''),(151,'LOUPIAC','MOULIN de JULIETTE','','','',1990,1,15.17,'liquoreux',NULL,''),(152,'LOUPIAC','DU CROS','','carrefour 26/09/00','',1995,1,10.52,'liquoreux',NULL,''),(153,'LOUPIAC','DU CROS','','carrefour 18/09/01','',1998,1,8.99,'liquoreux',NULL,''),(154,'LOUPIAC','DU CROS','','carrefour 18/09/02','',1999,1,10.5,'liquoreux',NULL,''),(155,'CADILLAC','BOISSON','conservat 3 - 5 ans','Atac 09/2002','',1996,1,6.6,'liquoreux',NULL,'');
/*!40000 ALTER TABLE `bordeaux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bourgogne`
--

DROP TABLE IF EXISTS `bourgogne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bourgogne` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Appellation` varchar(255) DEFAULT NULL,
  `Domaine` varchar(255) DEFAULT NULL,
  `classement` varchar(255) DEFAULT NULL,
  `lieu_achat` varchar(255) DEFAULT NULL,
  `date_achat` varchar(255) DEFAULT NULL,
  `millésime` int DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `prix_achat` float DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `commentaire` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bourgogne`
--

LOCK TABLES `bourgogne` WRITE;
/*!40000 ALTER TABLE `bourgogne` DISABLE KEYS */;
INSERT INTO `bourgogne` VALUES (1,'ALOXE CORTON','Villages  - Domaine RAPET','','Vins G.JEUNEMAÎTRE 02/2013','',2010,1,23.68,'rouge',0,''),(2,'ALOXE CORTON','Domaine Albert Bichot','','Ventealapropriété 07/04/2016','',2013,5,23.9,'rouge',0,''),(3,'ALOXE CORTON','Domaine RAPET','','grandsbourgognes 15/09/2018','',2015,6,28.9,'rouge',0,''),(4,'ALOXE CORTON','Villages  - Domaine Michel VOARICK','','par Erick Hadjadj 10/2018','',2016,6,28,'rouge',0,''),(5,'CORTON','RENARDES\" Grand Cru         (Domaine D\'arduy)','','Vins G.jeunemaître 11/2008','',2006,3,39.47,'rouge',0,''),(6,'CORTON','RENARDES\" Grand Cru         (Domaine D\'arduy)','','Vins G.jeunemaître 02/2013','',2010,4,46.64,'rouge',0,''),(7,'CHOREY LES BEAUNE','Dominique LAURENT','','Cadeau patrick 31/10/07','',2005,2,11,'rouge',0,''),(8,'SAINT AUBIN',' Derrière chez Edouard - Vieilles Vignes. Domaine Hubert LAMY','1er Cru','grandsbourgognes 13/09/2019','',2016,6,33.3,'rouge',0,''),(9,'SANTENAY',' Les Gravières\" Domaine Bruno COLIN','1er Cru','grandsbourgognes 13/09/2019','',2016,6,29.7,'rouge',0,''),(10,'SAVIGNY LES BEAUNE','Les Peuillets\" Domaine D\'ARDHUY','1er Cru','Vins G.jeunemaître 02/2013','',2010,4,17.34,'rouge',0,''),(11,'SAVIGNY LES BEAUNE','Les Narbantons\" Domaine Louis LATOUR','1er Cru','Vente Privée 18/03/17','',2014,6,25,'rouge',0,''),(12,'BEAUNE','Les Cent Vignes - Château de MEURSAULT','1er Cru','Venteprivee.Com 03/02/16','',2010,5,27,'rouge',0,''),(13,'BEAUNE','Les Cent Vignes - Château de MEURSAULT','1er Cru','Venteprivee.Com 03/02/16','',2011,2,59,'rouge',0,'Magnum'),(14,'POMMARD','Virginie PILLET','','Coccinelle Damprichard 24/12/12','',2009,1,20.85,'rouge',0,''),(15,'AUXEY DURESSES','Clos du Val\" Domaine PRUNIER-DAMY','1er Cru','juin-11','',2009,2,12,'rouge',0,''),(16,'VOLNAY','Les Mitans\" Domaine Louis LATOUR','1er Cru','Vente Privée 18/03/17','',2011,6,31,'rouge',0,''),(17,'FIXIN','Domaine Michel Noêllat & Fils','','p.pouthé 03/08/11','',2009,2,12.67,'rouge',0,''),(18,'GEVREY CHAMBERTIN','Dominique LAURENT','','Leclerc 16/03/16','',2005,4,32.95,'rouge',0,''),(19,'GEVREY CHAMBERTIN','Domaine TAUPENOT-MERME','','grandsbourgognes 15/09/2018','',2015,4,38.68,'rouge',0,''),(20,'GEVREY CHAMBERTIN','La Justice  - Domaine René BOUVIER','','grandsbourgognes 11/01/2020','',2017,4,40.5,'rouge',0,''),(21,'MARSANNAY','Les Longeroies \"Vieilles Vignes','','grandsbourgognes 11/01/2020','',2017,6,23.85,'rouge',0,''),(22,'MOREY SAINT DENIS','Domaine TAUPENOT-MERME','','grandsbourgognes 15/09/2018','',2015,6,43.61,'rouge',0,''),(23,'CHAMBOLLE MUSIGNY','','1er Cru','12/24/00','',1998,1,9.15,'rouge',0,''),(24,'CHAMBOLLE MUSIGNY','Domaine Frédéric Magnien \"Cœur de Pierres','1er Cru','Carrefour 10/09/12','',2010,5,29.9,'rouge',0,''),(25,'NUITS ST GEORGES','Aux champs Perdrix','1er Cru','Cora 26/09/07','',2005,2,19.95,'rouge',0,''),(26,'COTES DE NUITS VILLAGES','CLOS DES LANGRES\" MONOPOLE (Domaine D\'arduy)','','Vins G.jeunemaître 02/2012','',2009,3,23.32,'rouge',0,''),(27,'COTES DE NUITS VILLAGES','CLOS DES LANGRES\" MONOPOLE (Domaine D\'arduy)','','Vins G.jeunemaître 02/2013','',2010,6,23.32,'rouge',0,''),(28,'VOSNE-ROMANEE','Les Suchots\" Domaine Louis LATOUR','1er Cru','Vente Privée 18/03/17','',2011,6,39,'rouge',0,''),(29,'MERCUREY','Clos l\'Evêque      (Léglise)','1er Cru','R.Bourgogne 27/12/99','',1996,1,5.34,'rouge',0,''),(30,'MERCUREY','Domaine CLOS des BARRAULTS','1er Cru','Mr PLAZANET 07/10/14','',2010,1,19,'rouge',0,''),(31,'IRANCY','EARL RICHOUX Thierry','','Les Caves 24/02/16','',2011,1,12.9,'rouge',0,''),(32,'IRANCY','Veaupessiot - COLINOT','','Leclerc 29/09/16','',2014,2,10.6,'rouge',0,''),(33,'IRANCY','William CHARRIAT','','Proxi Sergines 21/09/2019','',2014,4,13.5,'rouge',0,''),(34,'COULANGES LA VINEUSE','Cuvée Prestige\" Domaine HOUBLIN','','Thierry LABROUSSE','',2015,1,10,'rouge',0,''),(35,'COULANGES LA VINEUSE','Cuvée Prestige\" Domaine HOUBLIN','','Thierry LABROUSSE','',2016,2,11.5,'rouge',0,''),(36,'CHABLIS','Grand Cru \" Les Preuses \"  DAMPT Frères','','Erick HADJADJ','',2015,4,24,'blanc',0,''),(37,'CHABLIS','Grand Cru \" Les Preuses \"  DAMPT Frères','','Erick HADJADJ','',2016,6,24,'blanc',0,''),(38,'COULANGES LA VINEUSE','Cuvée Prestige\" Domaine HOUBLIN','','Thierry LABROUSSE','',2017,2,11.5,'blanc',0,''),(39,'CHABLIS',' Cuvée Vieilles Vignes \" Domaine VOCORET','1er Cru','Leclerc 01/10/2019','',2018,6,14.95,'blanc',0,''),(40,'CHABLIS',' Fourchaume\" DAMPT Frères','1er Cru','Erick HADJADJ','',2018,4,14.3,'blanc',0,''),(41,'CHABLIS',' Fourchaume\" DAMPT Frères','1er Cru','Erick HADJADJ','',2018,2,31.5,'blanc',0,'Magnum'),(42,'CHABLIS',' Bréchain\"  DAMPT Frères','','Erick HADJADJ','',2018,2,10.1,'blanc',0,''),(43,'BOURGOGNE TONNERRE','Chevalier d\'Eon\" DAMPT Frères','','Erick HADJADJ','',2018,2,6.9,'blanc',0,''),(44,'MEURSAULT','Clos des Meix Chavaux\"  Jean LATOUR-LABILLE','','leclerc 24/09/11','',2009,2,19.95,'blanc',0,''),(45,'PERNAND VERGELESSES','Sous Frétille\" Domaine RAPET','1er Cru','Vins G.jeunemaître 02/2013','',2010,2,23.68,'blanc',0,''),(46,'MEURSAULT','Château de MEURSAULT','1er Cru','Venteprivee.Com 030216','',2011,5,30,'blanc',0,''),(47,'MEURSAULT-CHARMES','Château de MEURSAULT','1er Cru','Venteprivee.Com 030216','',2011,6,40,'blanc',0,''),(48,'PERNAND VERGELESSES','Sous Frétille\" Domaine RAPET','1er Cru','grandsbourgognes 15/09/2018','',2015,6,32.72,'blanc',0,''),(49,'SAINT AUBIN','En Remilly\" Château de PULIGNY MONTRACHET','1er Cru','grandsbourgognes 13/09/2019','',2016,5,36.9,'blanc',0,''),(50,'POUILLY-VINZELLES',' Les Quarts \" Frédéric TROUILLET','','Leclerc 10/10/15','',2014,2,12.99,'blanc',0,''),(51,'POUILLY-FUISSE',' Les Birbettes\"  Château des Rontets','','1jour1vin 24/10/2019','',2017,5,36.9,'blanc',0,''),(52,'POUILLY-FUISSE',' Vieilles Vignes \" Domaine ELOY','','Leclerc 01/10/2019','',2018,6,13.4,'blanc',0,'');
/*!40000 ALTER TABLE `bourgogne` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-22  9:40:05
