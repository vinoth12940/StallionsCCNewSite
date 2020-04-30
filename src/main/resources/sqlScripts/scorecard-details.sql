--
-- Table structure for Score card Details--
--
-- Stallions Score Card --
--
USE `stallionc_cricket_club`;

DROP TABLE IF EXISTS `stallions_scorecard`;


CREATE TABLE `stallions_scorecard` (
  `score_card_id` int(11) NOT NULL,
  `tournament_id` varchar(50) NOT NULL,
  `playersSk` int(11) NOT NULL,
  `match_id` varchar(50) NOT NULL,
  `player_name` varchar(50) NOT NULL, 
  `player_role` varchar(50) NOT NULL,
  `is_rested` tinyint(1) NOT NULL,
  `comments` varchar(500) NOT NULL,
  `batting_runs_scored` int(5),
  `batting_balls_faced` int(5),
  `batting_fours` int(5),   
  `batting_six` int(5),
  `batting_how_out` varchar(50),
  `batting_fielder_name` varchar(50),
  `batting_Wicket_by_Bowler` varchar(15) ,
  `batting_order_of_Wicket` int(5) ,
  `batting_fall_of_Wicket` varchar(5) , 
  `batting_wicket_on_over` float(5) ,
  `bowling_spell_order` int(5) ,
  `bowling_over` float(5) ,
  `bowling_maiden` int(5),
  `bowling_wicket` int(5),
  `bowling_runs_conceded` int(5),
  `bowling_wides` int(5),
  `bowling_no_balls` int(5),
  `fielding_catches_taken` int(5),
  `fielding_catches_dropped` int(5),
  `fielding_total_catches` int(5),
  `fielding_WK_catches` int(5),
  `fielding_WK_stumped` int(5),
  `extras_byes` int(5),
  `extras_leg_byes` int(5),
  `extras_total_wides` int(5),
  `extras_no_balls` int(5),
  `stallions_total` int(5),
  `match_key_note` varchar(5000),  
  PRIMARY KEY (`score_card_id`),
CONSTRAINT `stallions_scorecard_ibfk_1` FOREIGN KEY (`tournament_id`) REFERENCES `tournament_detail` (`tournament_id`),
CONSTRAINT `stallions_scorecard_ibfk_2` FOREIGN KEY (`playersSk`) REFERENCES `player_profile` (`playersSk`),
CONSTRAINT `stallions_scorecard_ibfk_3` FOREIGN KEY (`match_id`) REFERENCES `match_detail` (`match_id`)  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Opponent Score Card --
--
DROP TABLE IF EXISTS `opponent_scorecard`;

CREATE TABLE `opponent_scorecard` (
  `score_card_id` int(11) NOT NULL,
  `tournament_id` varchar(50) NOT NULL,
  `match_id` varchar(50) NOT NULL,
  `player_name` varchar(50) NOT NULL, 
  `player_role` varchar(50) NOT NULL,
  `batting_runs_scored` int(5),
  `batting_balls_faced` int(5),
  `batting_fours` int(5),   
  `batting_six` int(5),
  `batting_how_out` varchar(50),
  `batting_fielder_name` varchar(50),
  `batting_Wicket_by_Bowler` varchar(15) ,
  `batting_order_of_Wicket` int(5) ,
  `batting_fall_of_Wicket` varchar(5) , 
  `batting_wicket_on_over` float(5) ,
  `bowling_spell_order` int(5) ,
  `bowling_over` float(5) ,
  `bowling_maiden` int(5),
  `bowling_wicket` int(5),
  `bowling_runs_conceded` int(5),
  `bowling_wides` int(5),
  `bowling_no_balls` int(5),
  `fielding_catches_taken` int(5),
  `fielding_catches_dropped` int(5),
  `fielding_total_catches` int(5),
  `fielding_WK_catches` int(5),
  `fielding_WK_stumped` int(5),
  `extras_byes` int(5),
  `extras_leg_byes` int(5),
  `extras_total_wides` int(5),
  `extras_no_balls` int(5),
  `opponent_total` int(5),
  `match_key_note` varchar(5000),  
  CONSTRAINT `opponent_scorecard_ibfk_1` FOREIGN KEY (`tournament_id`) REFERENCES `tournament_detail` (`tournament_id`),
  CONSTRAINT `opponent_scorecard_ibfk_2` FOREIGN KEY (`score_card_id`) REFERENCES `stallions_scorecard` (`score_card_id`),
  CONSTRAINT `opponent_scorecard_ibfk_3` FOREIGN KEY (`match_id`) REFERENCES `match_detail` (`match_id`)  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;