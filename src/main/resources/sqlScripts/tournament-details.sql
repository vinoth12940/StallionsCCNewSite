--
-- Table structure for Tournamnet Details--
--
USE `stallionc_cricket_club`;

DROP TABLE IF EXISTS `tournament_detail`;
CREATE TABLE `tournament_detail` (
  `tournament_id` varchar(50) NOT NULL,
  `tournament_name` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `no_of_matches` int NOT NULL,
  `match_format` int NOT NULL,
  `organiser_name` varchar(50) NOT NULL,
  `organiser_contact` varchar(50),   
  PRIMARY KEY (`tournament_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
