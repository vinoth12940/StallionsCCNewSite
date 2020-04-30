--
-- Table structure for Match Details--
--
USE `stallionc_cricket_club`;

DROP TABLE IF EXISTS `match_detail`;


CREATE TABLE `match_detail` (
  `match_id` varchar(50) NOT NULL,
  `tournament_id` varchar(50) NOT NULL,
  `opponent_team_name` varchar(50) NOT NULL,
  `match_date` date NOT NULL,
  `is_tournament_match` tinyint(1) NOT NULL,
  `ground_name` varchar(50) NOT NULL,
  `match_type` varchar(50) NOT NULL,
  `match_overs` varchar(50) NOT NULL,   
  `stallions_match_result` varchar(10) NOT NULL,
  `match_result` varchar(200) NOT NULL,
  `is_toss_stallions` tinyint(1) NOT NULL,
  `batting_first` varchar(50) NOT NULL,
  `is_mom_stallions` char(1) NOT NULL,
  `mom_player_name` varchar(50) NOT NULL,
  `stallions_total_runs` varchar(5) NOT NULL,
  `stallions_total_wickets` int(5) NOT NULL,
  `stallions_total_overs` float(5) NOT NULL,
  `opponent_total_runs` int(10) NOT NULL,
  `opponent_total_wickets` int(5) NOT NULL,
  `opponent_total_overs` float(5) NOT NULL,
  
  PRIMARY KEY (`match_id`),
  CONSTRAINT `match_detail_ibfk_1` FOREIGN KEY (`tournament_id`) REFERENCES `tournament_detail` (`tournament_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;