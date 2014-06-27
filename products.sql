-- MySQL dump 10.10
--
-- Host: localhost    Database: gpp_development
-- ------------------------------------------------------
-- Server version	5.0.27-debug

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `sub_name` varchar(255) default NULL,
  `description` text,
  `price` decimal(8,2) default '0.00',
  `position` int(11) default NULL,
  `created_on` datetime default NULL,
  `updated_on` datetime default NULL,
  `parent_id` int(11) default NULL,
  `category_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (332,'1825','Unit 1','','50.00',1,NULL,NULL,NULL,2),(333,'1856','','','45.00',2,NULL,NULL,NULL,2),(334,'1870','','','45.00',3,NULL,NULL,NULL,2),(335,'Age of Discovery','','','30.00',4,NULL,NULL,NULL,2),(336,'Age of Empires III','','','65.00',5,NULL,NULL,NULL,2),(337,'Age of Steam Expansion #4: France & Italy','','','25.00',6,NULL,NULL,NULL,2),(338,'Alchemist','','','35.00',7,NULL,NULL,NULL,2),(339,'Alhambra','','','35.00',8,NULL,NULL,NULL,2),(340,'Alhambra','The Treasure Chamber','','25.00',9,NULL,NULL,NULL,2),(341,'Alhambra','The City Gate','','25.00',10,NULL,NULL,NULL,2),(342,'Alhambra','The Thief’s Turn','','25.00',11,NULL,NULL,NULL,2),(343,'Alhambra','The Vizier’s Favour Exp Set','','25.00',12,NULL,NULL,NULL,2),(344,'Alhambra','Garden’s of Alhambra','','25.00',13,NULL,NULL,NULL,2),(345,'Amazonas','','','49.00',14,NULL,NULL,NULL,2),(346,'Andromeda','','','20.00',15,NULL,NULL,NULL,2),(347,'Aqua Romana','','','50.00',16,NULL,NULL,NULL,2),(348,'Arena Maximus','','','20.50',17,NULL,NULL,NULL,2),(349,'Architekton','','','25.00',18,NULL,NULL,NULL,2),(350,'Ark','','','17.50',19,NULL,NULL,NULL,2),(351,'Arkadia','','','45.00',20,NULL,NULL,NULL,2),(352,'Arkham Horror','','','50.00',21,NULL,NULL,NULL,2),(353,'Arkham Horror','Dunwich Horror Expansion','','40.00',22,NULL,NULL,NULL,2),(354,'Arkham Horror','The Yellow King Expansion','','20.50',23,NULL,NULL,NULL,2),(355,'Aton','','','25.00',24,NULL,NULL,NULL,2),(356,'Attika','','','33.00',25,NULL,NULL,NULL,2),(357,'Australia','','','40.00',26,NULL,NULL,NULL,2),(358,'Australian Rails','','','38.00',27,NULL,NULL,NULL,2),(359,'Axis & Allies','','','48.00',281,NULL,NULL,NULL,2),(360,'Axis & Allies','Pacific','','46.00',29,NULL,NULL,NULL,2),(361,'Axis & Allies','D-Day','','42.00',30,NULL,NULL,NULL,2),(362,'Axis & Allies','Battle of the Bulge','','53.00',31,NULL,NULL,NULL,2),(363,'Axis & Allies','Europe','','47.00',32,NULL,NULL,NULL,2),(364,'BattleLore','','','74.00',33,NULL,NULL,NULL,2),(365,'BattleLore','Goblin Marauders','','17.00',34,NULL,NULL,NULL,2),(366,'BattleLore','100 Years War','','32.00',35,NULL,NULL,NULL,2),(367,'BattleLore','Epic','','16.00',36,NULL,NULL,NULL,2),(368,'BattleLore','Goblin Skirmishers','','21.00',37,NULL,NULL,NULL,2),(369,'BattleLore','Dwarven Battalion','','21.00',38,NULL,NULL,NULL,2),(370,'Before the Wind','','','30.00',39,NULL,NULL,NULL,2),(371,'The Big Idea: Semideluxe Ed.','','','12.00',40,NULL,NULL,NULL,2),(372,'Bison','','','30.00',410,NULL,NULL,NULL,2),(373,'Blue Moon: Basic Set','','','25.00',42,NULL,NULL,NULL,2),(374,'Boomtown','','','23.00',43,NULL,NULL,NULL,2),(375,'Brew-Opoly','','','26.50',44,NULL,NULL,NULL,2),(376,'Britannia Board Game','','','40.00',45,NULL,NULL,NULL,2),(377,'British Rails','','','38.00',46,NULL,NULL,NULL,2),(378,'C-Jump','','','25.00',47,NULL,NULL,NULL,2),(379,'Can\'t Stop','','','31.00',48,NULL,NULL,NULL,2),(380,'Capt’n Clever','','','28.00',49,NULL,NULL,NULL,2),(381,'Captain Treasure Boots','','','3.50',50,NULL,NULL,NULL,2),(382,'Carcassonne','','','25.00',51,NULL,NULL,NULL,2),(383,'Carcassonne','Carcassonne: The Big Box','','70.00',52,NULL,NULL,NULL,2),(384,'Carcassonne','Carcassonne: The Castle','','30.00',53,NULL,NULL,NULL,2),(385,'Carcassonne','Carcassonne: The City','','50.00',54,NULL,NULL,NULL,2),(386,'Carcassonne','Carcassonne: The Count','','6.00',55,NULL,NULL,NULL,2),(387,'Carcassonne','Carcassonne: Hunters & Gatherers','','25.00',56,NULL,NULL,NULL,2),(388,'Carcassonne','Carcassonne: Inns & Cathedrals','','15.00',57,NULL,NULL,NULL,2),(389,'Carcassonne','Carcassonne: King & Scout','','6.00',58,NULL,NULL,NULL,2),(390,'Carcassonne','Carcassonne: Princess & Dragon','','15.00',59,NULL,NULL,NULL,2),(391,'Carcassonne','Carcassonne: The River II','','6.00',60,NULL,NULL,NULL,2),(392,'Carcassonne','Carcassonne: The Tower','','17.50',61,NULL,NULL,NULL,2),(393,'Carcassonne','Carcassonne: Traders & Builders','','15.00',62,NULL,NULL,NULL,2),(394,'Cartagena','','','28.00',63,NULL,NULL,NULL,2),(395,'Cash-A-Catch','','','35.00',64,NULL,NULL,NULL,2),(396,'Cat-Opoly','','','26.50',65,NULL,NULL,NULL,2),(397,'Caylus','','','55.00',66,NULL,NULL,NULL,2),(398,'Chief Herman’s Holiday Fun Pack','','','6.00',67,NULL,NULL,NULL,2),(399,'Chief Herman’s Next Big Thing','','','6.00',68,NULL,NULL,NULL,2),(400,'China Rails','','','38.00',69,NULL,NULL,NULL,2),(401,'Clans','','','28.00',70,NULL,NULL,NULL,2),(402,'Cleopatra & the Society of Architects','','','50.00',71,NULL,NULL,NULL,2),(403,'Colosseum','','','54.00',72,NULL,NULL,NULL,2),(404,'Condottiere','','','20.00',73,NULL,NULL,NULL,2),(405,'Conquest of Pangea','','','41.00',74,NULL,NULL,NULL,2),(406,'Dead Money','','','15.00',75,NULL,NULL,NULL,2),(407,'Deadwood','','','7.50',76,NULL,NULL,NULL,2),(408,'Deluxe Confrontation','','','40.00',77,NULL,NULL,NULL,2),(409,'Descent: Journey\'s in the Dark','','','82.00',78,NULL,NULL,NULL,2),(410,'Descent: Journey\'s in the Dark','Altar of Despair','','41.00',79,NULL,NULL,NULL,2),(411,'Descent: Journey\'s in the Dark','Battles of the 3rd Age','','58.00',80,NULL,NULL,NULL,2),(412,'Devil Bunny Hates the Earth','','','2.50',81,NULL,NULL,NULL,2),(413,'Devil Bunny Needs a Ham','','','2.50',82,NULL,NULL,NULL,2),(414,'Die Macher','','','50.00',83,NULL,NULL,NULL,2),(415,'Doge','','','40.00',84,NULL,NULL,NULL,2),(416,'Domaine, Land, Wealth, Power, Prestige','','','49.00',85,NULL,NULL,NULL,2),(417,'Doom','Board Game','','55.00',86,NULL,NULL,NULL,2),(418,'Doom','Board Game Expansion','','40.00',87,NULL,NULL,NULL,2),(419,'Dos Rios: Valley of Two Rivers','','','49.00',88,NULL,NULL,NULL,2),(420,'Double or Nothing','','','20.00',89,NULL,NULL,NULL,2),(421,'Dvonn','','','33.00',90,NULL,NULL,NULL,2),(422,'Easy Money','','','17.50',91,NULL,NULL,NULL,2),(423,'El Grande Cards','','','10.00',92,NULL,NULL,NULL,2),(424,'El Grande Decennial Edition','','','55.00',93,NULL,NULL,NULL,2),(425,'Elfenland','','','40.00',94,NULL,NULL,NULL,2),(426,'Empire Builder (New Ed.)','','','38.00',95,NULL,NULL,NULL,2),(427,'Enemy Choclatier','','','6.00',96,NULL,NULL,NULL,2),(428,'Entdecker: Exploring New Horizons','','','49.00',97,NULL,NULL,NULL,2),(429,'Euphrates & Tigris Card Games','','','25.00',98,NULL,NULL,NULL,2),(430,'Eurorails','','','38.00',99,NULL,NULL,NULL,2),(431,'Evergreen','','','30.00',100,NULL,NULL,NULL,2),(432,'Fearsome Floors','','','38.00',101,NULL,NULL,NULL,2),(433,'Fight City (Includes Decks A & B)','','','10.00',102,NULL,NULL,NULL,2),(434,'Formidable Foes','','','40.00',103,NULL,NULL,NULL,2),(435,'Formula De (Final Reprint/Last Edition)','','','45.00',104,NULL,NULL,NULL,2),(436,'Fjords','','','20.00',105,NULL,NULL,NULL,2),(437,'Fredericus','','','20.00',106,NULL,NULL,NULL,2),(438,'Freeloader','','','7.50',107,NULL,NULL,NULL,2),(439,'Funny Friends','','','35.00',108,NULL,NULL,NULL,2),(440,'Gang of Four','','','15.00',109,NULL,NULL,NULL,2),(441,'The Game of Throres','','','52.00',110,NULL,NULL,NULL,2),(442,'Garden-Opoly','','','26.50',111,NULL,NULL,NULL,2),(443,'Genesis','','','35.00',112,NULL,NULL,NULL,2),(444,'Get Out','','','7.50',113,NULL,NULL,NULL,2),(445,'Gheos','','','25.00',114,NULL,NULL,NULL,2),(446,'Gipf','','','30.00',115,NULL,NULL,NULL,2),(447,'Gipf','Gipf Project Set 1','','12.00',116,NULL,NULL,NULL,2),(448,'Gipf','Gipf Project Set 2','','12.00',117,NULL,NULL,NULL,2),(449,'Gloria Mundi','','','45.00',118,NULL,NULL,NULL,2),(450,'Goa','','','40.00',119,NULL,NULL,NULL,2),(451,'Gravediggers','','','25.00',120,NULL,NULL,NULL,2),(452,'Great Brain Robbery, The','','','7.50',121,NULL,NULL,NULL,2),(453,'Guatemala Café','','','50.00',122,NULL,NULL,NULL,2),(454,'Hacienda','','','40.00',123,NULL,NULL,NULL,2),(455,'Halli Galli','','','17.00',124,NULL,NULL,NULL,2),(456,'Hare & Tortoise','','','28.00',125,NULL,NULL,NULL,2),(457,'Heroscape','','','64.00',126,NULL,NULL,NULL,2),(458,'Hey! That’s My Fish!','','','25.00',127,NULL,NULL,NULL,2),(459,'High Bohn Plus','','','15.00',128,NULL,NULL,NULL,2),(460,'The High Kings of Tara','','','59.00',129,NULL,NULL,NULL,2),(461,'Hoity Toity','','','30.00',130,NULL,NULL,NULL,2),(462,'Hollywood Blockbuster','','','40.00',131,NULL,NULL,NULL,2),(463,'Horse-Opoly','','','26.50',132,NULL,NULL,NULL,2),(464,'Ido','','','50.00',133,NULL,NULL,NULL,2),(465,'If Wishes Were Fishes','','','35.00',134,NULL,NULL,NULL,2),(466,'I\'m The Boss','','','38.00',135,NULL,NULL,NULL,2),(467,'Imaginiff','','','30.00',136,NULL,NULL,NULL,2),(468,'India Rails','','','35.00',137,NULL,NULL,NULL,2),(469,'Industria','','','35.00',138,NULL,NULL,NULL,2),(470,'Inkognito','','','50.00',139,NULL,NULL,NULL,2),(471,'If Wishes Were Fishes','','','35.00',140,NULL,NULL,NULL,2),(472,'Jacob Marley, Esquire','','','7.50',141,NULL,NULL,NULL,2),(473,'Jambo','','','23.00',142,NULL,NULL,NULL,2),(474,'Java','','','38.00',143,NULL,NULL,NULL,2),(475,'Journeys in the Dark','','','80.00',144,NULL,NULL,NULL,2),(476,'Journeys in the Dark','Well of Darkness Expansion','','40.00',145,NULL,NULL,NULL,2),(477,'Journeys in the Dark','Altar of Despair Expansion','','40.00',146,NULL,NULL,NULL,2),(478,'Keythedral','','','50.00',147,NULL,NULL,NULL,2),(479,'Khet: The Lazer Game','','','45.00',148,NULL,NULL,NULL,2),(480,'Killer Bunnies','','','25.00',149,NULL,NULL,NULL,2),(481,'Killer Bunnies','Green Booster Deck','','12.00',150,NULL,NULL,NULL,2),(482,'Killer Bunnies','Pefectly Pink','','12.00',151,NULL,NULL,NULL,2),(483,'Killer Bunnies','Khaki','','12.00',152,NULL,NULL,NULL,2),(484,'Killer Bunnies','Red','','12.00',153,NULL,NULL,NULL,2),(485,'Killer Bunnies','Violet','','12.00',154,NULL,NULL,NULL,2),(486,'Killer Bunnies','Orange','','12.00',155,NULL,NULL,NULL,2),(487,'Killer Bunnies','White','','12.00',156,NULL,NULL,NULL,2),(488,'Killer Bunnies','Steel','','12.00',157,NULL,NULL,NULL,2),(489,'King Me!','','','25.00',158,NULL,NULL,NULL,2),(490,'Knights of Charlemagne','','','20.00',159,NULL,NULL,NULL,2),(491,'La Strada','','','36.00',160,NULL,NULL,NULL,2),(492,'Leonardo Da Vinci','','','45.00',161,NULL,NULL,NULL,2),(493,'Lord of the Rings','','','53.00',162,NULL,NULL,NULL,2),(494,'Lord of the Rings','Friends & Foes Expansion','','25.00',163,NULL,NULL,NULL,2),(495,'Louis XIV','','','30.00',164,NULL,NULL,NULL,2),(496,'Lunar Rails','','','38.00',165,NULL,NULL,NULL,2),(497,'Magna Grecia','','','38.00',166,NULL,NULL,NULL,2),(498,'Maharaja','','','45.00',167,NULL,NULL,NULL,2),(499,'Make-Your-Own-Opoly','','','26.50',168,NULL,NULL,NULL,2),(500,'Marvel Heros','','','65.00',169,NULL,NULL,NULL,2),(501,'Masons','','','40.00',170,NULL,NULL,NULL,2),(502,'Maui-Opoly','','','26.50',171,NULL,NULL,NULL,2),(503,'Mave Nostrum','','','57.00',172,NULL,NULL,NULL,2),(504,'Medici','','','35.00',173,NULL,NULL,NULL,2),(505,'Memoir ’44','','','50.00',174,NULL,NULL,NULL,2),(506,'Merchants of Amsterdam','','','40.00',175,NULL,NULL,NULL,2),(507,'Metro','','','35.00',176,NULL,NULL,NULL,2),(508,'Mexica','','','38.00',177,NULL,NULL,NULL,2),(509,'Midgard','','','40.00',178,NULL,NULL,NULL,2),(510,'Modern Art','','','25.00',179,NULL,NULL,NULL,2),(511,'Motown-Opoly','','','31.50',180,NULL,NULL,NULL,2),(512,'Motown-Opoly','','','25.00',181,NULL,NULL,NULL,2),(513,'Motown-Opoly','Exp. 2: Unatural Axe','','18.00',182,NULL,NULL,NULL,2),(514,'Motown-Opoly','Exp. 2: Munchkin Fu','','18.00',183,NULL,NULL,NULL,2),(515,'Motown-Opoly','Exp. 3: Clerical Errors','','18.00',184,NULL,NULL,NULL,2),(516,'Motown-Opoly','Exp. 4: The Need for Steed','','18.00',185,NULL,NULL,NULL,2),(517,'Motown-Opoly','Exp. 5: De-ranged','','18.00',186,NULL,NULL,NULL,2),(518,'Munchkin Bites','','','25.00',187,NULL,NULL,NULL,2),(519,'Munchkin Blender','','','17.00',188,NULL,NULL,NULL,2),(520,'Munchkin Cthulhu','','','25.00',189,NULL,NULL,NULL,2),(521,'Munchkin Impossible','','','25.00',190,NULL,NULL,NULL,2),(522,'Mystery of the Abbey','','','50.00',191,NULL,NULL,NULL,2),(523,'Niagara','','','45.00',192,NULL,NULL,NULL,2),(524,'Nippon Rails','','','25.00',193,NULL,NULL,NULL,2),(525,'Notre Dame','','','40.00',194,NULL,NULL,NULL,2),(526,'Nuclear Escalation','','','30.00',195,NULL,NULL,NULL,2),(527,'Nuclear Proliferation','','','30.00',196,NULL,NULL,NULL,2),(528,'Nuclear War','','','30.00',197,NULL,NULL,NULL,2),(529,'O Zoo le Mio','','','33.00',198,NULL,NULL,NULL,2),(530,'One False Step for Mankind','','','7.50',199,NULL,NULL,NULL,2),(531,'Ostia','','','25.00',200,NULL,NULL,NULL,2),(532,'Owner\'s Choice','','','30.00',201,NULL,NULL,NULL,2),(533,'Parthenon','','','50.00',202,NULL,NULL,NULL,2),(534,'Pecking Order','','','24.00',203,NULL,NULL,NULL,2),(535,'Perikles','','','62.00',204,NULL,NULL,NULL,2),(536,'Phoenicia','','','50.00',205,NULL,NULL,NULL,2),(537,'Pillars of the Earth','','','49.00',206,NULL,NULL,NULL,2),(538,'Pirate’s Cove','','','54.00',207,NULL,NULL,NULL,2),(539,'Pizarro & Co.','','','25.00',208,NULL,NULL,NULL,2),(540,'Ponte Vechio','','','44.00',209,NULL,NULL,NULL,2),(541,'Power Grid','','','45.00',210,NULL,NULL,NULL,2),(542,'Power Grid','Power Grid Exp. Bene/CenEuro','','15.00',211,NULL,NULL,NULL,2),(543,'Power Grid','Power Grid Exp. France/Italy','','15.00',212,NULL,NULL,NULL,2),(544,'Primordial Soup','','','50.00',213,NULL,NULL,NULL,2),(545,'Princes of Florence, The','','','40.00',214,NULL,NULL,NULL,2),(546,'Puerto Rico','','','40.00',215,NULL,NULL,NULL,2),(547,'Puerto Rico','Puerto Rico Expansion','','5.00',216,NULL,NULL,NULL,2),(548,'Putsch','','','44.00',217,NULL,NULL,NULL,2),(549,'Quo Vadis? Caesar’s Roman Senate','','','35.00',218,NULL,NULL,NULL,2),(550,'Ra','','','35.00',219,NULL,NULL,NULL,2),(551,'Redneck Life','','','28.00',220,NULL,NULL,NULL,2),(552,'Relationship Tight Rope','','','15.00',221,NULL,NULL,NULL,2),(553,'Reiner Knizia’s Through The Desert','','','30.00',222,NULL,NULL,NULL,2),(554,'Reiner Knizia’s Colossal Arena','','','20.00',223,NULL,NULL,NULL,2),(555,'Reiner Knizia’s Ingenious','','','35.00',224,NULL,NULL,NULL,2),(556,'Reiner Knizia’s Ingenious Travel Edition','','','20.00',225,NULL,NULL,NULL,2),(557,'Revolution','','','85.00',226,NULL,NULL,NULL,2),(558,'Rheinlander','','','50.00',227,NULL,NULL,NULL,2),(559,'Ricochet Robots','','','25.00',228,NULL,NULL,NULL,2),(560,'Robber Knights','','','25.00',229,NULL,NULL,NULL,2),(561,'Robo Rally','','','53.00',230,NULL,NULL,NULL,2),(562,'Roma','','','25.00',231,NULL,NULL,NULL,2),(563,'Runebound','','','51.00',232,NULL,NULL,NULL,2),(564,'Ruse & Bruise','','','25.00',233,NULL,NULL,NULL,2),(565,'Russian Rails','','','38.00',234,NULL,NULL,NULL,2),(566,'San Juan','','','25.00',235,NULL,NULL,NULL,2),(567,'Saint Petersburg','','','28.00',236,NULL,NULL,NULL,2),(568,'Samurai','','','40.00',237,NULL,NULL,NULL,2),(569,'Sante Fe Rails','','','45.00',238,NULL,NULL,NULL,2),(570,'Save Doctor Lucky','','','7.50',239,NULL,NULL,NULL,2),(571,'The Scepter of Zarvander','','','50.00',240,NULL,NULL,NULL,2),(572,'Secret Tijuana Deathmatch','','','7.50',241,NULL,NULL,NULL,2),(573,'Seismic','','','30.00',242,NULL,NULL,NULL,2),(574,'Settler’s of Catan','','','38.00',243,NULL,NULL,NULL,2),(575,'Settler’s of Catan','Seafarers of Catan Expansion','','38.00',244,NULL,NULL,NULL,2),(576,'Settler’s of Catan','Cities & Knights of Catan Expansion','','38.00',245,NULL,NULL,NULL,2),(577,'Settler’s of Catan','Settlers of Catan 5 & 6 Player Exp.','','20.00',246,NULL,NULL,NULL,2),(578,'Settler’s of Catan','Seafarers of Catan 5 & 6 Player Exp','','20.00',247,NULL,NULL,NULL,2),(579,'Settler’s of Catan','Cities & Knights of Catan','','20.00',248,NULL,NULL,NULL,2),(580,'Settler’s of Catan','5 & 6 Player Exp.','','20.00',249,NULL,NULL,NULL,2),(581,'Settler’s of Catan','Settlers of Catan Travel Edition','','25.00',250,NULL,NULL,NULL,2),(582,'Settler’s of Catan','10th Anniversary Settlers of Catan 3-D Special Limited Edition Treasure Chest Set','','380.00',251,NULL,NULL,NULL,2),(583,'Settler’s of Catan','Catan Card Game','','20.00',252,NULL,NULL,NULL,2),(584,'Settler’s of Catan','Card Game Expansions 2nd Edition','','20.00',253,NULL,NULL,NULL,2),(585,'Settler’s of Catan','Candamir The First Settlers','','49.00',254,NULL,NULL,NULL,2),(586,'Settler’s of Catan','Elasund – The First City of Catan','','49.00',255,NULL,NULL,NULL,2),(587,'Settler’s of Catan','Kids of Catan','','49.00',256,NULL,NULL,NULL,2),(588,'Settler’s of Catan','Settlers of the Stone Age','','49.00',257,NULL,NULL,NULL,2),(589,'Settler’s of Catan','Struggle for Rome','','49.00',258,NULL,NULL,NULL,2),(590,'Settler’s of Catan','Starfarers of Catan','','60.00',259,NULL,NULL,NULL,2),(591,'Settler’s of Catan','Starfarers of Catan 5-6 Player Exp.','','30.00',260,NULL,NULL,NULL,2),(592,'Settler’s of Catan','Starship Catan 2 Player Game','','30.00',261,NULL,NULL,NULL,2),(593,'Shadows Over Camelot','','','53.00',262,NULL,NULL,NULL,2),(594,'Shear Panic','','','30.00',263,NULL,NULL,NULL,2),(595,'Shogun','','','65.00',264,NULL,NULL,NULL,2),(596,'Siena','','','50.00',265,NULL,NULL,NULL,2),(597,'Silkroad','','','50.00',266,NULL,NULL,NULL,2),(598,'Snits Revenge','','','20.00',267,NULL,NULL,NULL,2),(599,'Spree! Classic Edition','','','3.50',268,NULL,NULL,NULL,2),(600,'Star Munchkin','','','25.00',269,NULL,NULL,NULL,2),(601,'Star Munchkin','Clown Wars','','17.00',270,NULL,NULL,NULL,2),(602,'Stonehenge','','','50.00',271,NULL,NULL,NULL,2),(603,'Stock X Change','','','37.00',272,NULL,NULL,NULL,2),(604,'Street Car','','','30.00',273,NULL,NULL,NULL,2),(605,'Super Munchkin','','','25.00',274,NULL,NULL,NULL,2),(606,'Taj Mahal','','','40.00',275,NULL,NULL,NULL,2),(607,'Taluva','','','30.00',276,NULL,NULL,NULL,2),(608,'Tamsk','','','50.00',277,NULL,NULL,NULL,2),(609,'Techno Witches','','','25.00',278,NULL,NULL,NULL,2),(610,'Tempus','','','55.00',279,NULL,NULL,NULL,2),(611,'Terra Nova','','','31.00',280,NULL,NULL,NULL,2),(612,'That’s Life','','','30.00',281,NULL,NULL,NULL,2),(613,'Thebes','','','50.00',282,NULL,NULL,NULL,2),(614,'Thief of Baghdad, The','','','35.00',283,NULL,NULL,NULL,2),(615,'Through the Desert','','','31.00',284,NULL,NULL,NULL,2),(616,'Thurn and Taxis','','','33.00',285,NULL,NULL,NULL,2),(617,'Thurn and Taxis','Thurn and Taxis Expansion','','25.00',286,NULL,NULL,NULL,2),(618,'Ticket to Ride','','','43.00',287,NULL,NULL,NULL,2),(619,'Ticket to Ride','Ticket to Ride: USA 1910 Expansion','','16.00',288,NULL,NULL,NULL,2),(620,'Ticket to Ride: Europe','','','48.00',289,NULL,NULL,NULL,2),(621,'Ticket to Ride: Marklin Edition','','','48.00',290,NULL,NULL,NULL,2),(622,'Tide of Iron','','','80.00',291,NULL,NULL,NULL,2),(623,'Tigris & Euphrates','','','50.00',292,NULL,NULL,NULL,2),(624,'Tikal','','','45.00',293,NULL,NULL,NULL,2),(625,'Time Pirates','','','33.00',294,NULL,NULL,NULL,2),(626,'To Court the King','','','30.00',295,NULL,NULL,NULL,2),(627,'Tombouctou','','','50.00',296,NULL,NULL,NULL,2),(628,'Torres','','','40.00',297,NULL,NULL,NULL,2),(629,'Tower of Babel','','','35.00',298,NULL,NULL,NULL,2),(630,'Traders of Genoa, The','','','40.00',299,NULL,NULL,NULL,2),(631,'Trans America','','','28.00',300,NULL,NULL,NULL,2),(632,'Trans Europa','','','28.00',301,NULL,NULL,NULL,2),(633,'Trump, Tricks, Game','','','13.00',302,NULL,NULL,NULL,2),(634,'Twilight Imperium 3rd Edition','','','80.00',303,NULL,NULL,NULL,2),(635,'Twilight Imperium 3rd Edition','3rd Edition Shatted Empire Expansion','','50.00',304,NULL,NULL,NULL,2),(636,'Tyrus','','','40.00',305,NULL,NULL,NULL,2),(637,'Unexploded Cow','','','7.50',306,NULL,NULL,NULL,2),(638,'Ur','','','40.00',307,NULL,NULL,NULL,2),(639,'Vampire','','','35.00',308,NULL,NULL,NULL,2),(640,'Vikings','','','35.00',309,NULL,NULL,NULL,2),(641,'VisualEyes','','','25.00',310,NULL,NULL,NULL,2),(642,'War of the Ring','','','68.00',311,NULL,NULL,NULL,2),(643,'Warcraft: The Board Game','','','40.00',312,NULL,NULL,NULL,2),(644,'Warcraft Expansion','','','35.00',313,NULL,NULL,NULL,2),(645,'Warrior Knights','','','52.00',314,NULL,NULL,NULL,2),(646,'Wicked Witches Way','','','30.00',315,NULL,NULL,NULL,2),(647,'Wine-Opoly','','','26.50',316,NULL,NULL,NULL,2),(648,'Winner\'s Circle','','','35.00',317,NULL,NULL,NULL,2),(649,'World of Warcraft','The Board Game','','82.00',318,NULL,NULL,NULL,2),(650,'World of Warcraft','World of Warcraft Exp: Shadow of War','','25.00',319,NULL,NULL,NULL,2),(651,'Yinsh','','','33.00',320,NULL,NULL,NULL,2),(652,'Ys','','','45.00',321,NULL,NULL,NULL,2),(653,'Yspahan','','','50.00',322,NULL,NULL,NULL,2),(654,'Zertz','','','33.00',323,NULL,NULL,NULL,2),(655,'Zombies','','','28.00',324,NULL,NULL,NULL,2),(656,'Zombies','Expansion #2','','15.00',325,NULL,NULL,NULL,2),(657,'Zombies','Exp. #3','','15.00',326,NULL,NULL,NULL,2),(658,'Zombies','Exp. #3.5','','10.00',327,NULL,NULL,NULL,2),(659,'Zombies','Exp. #4','','25.00',328,NULL,NULL,NULL,2),(660,'Zombies','Exp. #6','','15.00',329,NULL,NULL,NULL,2),(661,'Zombie Town','','','40.00',330,NULL,NULL,NULL,2),(662,'Zooloretto','','','45.00',331,NULL,NULL,NULL,2),(663,'Bang!','','','10.00',1,NULL,NULL,NULL,9),(664,'Dodge City Exp.','','','10.00',25,NULL,NULL,NULL,9),(665,'Barnyard Critters','','','12.00',3,NULL,NULL,NULL,9),(666,'Bohnanza','','','17.50',45,NULL,NULL,NULL,9),(667,'-Bohnaparte','','','15.00',55,NULL,NULL,NULL,9),(668,'Caylus Magna Carta','','','30.00',65,NULL,NULL,NULL,9),(669,'Citadels Card Game','','','20.00',75,NULL,NULL,NULL,9),(670,'Citadels: Dark City Expansion','','','9.00',85,NULL,NULL,NULL,9),(671,'Coloretto','','','12.00',95,NULL,NULL,NULL,9),(672,'Corsari','','','12.00',10,NULL,NULL,NULL,9),(673,'Chrononauts','','','20.00',11,NULL,NULL,NULL,9),(674,'EcoFluxx','','','12.00',12,NULL,NULL,NULL,9),(675,'Family Business','','','10.00',13,NULL,NULL,NULL,9),(676,'Family Fluxx','','','8.00',14,NULL,NULL,NULL,9),(677,'FBI','','','13.00',15,NULL,NULL,NULL,9),(678,'Fluxx','','','12.00',16,NULL,NULL,NULL,9),(679,'Fluxx Espanola','','','8.00',17,NULL,NULL,NULL,9),(680,'Frank’s Zoo','','','12.00',18,NULL,NULL,NULL,9),(681,'Gloom','','','25.00',19,NULL,NULL,NULL,9),(682,'INKOGNITO The Card Game','','','20.00',20,NULL,NULL,NULL,9),(683,'Jungle Speed','','','20.00',21,NULL,NULL,NULL,9),(684,'King’s Breakfast','','','12.00',22,NULL,NULL,NULL,9),(685,'Lunch Money','','','20.00',23,NULL,NULL,NULL,9),(686,'Lunch Money: Sticks & Stones','','','10.00',24,NULL,NULL,NULL,9),(687,'Lupus in Tabula','','','10.00',25,NULL,NULL,NULL,9),(688,'Mamma Mia!','','','12.00',26,NULL,NULL,NULL,9),(689,'Mu & More','','','12.00',27,NULL,NULL,NULL,9),(690,'Once Upon a Time','','','21.00',28,NULL,NULL,NULL,9),(691,'Pick Picknic','','','17.50',29,NULL,NULL,NULL,9),(692,'Poison','','','15.00',30,NULL,NULL,NULL,9),(693,'San Juan','','','25.00',31,NULL,NULL,NULL,9),(694,'Too Many Cooks','','','13.00',32,NULL,NULL,NULL,9),(695,'Werewolves of Miller’s Hollow, The','','','10.00',33,NULL,NULL,NULL,9),(696,'Who’s the Ass?','','','13.00',34,NULL,NULL,NULL,9),(697,'Wyatt Earp','','','23.00',35,NULL,NULL,NULL,9),(698,'Babel','','','65.00',1,NULL,NULL,NULL,10),(699,'Balloon Cup','','','23.00',25,NULL,NULL,NULL,10),(700,'Caesar & Cleopatra','','','23.00',3,NULL,NULL,NULL,10),(701,'Hellas','','','23.00',45,NULL,NULL,NULL,10),(702,'Hera & Zeus','','','23.00',55,NULL,NULL,NULL,10),(703,'Kahuna','','','23.00',65,NULL,NULL,NULL,10),(704,'Lost Cities','','','23.00',75,NULL,NULL,NULL,10),(705,'Medici vs. Strozzi','','','23.00',85,NULL,NULL,NULL,10),(706,'Odin’s Ravens','','','23.00',95,NULL,NULL,NULL,10),(707,'Tally Ho!','','','23.00',10,NULL,NULL,NULL,10),(708,'Times Square','','','23.00',11,NULL,NULL,NULL,10);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2007-12-04 21:00:19
