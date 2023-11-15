-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: intercity
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `coach_train`
--

DROP TABLE IF EXISTS `coach_train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach_train` (
  `coach_id` int NOT NULL,
  `train_id` int DEFAULT NULL,
  PRIMARY KEY (`coach_id`),
  KEY `fk_coach1` (`train_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach_train`
--

LOCK TABLES `coach_train` WRITE;
/*!40000 ALTER TABLE `coach_train` DISABLE KEYS */;
INSERT INTO `coach_train` VALUES (301,2001),(302,2001),(303,2001),(401,2002),(402,2002),(403,2002),(404,2002),(405,2002),(501,2003),(502,2003),(503,2003),(504,2003),(601,2004),(602,2004),(603,2004),(604,2004),(701,2005),(702,2005),(801,2006),(802,2006),(901,2007),(902,2007),(903,2007),(1001,2008),(1002,2008),(1003,2008),(1101,2014),(1102,2014),(1111,2015),(1112,2015),(101,2016),(102,2016),(201,2018),(202,2018),(1201,2019),(1202,2019);
/*!40000 ALTER TABLE `coach_train` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delay_replace`
--

DROP TABLE IF EXISTS `delay_replace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delay_replace` (
  `schedule` int DEFAULT NULL,
  `delay_time` int DEFAULT NULL,
  `replacement_id` int DEFAULT NULL,
  KEY `fk_delay1` (`schedule`),
  KEY `fk_delay2` (`replacement_id`),
  CONSTRAINT `fk_delay1` FOREIGN KEY (`schedule`) REFERENCES `schedule` (`schedule_id`),
  CONSTRAINT `fk_delay2` FOREIGN KEY (`replacement_id`) REFERENCES `train` (`train_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delay_replace`
--

LOCK TABLES `delay_replace` WRITE;
/*!40000 ALTER TABLE `delay_replace` DISABLE KEYS */;
INSERT INTO `delay_replace` VALUES (19301,30,2002),(19302,45,2001),(19303,50,2004),(19304,30,2003),(19305,0,NULL),(19306,45,2005),(19307,0,NULL),(19308,0,NULL),(19311,0,NULL),(19312,0,NULL),(19313,35,2003),(19314,46,2006),(19315,0,NULL),(19316,35,2004),(19317,0,NULL),(19318,0,NULL),(19319,40,2002),(19320,0,NULL),(19321,0,NULL),(19322,0,NULL),(19323,0,NULL),(19324,0,NULL),(19325,0,NULL);
/*!40000 ALTER TABLE `delay_replace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_id` int NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `residence` varchar(30) DEFAULT NULL,
  `rest_day` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (4001,'Vitthal','Sutar','Pune','Sunday'),(4002,'Somnath','Suryawanshi','Mumbai','Saturday'),(4003,'Amol','Patil','Pune','Monday'),(4004,'Anil','Kumbhar','Nashik','Wednesday'),(4005,'Kishor','Kadam','Satara','Sunday'),(4006,'Krishnat','Shah','Tasgaon','Tuesday'),(4007,'Anand','Kadam','Goa','Friday'),(4008,'Ashok','Mali','Kolkata','Wednesday'),(4009,'Amit','Sutar','Kadegaon','Thursday'),(4010,'Kartik','Gaikwad','kadepur','Friday'),(4011,'Rohit','Sane','Mumbai','Monday'),(4012,'Amit','Mehta','Bangalore','Wednesday'),(4013,'Sandesh','More','Kolhapur','Friday'),(4014,'Arbaz','Khan','Latur','Tuesday'),(4015,'Rushi','Jadhav','Kerala','Friday'),(4016,'Neha','Sharma','Satara','Sunday'),(4017,'Riya','Chavan','Ahmednagar','Thursday'),(4018,'Aditya','Mishra','Kolkata','Monday'),(4019,'Krishna','Sahay','Mumbai','Tuesday'),(4020,'Bhupendra','Jogi','Nashik','Wednesday'),(4021,'Anand','Pandey','Pune','Thursday'),(4022,'Sarika','Mhatre','Kolhapur','Friday'),(4023,'Pooja','Kadam','Sangli','Saturday'),(4024,'Nikhil','Gore','Jalgaon','Sunday'),(4025,'Nitu','Sharma','Goa','Monday'),(4026,'Rahul','Gupta','Kerala','Tuesday'),(4027,'Raj','Mohite','Tasgaon','Wednesday'),(4028,'Shubham','Bharadwaj','Kolkata','Thursday'),(4029,'Yash','Chopra','Bangalore','Friday'),(4030,'Anil','Tupe','Pune','Saturday');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intermediatestations`
--

DROP TABLE IF EXISTS `intermediatestations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intermediatestations` (
  `route_id` int NOT NULL,
  `intermediatestation` int NOT NULL,
  `arrival_time` time DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  PRIMARY KEY (`route_id`,`intermediatestation`),
  KEY `intermediatestation` (`intermediatestation`),
  CONSTRAINT `intermediatestations_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`),
  CONSTRAINT `intermediatestations_ibfk_2` FOREIGN KEY (`intermediatestation`) REFERENCES `stations` (`station_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intermediatestations`
--

LOCK TABLES `intermediatestations` WRITE;
/*!40000 ALTER TABLE `intermediatestations` DISABLE KEYS */;
INSERT INTO `intermediatestations` VALUES (1801,11104,'06:30:00','06:35:00'),(1801,11106,'13:30:00','13:35:00'),(1801,11107,'07:30:00','07:35:00'),(1802,11104,'09:30:00','09:35:00'),(1802,11106,'10:30:00','10:35:00'),(1802,11107,'08:30:00','08:35:00'),(1803,11101,'11:30:00','11:35:00'),(1803,11102,'13:30:00','13:35:00'),(1803,11107,'12:30:00','12:35:00'),(1804,11101,'14:30:00','14:35:00'),(1804,11102,'16:30:00','16:35:00'),(1804,11107,'15:30:00','15:35:00'),(1805,11102,'17:30:00','17:35:00'),(1805,11107,'18:30:00','18:35:00'),(1806,11102,'19:30:00','19:35:00'),(1806,11107,'20:30:00','20:35:00'),(1807,11101,'23:30:00','23:35:00'),(1807,11102,'21:30:00','21:35:00'),(1807,11103,'00:30:00','00:35:00'),(1807,11104,'22:30:00','22:35:00'),(1808,11101,'03:30:00','03:35:00'),(1808,11102,'01:30:00','01:35:00'),(1808,11103,'04:30:00','04:35:00'),(1808,11104,'02:30:00','02:35:00'),(1809,11103,'07:30:00','07:35:00'),(1809,11105,'06:30:00','06:35:00'),(1809,11106,'05:30:00','05:35:00'),(1810,11103,'10:30:00','10:35:00'),(1810,11105,'09:30:00','09:35:00'),(1810,11106,'08:30:00','08:35:00'),(1811,11101,'12:30:00','12:35:00'),(1811,11102,'13:30:00','13:35:00'),(1811,11106,'11:30:00','11:35:00'),(1812,11101,'15:30:00','15:35:00'),(1812,11102,'16:30:00','16:35:00'),(1812,11106,'14:30:00','14:35:00');
/*!40000 ALTER TABLE `intermediatestations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance` (
  `maintain_id` int NOT NULL,
  `coach_id` int DEFAULT NULL,
  `previous_date` date DEFAULT NULL,
  `next_due` date DEFAULT NULL,
  PRIMARY KEY (`maintain_id`),
  KEY `coach_id` (`coach_id`),
  CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`coach_id`) REFERENCES `coach_train` (`coach_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance`
--

LOCK TABLES `maintenance` WRITE;
/*!40000 ALTER TABLE `maintenance` DISABLE KEYS */;
INSERT INTO `maintenance` VALUES (1301,301,'2023-03-10','2023-09-10'),(1302,302,'2023-03-11','2023-09-10'),(1303,401,'2023-03-12','2023-09-15'),(1304,402,'2023-03-13','2023-09-15'),(1305,501,'2023-03-14','2023-09-10'),(1306,502,'2023-03-15','2023-09-10'),(1307,601,'2023-03-16','2023-04-10'),(1308,602,'2023-03-17','2023-04-10'),(1309,701,'2023-03-18','2023-01-25'),(1310,702,'2023-03-19','2023-10-10'),(1311,303,'2023-03-20','2023-10-10'),(1312,403,'2023-03-21','2023-11-10'),(1313,404,'2023-03-22','2023-11-10'),(1314,405,'2023-03-23','2023-11-10'),(1315,503,'2023-03-24','2023-09-10'),(1316,504,'2023-03-25','2023-09-10'),(1317,603,'2023-03-26','2023-04-10'),(1318,604,'2023-03-27','2023-04-10'),(1319,801,'2023-03-28','2023-09-10'),(1320,802,'2023-03-29','2023-09-10'),(1321,901,'2023-03-30','2024-04-13'),(1322,902,'2023-03-31','2024-04-13'),(1323,903,'2023-04-01','2024-04-13'),(1324,1001,'2023-04-02','2024-04-15'),(1325,1002,'2023-04-03','2024-04-15'),(1326,1003,'2023-04-04','2024-04-15'),(1327,1101,'2023-04-05','2024-04-19'),(1328,1102,'2023-04-06','2024-04-19'),(1329,1111,'2023-04-07','2024-04-21'),(1330,1112,'2023-04-08','2024-04-21'),(1331,101,'2023-04-09','2024-04-23'),(1332,102,'2023-04-10','2024-04-23'),(1333,201,'2023-10-25','2024-04-25'),(1334,202,'2023-10-25','2024-04-25'),(1335,1201,'2023-10-27','2024-04-27'),(1336,1202,'2023-10-27','2024-04-27');
/*!40000 ALTER TABLE `maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger` (
  `id` int NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES (1601,'Nachiket',10,'Child'),(1602,'Nitin',25,'Adult'),(1603,'Manas',30,'Adult'),(1604,'Kamlesh',35,'Adult'),(1605,'Kartik',11,'Child'),(1606,'Nilkanth',67,'Senior_Citizen'),(1607,'Prasad',44,'Adult'),(1608,'Pramod',67,'Senior_Citizen'),(1609,'Sarita',67,'Senior_Citizen'),(1610,'Kamal',35,'Adult'),(1611,'Nirmala',66,'Senior_Citizen'),(1612,'Kirti',10,'Child'),(1613,'Sonali',10,'Child'),(1614,'Ganesh',67,'Senior_Citizen'),(1615,'Tejas',11,'Child'),(1616,'Manav',68,'Senior_Citizen'),(1617,'Nilam',66,'Senior_Citizen'),(1618,'Siddhi',11,'Child'),(1619,'Yogesh',69,'Senior_Citizen'),(1620,'Vikas',66,'Senior_Citizen'),(1621,'Riddhi',45,'Adult'),(1622,'Siddhi',12,'Child'),(1623,'Neha',33,'Adult'),(1624,'Om',14,'Adult'),(1625,'Priya',55,'Adult'),(1626,'Hussain',66,'Senior_Citizen'),(1627,'Rakesh',70,'Senior_Citizen'),(1628,'Suresh',72,'Senior_Citizen'),(1629,'Bilal',34,'Adult'),(1630,'Christopher',75,'Senior_Citizen'),(1631,'Raj',12,'Adult'),(1632,'Mohan',59,'Adult'),(1633,'Rekha',72,'Senior_Citizen'),(1634,'Varun',10,'Child'),(1635,'Ritesh',26,'Adult'),(1636,'Sita',80,'Senior_Citizen'),(1637,'Maya',78,'Senior_Citizen'),(1638,'Sayali',4,'Child'),(1639,'Yash',45,'Adult'),(1640,'Rahul',56,'Adult'),(1641,'Sachin',32,'Adult'),(1642,'Bhupendra',27,'Adult'),(1643,'Kapil',7,'Child'),(1644,'Saurabh',11,'Child'),(1645,'Vicky',19,'Adult'),(1646,'Michael',75,'Senior_Citizen'),(1647,'Asha',45,'Adult'),(1648,'Sarita',69,'Senior_Citizen'),(1649,'Lucky',6,'Child'),(1650,'Anand',25,'Adult');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `route_id` int NOT NULL,
  `start` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `distance` int DEFAULT NULL,
  `intermediate_stations` int DEFAULT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (1801,'Mumbai','Goa',600,3),(1802,'Goa','Mumbai',600,3),(1803,'Lonavala','Ajmer',700,3),(1804,'Ajmer','Lonavala',700,3),(1805,'Chennai','Bengaluru',600,2),(1806,'Bengaluru','Chennai',600,2),(1807,'Delhi','Pune',500,4),(1808,'Pune','Delhi',500,4),(1809,'Mumbai','Kolkata',1000,3),(1810,'Kolkata','Mumbai',1000,3),(1811,'Dharwad','Bengaluru',700,3),(1812,'Bengaluru','Dharwad',700,3);
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `schedule_id` int NOT NULL,
  `train_id` int DEFAULT NULL,
  `route_id` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `driver_id` int DEFAULT NULL,
  `codriver_id` int DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `reach_time` time DEFAULT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `fk_schedule` (`train_id`),
  KEY `fk_schedule2` (`route_id`),
  KEY `fk_schedule3` (`driver_id`),
  KEY `fk_schedule4` (`codriver_id`),
  CONSTRAINT `fk_schedule2` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`),
  CONSTRAINT `fk_schedule3` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `fk_schedule4` FOREIGN KEY (`codriver_id`) REFERENCES `driver` (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (19301,2001,1801,'2023-09-10',4001,4002,'06:00:00','15:00:00'),(19302,2002,1802,'2023-09-11',4003,4004,'04:30:20','18:25:00'),(19303,2001,1801,'2023-09-11',4005,4007,'06:00:00','15:00:00'),(19304,2001,1801,'2023-10-10',4007,4002,'06:00:00','15:00:00'),(19305,2003,1810,'2023-10-10',4005,4006,'08:00:00','22:25:00'),(19306,2003,1810,'2023-10-11',4006,4005,'08:00:00','22:25:00'),(19307,2004,1809,'2023-10-11',4002,4007,'06:00:00','20:25:00'),(19308,2005,1811,'2023-10-12',4008,4010,'09:00:00','15:00:00'),(19309,2005,1811,'2023-11-05',4009,4010,'09:00:00','15:00:00'),(19310,2006,1812,'2023-11-05',4007,4006,'04:35:00','21:35:00'),(19311,2001,1801,'2023-11-06',4004,4005,'06:00:00','15:00:00'),(19312,2001,1801,'2023-11-06',4003,4008,'06:00:00','15:00:00'),(19313,2002,1802,'2023-11-06',4005,4007,'04:30:20','18:25:00'),(19314,2005,1811,'2023-09-10',4009,4006,'09:00:00','15:00:00'),(19315,2004,1809,'2023-09-10',4010,4008,'06:00:00','20:25:00'),(19316,2001,1801,'2023-09-12',4003,4004,'06:00:00','15:00:00'),(19317,2001,1801,'2023-09-13',4001,4002,'06:00:00','15:00:00'),(19318,2001,1801,'2023-09-14',4004,4003,'06:00:00','15:00:00'),(19319,2001,1801,'2023-09-15',4010,4006,'06:00:00','15:00:00'),(19320,2004,1809,'2023-10-10',4008,4009,'06:00:00','20:25:00'),(19321,2006,1812,'2023-09-10',4023,4024,'04:35:00','21:35:00'),(19322,2006,1812,'2023-09-11',4025,4028,'04:35:00','21:35:00'),(19323,2005,1811,'2023-09-12',4015,4018,'09:00:00','15:00:00'),(19324,2005,1812,'2023-09-10',4020,4017,'09:00:00','15:00:00'),(19325,2006,1812,'2023-09-11',4029,4021,'04:35:00','21:35:00');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat_coach`
--

DROP TABLE IF EXISTS `seat_coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat_coach` (
  `seat_id` int NOT NULL,
  `coach_id` int DEFAULT NULL,
  PRIMARY KEY (`seat_id`),
  KEY `coach_id` (`coach_id`),
  CONSTRAINT `seat_coach_ibfk_1` FOREIGN KEY (`coach_id`) REFERENCES `coach_train` (`coach_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat_coach`
--

LOCK TABLES `seat_coach` WRITE;
/*!40000 ALTER TABLE `seat_coach` DISABLE KEYS */;
INSERT INTO `seat_coach` VALUES (1962,101),(1963,101),(1964,101),(1965,102),(1966,102),(1967,102),(1971,102),(1968,201),(1969,201),(1970,201),(1972,202),(1973,202),(1974,202),(1901,301),(1902,301),(1903,301),(1904,301),(1905,301),(1906,302),(1907,302),(1908,302),(1909,302),(1910,401),(1911,401),(1912,401),(1913,401),(1914,401),(1915,402),(1916,402),(1917,402),(1918,402),(1919,402),(1920,501),(1921,501),(1922,501),(1923,501),(1924,502),(1925,502),(1926,502),(1927,502),(1928,601),(1929,601),(1930,602),(1945,701),(1946,701),(1947,701),(1948,701),(1949,701),(1950,701),(1951,701),(1952,702),(1953,702),(1954,702),(1955,702),(1956,702),(1957,702),(1958,702),(1931,801),(1932,801),(1933,801),(1934,801),(1935,801),(1936,801),(1937,802),(1938,802),(1939,802),(1940,802),(1941,802),(1942,802),(1943,802),(1944,802),(1959,901),(1960,901),(1961,901),(1993,1001),(1994,1001),(1995,1001),(1996,1002),(1997,1002),(1998,1002),(1999,1003),(2000,1003),(2001,1003),(1987,1101),(1988,1101),(1989,1101),(1990,1102),(1991,1102),(1992,1102),(1981,1111),(1982,1111),(1983,1111),(1984,1112),(1985,1112),(1986,1112),(1975,1201),(1976,1201),(1977,1201),(1978,1202),(1979,1202),(1980,1202);
/*!40000 ALTER TABLE `seat_coach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stations`
--

DROP TABLE IF EXISTS `stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stations` (
  `station_id` int NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`station_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stations`
--

LOCK TABLES `stations` WRITE;
/*!40000 ALTER TABLE `stations` DISABLE KEYS */;
INSERT INTO `stations` VALUES (11101,'Goa'),(11102,'Mumbai'),(11103,'Ajmer'),(11104,'Lonavala'),(11105,'Bengaluru'),(11106,'Chennai'),(11107,'Pune'),(11108,'Delhi'),(11109,'Kolkata'),(11110,'Dharwad');
/*!40000 ALTER TABLE `stations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `ticket_id` int NOT NULL,
  `schedule_id` int DEFAULT NULL,
  `board_id` int DEFAULT NULL,
  `alight_id` int DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `fk_ticket1` (`schedule_id`),
  KEY `fk_ticket2` (`board_id`),
  KEY `fk_ticket3` (`alight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (241101,19301,11101,11102),(241102,19302,11102,11101),(241103,19303,11103,11104),(241104,19304,11104,11103),(241105,19305,11105,11106),(241106,19306,11106,11105),(241107,19307,11107,11108),(241108,19301,11108,11107),(241109,19301,11101,11102),(241110,19302,11102,11101),(241111,19303,11103,11104),(241112,19304,11104,11103),(241113,19305,11105,11106),(241114,19306,11106,11105),(241115,19307,11107,11108),(241116,19301,11101,11102),(241117,19302,11102,11101),(241118,19303,11103,11104),(241119,19304,11104,11103),(241120,19305,11105,11106),(241121,19306,11106,11105),(241122,19307,11107,11108),(241123,19301,11108,11107),(241124,19301,11101,11102),(241125,19302,11102,11101),(241126,19303,11103,11104),(241127,19304,11104,11103),(241128,19305,11105,11106),(241129,19306,11106,11105),(241130,19307,11107,11108),(241131,19301,11108,11107),(241132,19311,11101,11102),(241133,19312,11102,11101),(241134,19313,11103,11104),(241135,19314,11104,11103),(241136,19315,11105,11106),(241137,19316,11106,11105),(241138,19317,11107,11108),(241139,19318,11108,11107),(241140,19319,11101,11102),(241141,19320,11102,11101),(241142,19313,11103,11104),(241143,19316,11104,11103),(241144,19311,11105,11106),(241145,19314,11106,11105),(241146,19311,11107,11108),(241147,19312,11108,11107),(241148,19307,11101,11102),(241149,19312,11103,11104),(241150,19315,11105,11106),(241151,19321,11109,11110),(241152,19322,11110,11109),(241153,19323,11110,11109),(241154,19324,11109,11110);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_seat_passenger`
--

DROP TABLE IF EXISTS `ticket_seat_passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_seat_passenger` (
  `ticket_id` int DEFAULT NULL,
  `seat_id` int DEFAULT NULL,
  `passenger_id` int DEFAULT NULL,
  `confirm_status` varchar(10) DEFAULT NULL,
  `travelagent_id` int DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `discounted_price` int DEFAULT NULL,
  `commission` int DEFAULT NULL,
  KEY `ticket_id` (`ticket_id`),
  KEY `travelagent_id` (`travelagent_id`),
  KEY `seat_id` (`seat_id`),
  CONSTRAINT `ticket_seat_passenger_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`ticket_id`),
  CONSTRAINT `ticket_seat_passenger_ibfk_2` FOREIGN KEY (`travelagent_id`) REFERENCES `travel_agent` (`travelagent_id`),
  CONSTRAINT `ticket_seat_passenger_ibfk_3` FOREIGN KEY (`seat_id`) REFERENCES `seat_coach` (`seat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_seat_passenger`
--

LOCK TABLES `ticket_seat_passenger` WRITE;
/*!40000 ALTER TABLE `ticket_seat_passenger` DISABLE KEYS */;
INSERT INTO `ticket_seat_passenger` VALUES (241101,1901,1601,'Yes',5101,'2023-09-10',500,25,375,38),(241102,1902,1602,'No',NULL,'2023-09-04',645,NULL,645,NULL),(241103,1903,1603,'Yes',5103,'2023-08-11',500,NULL,500,50),(241104,1904,1604,'Yes',5104,'2023-09-10',457,NULL,457,46),(241105,1945,1601,'Yes',NULL,'2023-10-03',500,25,375,NULL),(241106,1906,1606,'Yes',5101,'2023-09-11',500,10,450,45),(241107,1907,1607,'Yes',NULL,'2023-11-03',800,NULL,800,NULL),(241108,1908,1608,'Yes',5103,'2023-10-10',500,10,450,45),(241109,1909,1609,'Yes',NULL,'2023-09-03',500,NULL,500,NULL),(241110,1910,1602,'Yes',5105,'2023-08-11',500,NULL,500,50),(241111,1911,1611,'No',NULL,'2023-09-04',700,NULL,700,NULL),(241113,1958,1613,'No',NULL,'2023-10-03',500,25,375,NULL),(241114,1914,1614,'Yes',5104,'2023-09-11',500,10,450,45),(241115,1915,1615,'Yes',5105,'2023-09-11',500,25,375,38),(241116,1916,1616,'Yes',5101,'2023-08-10',500,10,450,45),(241117,1917,1617,'Yes',NULL,'2023-09-04',500,NULL,500,NULL),(241118,1918,1618,'Yes',5103,'2023-08-11',500,25,375,50),(241119,1919,1619,'Yes',5104,'2023-09-10',500,10,450,45),(241120,1952,1620,'Yes',NULL,'2023-10-03',500,10,450,NULL),(241121,1921,1602,'Yes',5101,'2023-09-10',500,NULL,500,50),(241122,1922,1622,'Yes',5102,'2023-09-11',500,25,375,38),(241123,1923,1623,'No',NULL,'2023-09-03',800,NULL,800,NULL),(241124,1924,1624,'Yes',NULL,'2023-09-03',275,NULL,275,NULL),(241125,1925,1625,'No',NULL,'2023-09-04',500,NULL,500,NULL),(241126,1948,1626,'Yes',5101,'2023-08-11',500,10,450,50),(241127,1927,1627,'Yes',NULL,'2023-10-03',400,10,460,NULL),(241128,1928,1627,'Yes',5103,'2023-09-10',600,10,540,36),(241129,1929,1629,'No',NULL,'2023-11-03',500,NULL,500,NULL),(241130,1930,1627,'Yes',5105,'2023-09-11',500,10,450,50),(241131,1901,1628,'Yes',5106,'2023-08-10',500,10,450,45),(241132,1949,1629,'Yes',5101,'2023-10-06',500,NULL,500,45),(241133,1951,1605,'Yes',5108,'2023-10-06',500,25,375,45),(241134,1952,1630,'Yes',5101,'2023-10-06',500,10,450,45),(241135,1905,1606,'Yes',NULL,'2023-09-03',500,10,450,NULL),(241136,1906,1615,'Yes',5111,'2023-08-10',500,25,375,38),(241137,1907,1606,'Yes',5112,'2023-08-12',500,10,450,45),(241138,1908,1630,'No',NULL,'2023-09-06',500,10,450,NULL),(241139,1909,1609,'Yes',5101,'2023-08-14',500,NULL,500,50),(241140,1910,1619,'Yes',5103,'2023-08-15',500,10,450,45),(241141,1911,1609,'Yes',5106,'2023-09-10',500,10,450,45),(241142,1953,1619,'Yes',NULL,'2023-10-30',500,10,450,NULL),(241143,1913,1603,'Yes',5113,'2023-08-12',500,NULL,500,50),(241144,1954,1616,'Yes',NULL,'2023-10-30',500,10,450,NULL),(241145,1915,1603,'Yes',5103,'2023-08-10',500,NULL,500,50),(241147,1956,1601,'Yes',NULL,'2023-10-30',1000,NULL,1000,NULL),(241148,1993,1616,'Yes',NULL,'2023-10-04',500,10,450,NULL),(241149,1919,1617,'Yes',5101,'2023-09-06',500,10,450,45),(241150,1920,1602,'Yes',NULL,'2023-09-03',600,NULL,500,NULL),(241151,1930,1644,'Yes',5101,'2023-09-10',500,25,375,37),(241152,1934,1646,'Yes',5101,'2023-09-11',500,10,450,45),(241153,1935,1649,'Yes',5101,'2023-09-12',500,25,375,37),(241154,1932,1650,'Yes',5101,'2023-09-10',500,NULL,500,50);
/*!40000 ALTER TABLE `ticket_seat_passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `train` (
  `train_id` int NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `no_of_coaches` int DEFAULT NULL,
  `route_id` int DEFAULT NULL,
  PRIMARY KEY (`train_id`),
  KEY `route_id` (`route_id`),
  CONSTRAINT `train_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train`
--

LOCK TABLES `train` WRITE;
/*!40000 ALTER TABLE `train` DISABLE KEYS */;
INSERT INTO `train` VALUES (2001,'Godavari Express',3,1801),(2002,'Godavari Express',5,1802),(2003,'Howrah Express',4,1810),(2004,'Howrah Express',3,1809),(2005,'Chennai Express',2,1811),(2006,'Chennai Express',3,1812),(2007,'goa express',3,1802),(2008,'goa express',3,1811),(2014,'Ratnachal Express',2,1807),(2015,'Rajdhani Express',2,1808),(2016,'Rajdhani Express',2,1808),(2018,'kranti express',2,1804),(2019,'kranti express',2,1803);
/*!40000 ALTER TABLE `train` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `train_opdays`
--

DROP TABLE IF EXISTS `train_opdays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `train_opdays` (
  `train_id` int DEFAULT NULL,
  `operating_days` varchar(20) DEFAULT NULL,
  KEY `fk_opdays1` (`train_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train_opdays`
--

LOCK TABLES `train_opdays` WRITE;
/*!40000 ALTER TABLE `train_opdays` DISABLE KEYS */;
INSERT INTO `train_opdays` VALUES (2001,'Monday'),(2001,'Tuesday'),(2001,'Wednesday'),(2001,'Thursday'),(2001,'Friday'),(2001,'Saturday'),(2002,'Monday'),(2002,'Thursday'),(2002,'Saturday'),(2003,'Tuesday'),(2003,'Wednesday'),(2003,'Friday'),(2003,'Saturday'),(2004,'Tuesday'),(2004,'Thursday'),(2005,'Sunday'),(2006,'Monday'),(2006,'Wednesday'),(2006,'Friday'),(2007,'Monday'),(2007,'Wednesday'),(2008,'Monday'),(2008,'Thursday'),(2008,'Saturday'),(2014,'Monday'),(2014,'Wednesday'),(2015,'Tuesday'),(2015,'Thursday'),(2018,'Monday'),(2018,'Thursday'),(2018,'Saturday'),(2019,'Tuesday'),(2019,'Wednesday'),(2019,'Friday');
/*!40000 ALTER TABLE `train_opdays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_agent`
--

DROP TABLE IF EXISTS `travel_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_agent` (
  `travelagent_id` int NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`travelagent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_agent`
--

LOCK TABLES `travel_agent` WRITE;
/*!40000 ALTER TABLE `travel_agent` DISABLE KEYS */;
INSERT INTO `travel_agent` VALUES (5101,'Shashikant'),(5102,'Rohit'),(5103,'Hardik'),(5104,'Sunil'),(5105,'Shankar'),(5106,'Mohan'),(5107,'Vivek'),(5108,'Suresh'),(5109,'Ramesh'),(5110,'Sachin'),(5111,'Dipak'),(5112,'Sunil'),(5113,'Mohit'),(5114,'Ashish'),(5115,'Karan');
/*!40000 ALTER TABLE `travel_agent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-15 21:39:11
