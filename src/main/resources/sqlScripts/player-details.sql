--
-- Table structure for Player Profile Details--
--
USE `stallionc_cricket_club`;

DROP TABLE IF EXISTS `player_profile`;


CREATE TABLE `player_profile` (
  `playersSk` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `born_place` varchar(50) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `batting_style` varchar(50) NOT NULL,
  `bowling_style` varchar(50) NOT NULL,   
  `player_role` varchar(10) NOT NULL,
  `personal_contact_email_id` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `is_player_active` tinyint(1) NOT NULL,
  `image_path` varchar(5) NOT NULL, 
  
  PRIMARY KEY (`playersSk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for Player Login Tracker--
--

DROP TABLE IF EXISTS `player_login_tracker`;
CREATE TABLE `player_login_tracker` (
  `player_name` varchar(50) NOT NULL,
  `last_visit_date` datetime NOT NULL,
   `playersSk` int(11) NOT NULL,
  CONSTRAINT `player_profile_ibfk_1` FOREIGN KEY (`playersSk`) REFERENCES `player_profile` (`playersSk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

