DROP TABLE IF EXISTS `nflp_schedule`;
CREATE TABLE `nflp_schedule` (
  `gameID` int(11) NOT NULL AUTO_INCREMENT,
  `weekNum` int(11) NOT NULL,
  `gameTimeEastern` datetime DEFAULT NULL,
  `homeID` varchar(10) NOT NULL,
  `homeScore` int(11) DEFAULT NULL,
  `visitorID` varchar(10) NOT NULL,
  `visitorScore` int(11) DEFAULT NULL,
  `overtime` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`gameID`),
  KEY `GameID` (`gameID`),
  KEY `HomeID` (`homeID`),
  KEY `VisitorID` (`visitorID`)
) ENGINE=MyISAM AUTO_INCREMENT=273 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
INSERT INTO nflp_schedule VALUES(1,1,"2021-09-09 20:20:00","TB",0,"DAL",0,0);
INSERT INTO nflp_schedule VALUES(2,1,"2021-09-12 13:00:00","TEN",0,"ARI",0,0);
INSERT INTO nflp_schedule VALUES(3,1,"2021-09-12 13:00:00","HOU",0,"JAX",0,0);
INSERT INTO nflp_schedule VALUES(4,1,"2021-09-12 13:00:00","WAS",0,"LAC",0,0);
INSERT INTO nflp_schedule VALUES(5,1,"2021-09-12 13:00:00","CIN",0,"MIN",0,0);
INSERT INTO nflp_schedule VALUES(6,1,"2021-09-12 13:00:00","CAR",0,"NYJ",0,0);
INSERT INTO nflp_schedule VALUES(7,1,"2021-09-12 13:00:00","ATL",0,"PHI",0,0);
INSERT INTO nflp_schedule VALUES(8,1,"2021-09-12 13:00:00","BUF",0,"PIT",0,0);
INSERT INTO nflp_schedule VALUES(9,1,"2021-09-12 13:00:00","DET",0,"SF",0,0);
INSERT INTO nflp_schedule VALUES(10,1,"2021-09-12 13:00:00","IND",0,"SEA",0,0);
INSERT INTO nflp_schedule VALUES(11,1,"2021-09-12 16:25:00","KC",0,"CLE",0,0);
INSERT INTO nflp_schedule VALUES(12,1,"2021-09-12 16:25:00","NYG",0,"DEN",0,0);
INSERT INTO nflp_schedule VALUES(13,1,"2021-09-12 16:25:00","NO",0,"GB",0,0);
INSERT INTO nflp_schedule VALUES(14,1,"2021-09-12 16:25:00","NE",0,"MIA",0,0);
INSERT INTO nflp_schedule VALUES(15,1,"2021-09-12 20:20:00","LAR",0,"CHI",0,0);
INSERT INTO nflp_schedule VALUES(16,1,"2021-09-13 20:15:00","OAK",0,"BAL",0,0);
INSERT INTO nflp_schedule VALUES(17,2,"2021-09-16 20:20:00","WAS",0,"NYG",0,0);
INSERT INTO nflp_schedule VALUES(18,2,"2021-09-19 13:00:00","MIA",0,"BUF",0,0);
INSERT INTO nflp_schedule VALUES(19,2,"2021-09-19 13:00:00","CHI",0,"CIN",0,0);
INSERT INTO nflp_schedule VALUES(20,2,"2021-09-19 13:00:00","JAX",0,"DEN",0,0);
INSERT INTO nflp_schedule VALUES(21,2,"2021-09-19 13:00:00","CLE",0,"HOU",0,0);
INSERT INTO nflp_schedule VALUES(22,2,"2021-09-19 13:00:00","PIT",0,"OAK",0,0);
INSERT INTO nflp_schedule VALUES(23,2,"2021-09-19 13:00:00","IND",0,"LAR",0,0);
INSERT INTO nflp_schedule VALUES(24,2,"2021-09-19 13:00:00","NYJ",0,"NE",0,0);
INSERT INTO nflp_schedule VALUES(25,2,"2021-09-19 13:00:00","CAR",0,"NO",0,0);
INSERT INTO nflp_schedule VALUES(26,2,"2021-09-19 13:00:00","PHI",0,"SF",0,0);
INSERT INTO nflp_schedule VALUES(27,2,"2021-09-19 16:05:00","TB",0,"ATL",0,0);
INSERT INTO nflp_schedule VALUES(28,2,"2021-09-19 16:05:00","ARI",0,"MIN",0,0);
INSERT INTO nflp_schedule VALUES(29,2,"2021-09-19 16:25:00","LAC",0,"DAL",0,0);
INSERT INTO nflp_schedule VALUES(30,2,"2021-09-19 16:25:00","SEA",0,"TEN",0,0);
INSERT INTO nflp_schedule VALUES(31,2,"2021-09-19 20:20:00","BAL",0,"KC",0,0);
INSERT INTO nflp_schedule VALUES(32,2,"2021-09-20 20:15:00","GB",0,"DET",0,0);
INSERT INTO nflp_schedule VALUES(33,3,"2021-09-23 20:20:00","HOU",0,"CAR",0,0);
INSERT INTO nflp_schedule VALUES(34,3,"2021-09-26 13:00:00","JAX",0,"ARI",0,0);
INSERT INTO nflp_schedule VALUES(35,3,"2021-09-26 13:00:00","NYG",0,"ATL",0,0);
INSERT INTO nflp_schedule VALUES(36,3,"2021-09-26 13:00:00","DET",0,"BAL",0,0);
INSERT INTO nflp_schedule VALUES(37,3,"2021-09-26 13:00:00","CLE",0,"CHI",0,0);
INSERT INTO nflp_schedule VALUES(38,3,"2021-09-26 13:00:00","PIT",0,"CIN",0,0);
INSERT INTO nflp_schedule VALUES(39,3,"2021-09-26 13:00:00","TEN",0,"IND",0,0);
INSERT INTO nflp_schedule VALUES(40,3,"2021-09-26 13:00:00","KC",0,"LAC",0,0);
INSERT INTO nflp_schedule VALUES(41,3,"2021-09-26 13:00:00","NE",0,"NO",0,0);
INSERT INTO nflp_schedule VALUES(42,3,"2021-09-26 13:00:00","BUF",0,"WAS",0,0);
INSERT INTO nflp_schedule VALUES(43,3,"2021-09-26 16:05:00","OAK",0,"MIA",0,0);
INSERT INTO nflp_schedule VALUES(44,3,"2021-09-26 16:05:00","DEN",0,"NYJ",0,0);
INSERT INTO nflp_schedule VALUES(45,3,"2021-09-26 16:25:00","MIN",0,"SEA",0,0);
INSERT INTO nflp_schedule VALUES(46,3,"2021-09-26 16:25:00","LAR",0,"TB",0,0);
INSERT INTO nflp_schedule VALUES(47,3,"2021-09-26 20:20:00","SF",0,"GB",0,0);
INSERT INTO nflp_schedule VALUES(48,3,"2021-09-27 20:15:00","DAL",0,"PHI",0,0);
INSERT INTO nflp_schedule VALUES(49,4,"2021-09-30 20:20:00","CIN",0,"JAX",0,0);
INSERT INTO nflp_schedule VALUES(50,4,"2021-10-03 13:00:00","DAL",0,"CAR",0,0);
INSERT INTO nflp_schedule VALUES(51,4,"2021-10-03 13:00:00","MIN",0,"CLE",0,0);
INSERT INTO nflp_schedule VALUES(52,4,"2021-10-03 13:00:00","CHI",0,"DET",0,0);
INSERT INTO nflp_schedule VALUES(53,4,"2021-10-03 13:00:00","BUF",0,"HOU",0,0);
INSERT INTO nflp_schedule VALUES(54,4,"2021-10-03 13:00:00","MIA",0,"IND",0,0);
INSERT INTO nflp_schedule VALUES(55,4,"2021-10-03 13:00:00","PHI",0,"KC",0,0);
INSERT INTO nflp_schedule VALUES(56,4,"2021-10-03 13:00:00","NO",0,"NYG",0,0);
INSERT INTO nflp_schedule VALUES(57,4,"2021-10-03 13:00:00","NYJ",0,"TEN",0,0);
INSERT INTO nflp_schedule VALUES(58,4,"2021-10-03 13:00:00","ATL",0,"WAS",0,0);
INSERT INTO nflp_schedule VALUES(59,4,"2021-10-03 16:05:00","LAR",0,"ARI",0,0);
INSERT INTO nflp_schedule VALUES(60,4,"2021-10-03 16:05:00","SF",0,"SEA",0,0);
INSERT INTO nflp_schedule VALUES(61,4,"2021-10-03 16:25:00","DEN",0,"BAL",0,0);
INSERT INTO nflp_schedule VALUES(62,4,"2021-10-03 16:25:00","GB",0,"PIT",0,0);
INSERT INTO nflp_schedule VALUES(63,4,"2021-10-03 20:20:00","NE",0,"TB",0,0);
INSERT INTO nflp_schedule VALUES(64,4,"2021-10-04 20:15:00","LAC",0,"OAK",0,0);
INSERT INTO nflp_schedule VALUES(65,5,"2021-10-07 20:20:00","SEA",0,"LAR",0,0);
INSERT INTO nflp_schedule VALUES(66,5,"2021-10-10 09:30:00","ATL",0,"NYJ",0,0);
INSERT INTO nflp_schedule VALUES(67,5,"2021-10-10 13:00:00","PIT",0,"DEN",0,0);
INSERT INTO nflp_schedule VALUES(68,5,"2021-10-10 13:00:00","MIN",0,"DET",0,0);
INSERT INTO nflp_schedule VALUES(69,5,"2021-10-10 13:00:00","CIN",0,"GB",0,0);
INSERT INTO nflp_schedule VALUES(70,5,"2021-10-10 13:00:00","TB",0,"MIA",0,0);
INSERT INTO nflp_schedule VALUES(71,5,"2021-10-10 13:00:00","HOU",0,"NE",0,0);
INSERT INTO nflp_schedule VALUES(72,5,"2021-10-10 13:00:00","WAS",0,"NO",0,0);
INSERT INTO nflp_schedule VALUES(73,5,"2021-10-10 13:00:00","CAR",0,"PHI",0,0);
INSERT INTO nflp_schedule VALUES(74,5,"2021-10-10 13:00:00","JAX",0,"TEN",0,0);
INSERT INTO nflp_schedule VALUES(75,5,"2021-10-10 16:05:00","OAK",0,"CHI",0,0);
INSERT INTO nflp_schedule VALUES(76,5,"2021-10-10 16:05:00","LAC",0,"CLE",0,0);
INSERT INTO nflp_schedule VALUES(77,5,"2021-10-10 16:25:00","DAL",0,"NYG",0,0);
INSERT INTO nflp_schedule VALUES(78,5,"2021-10-10 16:25:00","ARI",0,"SF",0,0);
INSERT INTO nflp_schedule VALUES(79,5,"2021-10-10 20:20:00","KC",0,"BUF",0,0);
INSERT INTO nflp_schedule VALUES(80,5,"2021-10-11 20:15:00","BAL",0,"IND",0,0);
INSERT INTO nflp_schedule VALUES(81,6,"2021-10-14 20:20:00","PHI",0,"TB",0,0);
INSERT INTO nflp_schedule VALUES(82,6,"2021-10-17 09:30:00","JAX",0,"MIA",0,0);
INSERT INTO nflp_schedule VALUES(83,6,"2021-10-17 13:00:00","DET",0,"CIN",0,0);
INSERT INTO nflp_schedule VALUES(84,6,"2021-10-17 13:00:00","CHI",0,"GB",0,0);
INSERT INTO nflp_schedule VALUES(85,6,"2021-10-17 13:00:00","IND",0,"HOU",0,0);
INSERT INTO nflp_schedule VALUES(86,6,"2021-10-17 13:00:00","WAS",0,"KC",0,0);
INSERT INTO nflp_schedule VALUES(87,6,"2021-10-17 13:00:00","BAL",0,"LAC",0,0);
INSERT INTO nflp_schedule VALUES(88,6,"2021-10-17 13:00:00","NYG",0,"LAR",0,0);
INSERT INTO nflp_schedule VALUES(89,6,"2021-10-17 13:00:00","CAR",0,"MIN",0,0);
INSERT INTO nflp_schedule VALUES(90,6,"2021-10-17 16:05:00","CLE",0,"ARI",0,0);
INSERT INTO nflp_schedule VALUES(91,6,"2021-10-17 16:25:00","NE",0,"DAL",0,0);
INSERT INTO nflp_schedule VALUES(92,6,"2021-10-17 16:25:00","DEN",0,"OAK",0,0);
INSERT INTO nflp_schedule VALUES(93,6,"2021-10-17 20:20:00","PIT",0,"SEA",0,0);
INSERT INTO nflp_schedule VALUES(94,6,"2021-10-18 20:15:00","TEN",0,"BUF",0,0);
INSERT INTO nflp_schedule VALUES(95,7,"2021-10-21 20:20:00","CLE",0,"DEN",0,0);
INSERT INTO nflp_schedule VALUES(96,7,"2021-10-24 13:00:00","MIA",0,"ATL",0,0);
INSERT INTO nflp_schedule VALUES(97,7,"2021-10-24 13:00:00","NYG",0,"CAR",0,0);
INSERT INTO nflp_schedule VALUES(98,7,"2021-10-24 13:00:00","BAL",0,"CIN",0,0);
INSERT INTO nflp_schedule VALUES(99,7,"2021-10-24 13:00:00","TEN",0,"KC",0,0);
INSERT INTO nflp_schedule VALUES(100,7,"2021-10-24 13:00:00","NE",0,"NYJ",0,0);
INSERT INTO nflp_schedule VALUES(101,7,"2021-10-24 13:00:00","GB",0,"WAS",0,0);
INSERT INTO nflp_schedule VALUES(102,7,"2021-10-24 16:05:00","LAR",0,"DET",0,0);
INSERT INTO nflp_schedule VALUES(103,7,"2021-10-24 16:05:00","OAK",0,"PHI",0,0);
INSERT INTO nflp_schedule VALUES(104,7,"2021-10-24 16:25:00","TB",0,"CHI",0,0);
INSERT INTO nflp_schedule VALUES(105,7,"2021-10-24 16:25:00","ARI",0,"HOU",0,0);
INSERT INTO nflp_schedule VALUES(106,7,"2021-10-24 20:20:00","SF",0,"IND",0,0);
INSERT INTO nflp_schedule VALUES(107,7,"2021-10-25 20:15:00","SEA",0,"NO",0,0);
INSERT INTO nflp_schedule VALUES(108,8,"2021-10-28 20:20:00","ARI",0,"GB",0,0);
INSERT INTO nflp_schedule VALUES(109,8,"2021-10-31 13:00:00","ATL",0,"CAR",0,0);
INSERT INTO nflp_schedule VALUES(110,8,"2021-10-31 13:00:00","NYJ",0,"CIN",0,0);
INSERT INTO nflp_schedule VALUES(111,8,"2021-10-31 13:00:00","HOU",0,"LAR",0,0);
INSERT INTO nflp_schedule VALUES(112,8,"2021-10-31 13:00:00","BUF",0,"MIA",0,0);
INSERT INTO nflp_schedule VALUES(113,8,"2021-10-31 13:00:00","DET",0,"PHI",0,0);
INSERT INTO nflp_schedule VALUES(114,8,"2021-10-31 13:00:00","CLE",0,"PIT",0,0);
INSERT INTO nflp_schedule VALUES(115,8,"2021-10-31 13:00:00","CHI",0,"SF",0,0);
INSERT INTO nflp_schedule VALUES(116,8,"2021-10-31 13:00:00","IND",0,"TEN",0,0);
INSERT INTO nflp_schedule VALUES(117,8,"2021-10-31 16:05:00","SEA",0,"JAX",0,0);
INSERT INTO nflp_schedule VALUES(118,8,"2021-10-31 16:05:00","LAC",0,"NE",0,0);
INSERT INTO nflp_schedule VALUES(119,8,"2021-10-31 16:25:00","NO",0,"TB",0,0);
INSERT INTO nflp_schedule VALUES(120,8,"2021-10-31 16:25:00","DEN",0,"WAS",0,0);
INSERT INTO nflp_schedule VALUES(121,8,"2021-10-31 20:20:00","MIN",0,"DAL",0,0);
INSERT INTO nflp_schedule VALUES(122,8,"2021-11-01 20:15:00","KC",0,"NYG",0,0);
INSERT INTO nflp_schedule VALUES(123,9,"2021-11-04 20:20:00","IND",0,"NYJ",0,0);
INSERT INTO nflp_schedule VALUES(124,9,"2021-11-07 13:00:00","NO",0,"ATL",0,0);
INSERT INTO nflp_schedule VALUES(125,9,"2021-11-07 13:00:00","JAX",0,"BUF",0,0);
INSERT INTO nflp_schedule VALUES(126,9,"2021-11-07 13:00:00","CIN",0,"CLE",0,0);
INSERT INTO nflp_schedule VALUES(127,9,"2021-11-07 13:00:00","DAL",0,"DEN",0,0);
INSERT INTO nflp_schedule VALUES(128,9,"2021-11-07 13:00:00","MIA",0,"HOU",0,0);
INSERT INTO nflp_schedule VALUES(129,9,"2021-11-07 13:00:00","NYG",0,"OAK",0,0);
INSERT INTO nflp_schedule VALUES(130,9,"2021-11-07 13:00:00","BAL",0,"MIN",0,0);
INSERT INTO nflp_schedule VALUES(131,9,"2021-11-07 13:00:00","CAR",0,"NE",0,0);
INSERT INTO nflp_schedule VALUES(132,9,"2021-11-07 16:05:00","PHI",0,"LAC",0,0);
INSERT INTO nflp_schedule VALUES(133,9,"2021-11-07 16:25:00","SF",0,"ARI",0,0);
INSERT INTO nflp_schedule VALUES(134,9,"2021-11-07 16:25:00","KC",0,"GB",0,0);
INSERT INTO nflp_schedule VALUES(135,9,"2021-11-07 20:20:00","LAR",0,"TEN",0,0);
INSERT INTO nflp_schedule VALUES(136,9,"2021-11-08 20:15:00","PIT",0,"CHI",0,0);
INSERT INTO nflp_schedule VALUES(137,10,"2021-11-11 20:20:00","MIA",0,"BAL",0,0);
INSERT INTO nflp_schedule VALUES(138,10,"2021-11-14 13:00:00","DAL",0,"ATL",0,0);
INSERT INTO nflp_schedule VALUES(139,10,"2021-11-14 13:00:00","NYJ",0,"BUF",0,0);
INSERT INTO nflp_schedule VALUES(140,10,"2021-11-14 13:00:00","NE",0,"CLE",0,0);
INSERT INTO nflp_schedule VALUES(141,10,"2021-11-14 13:00:00","PIT",0,"DET",0,0);
INSERT INTO nflp_schedule VALUES(142,10,"2021-11-14 13:00:00","IND",0,"JAX",0,0);
INSERT INTO nflp_schedule VALUES(143,10,"2021-11-14 13:00:00","TEN",0,"NO",0,0);
INSERT INTO nflp_schedule VALUES(144,10,"2021-11-14 13:00:00","WAS",0,"TB",0,0);
INSERT INTO nflp_schedule VALUES(145,10,"2021-11-14 16:05:00","ARI",0,"CAR",0,0);
INSERT INTO nflp_schedule VALUES(146,10,"2021-11-14 16:05:00","LAC",0,"MIN",0,0);
INSERT INTO nflp_schedule VALUES(147,10,"2021-11-14 16:25:00","DEN",0,"PHI",0,0);
INSERT INTO nflp_schedule VALUES(148,10,"2021-11-14 16:25:00","GB",0,"SEA",0,0);
INSERT INTO nflp_schedule VALUES(149,10,"2021-11-14 20:20:00","OAK",0,"KC",0,0);
INSERT INTO nflp_schedule VALUES(150,10,"2021-11-15 20:15:00","SF",0,"LAR",0,0);
INSERT INTO nflp_schedule VALUES(151,11,"2021-11-18 20:20:00","ATL",0,"NE",0,0);
INSERT INTO nflp_schedule VALUES(152,11,"2021-11-21 13:00:00","CHI",0,"BAL",0,0);
INSERT INTO nflp_schedule VALUES(153,11,"2021-11-21 13:00:00","CLE",0,"DET",0,0);
INSERT INTO nflp_schedule VALUES(154,11,"2021-11-21 13:00:00","MIN",0,"GB",0,0);
INSERT INTO nflp_schedule VALUES(155,11,"2021-11-21 13:00:00","TEN",0,"HOU",0,0);
INSERT INTO nflp_schedule VALUES(156,11,"2021-11-21 13:00:00","BUF",0,"IND",0,0);
INSERT INTO nflp_schedule VALUES(157,11,"2021-11-21 13:00:00","NYJ",0,"MIA",0,0);
INSERT INTO nflp_schedule VALUES(158,11,"2021-11-21 13:00:00","PHI",0,"NO",0,0);
INSERT INTO nflp_schedule VALUES(159,11,"2021-11-21 13:00:00","JAX",0,"SF",0,0);
INSERT INTO nflp_schedule VALUES(160,11,"2021-11-21 13:00:00","CAR",0,"WAS",0,0);
INSERT INTO nflp_schedule VALUES(161,11,"2021-11-21 16:05:00","OAK",0,"CIN",0,0);
INSERT INTO nflp_schedule VALUES(162,11,"2021-11-21 16:25:00","SEA",0,"ARI",0,0);
INSERT INTO nflp_schedule VALUES(163,11,"2021-11-21 16:25:00","KC",0,"DAL",0,0);
INSERT INTO nflp_schedule VALUES(164,11,"2021-11-21 20:20:00","LAC",0,"PIT",0,0);
INSERT INTO nflp_schedule VALUES(165,11,"2021-11-22 20:15:00","TB",0,"NYG",0,0);
INSERT INTO nflp_schedule VALUES(166,12,"2021-11-25 12:30:00","DET",0,"CHI",0,0);
INSERT INTO nflp_schedule VALUES(167,12,"2021-11-25 16:30:00","DAL",0,"OAK",0,0);
INSERT INTO nflp_schedule VALUES(168,12,"2021-11-25 20:20:00","NO",0,"BUF",0,0);
INSERT INTO nflp_schedule VALUES(169,12,"2021-11-28 13:00:00","JAX",0,"ATL",0,0);
INSERT INTO nflp_schedule VALUES(170,12,"2021-11-28 13:00:00","MIA",0,"CAR",0,0);
INSERT INTO nflp_schedule VALUES(171,12,"2021-11-28 13:00:00","HOU",0,"NYJ",0,0);
INSERT INTO nflp_schedule VALUES(172,12,"2021-11-28 13:00:00","NYG",0,"PHI",0,0);
INSERT INTO nflp_schedule VALUES(173,12,"2021-11-28 13:00:00","CIN",0,"PIT",0,0);
INSERT INTO nflp_schedule VALUES(174,12,"2021-11-28 13:00:00","IND",0,"TB",0,0);
INSERT INTO nflp_schedule VALUES(175,12,"2021-11-28 13:00:00","NE",0,"TEN",0,0);
INSERT INTO nflp_schedule VALUES(176,12,"2021-11-28 16:05:00","DEN",0,"LAC",0,0);
INSERT INTO nflp_schedule VALUES(177,12,"2021-11-28 16:25:00","GB",0,"LAR",0,0);
INSERT INTO nflp_schedule VALUES(178,12,"2021-11-28 16:25:00","SF",0,"MIN",0,0);
INSERT INTO nflp_schedule VALUES(179,12,"2021-11-28 20:20:00","BAL",0,"CLE",0,0);
INSERT INTO nflp_schedule VALUES(180,12,"2021-11-29 20:15:00","WAS",0,"SEA",0,0);
INSERT INTO nflp_schedule VALUES(181,13,"2021-12-02 20:20:00","NO",0,"DAL",0,0);
INSERT INTO nflp_schedule VALUES(182,13,"2021-12-05 13:00:00","CHI",0,"ARI",0,0);
INSERT INTO nflp_schedule VALUES(183,13,"2021-12-05 13:00:00","KC",0,"DEN",0,0);
INSERT INTO nflp_schedule VALUES(184,13,"2021-12-05 13:00:00","HOU",0,"IND",0,0);
INSERT INTO nflp_schedule VALUES(185,13,"2021-12-05 13:00:00","CIN",0,"LAC",0,0);
INSERT INTO nflp_schedule VALUES(186,13,"2021-12-05 13:00:00","DET",0,"MIN",0,0);
INSERT INTO nflp_schedule VALUES(187,13,"2021-12-05 13:00:00","MIA",0,"NYG",0,0);
INSERT INTO nflp_schedule VALUES(188,13,"2021-12-05 13:00:00","NYJ",0,"PHI",0,0);
INSERT INTO nflp_schedule VALUES(189,13,"2021-12-05 13:00:00","ATL",0,"TB",0,0);
INSERT INTO nflp_schedule VALUES(190,13,"2021-12-05 16:05:00","OAK",0,"WAS",0,0);
INSERT INTO nflp_schedule VALUES(191,13,"2021-12-05 16:25:00","PIT",0,"BAL",0,0);
INSERT INTO nflp_schedule VALUES(192,13,"2021-12-05 16:25:00","LAR",0,"JAX",0,0);
INSERT INTO nflp_schedule VALUES(193,13,"2021-12-05 20:20:00","SEA",0,"SF",0,0);
INSERT INTO nflp_schedule VALUES(194,13,"2021-12-06 20:15:00","BUF",0,"NE",0,0);
INSERT INTO nflp_schedule VALUES(195,14,"2021-12-09 20:20:00","MIN",0,"PIT",0,0);
INSERT INTO nflp_schedule VALUES(196,14,"2021-12-12 13:00:00","CAR",0,"ATL",0,0);
INSERT INTO nflp_schedule VALUES(197,14,"2021-12-12 13:00:00","CLE",0,"BAL",0,0);
INSERT INTO nflp_schedule VALUES(198,14,"2021-12-12 13:00:00","WAS",0,"DAL",0,0);
INSERT INTO nflp_schedule VALUES(199,14,"2021-12-12 13:00:00","TEN",0,"JAX",0,0);
INSERT INTO nflp_schedule VALUES(200,14,"2021-12-12 13:00:00","KC",0,"OAK",0,0);
INSERT INTO nflp_schedule VALUES(201,14,"2021-12-12 13:00:00","NYJ",0,"NO",0,0);
INSERT INTO nflp_schedule VALUES(202,14,"2021-12-12 13:00:00","CIN",0,"SF",0,0);
INSERT INTO nflp_schedule VALUES(203,14,"2021-12-12 13:00:00","HOU",0,"SEA",0,0);
INSERT INTO nflp_schedule VALUES(204,14,"2021-12-12 16:05:00","DEN",0,"DET",0,0);
INSERT INTO nflp_schedule VALUES(205,14,"2021-12-12 16:05:00","LAC",0,"NYG",0,0);
INSERT INTO nflp_schedule VALUES(206,14,"2021-12-12 16:25:00","TB",0,"BUF",0,0);
INSERT INTO nflp_schedule VALUES(207,14,"2021-12-12 20:20:00","GB",0,"CHI",0,0);
INSERT INTO nflp_schedule VALUES(208,14,"2021-12-13 20:15:00","ARI",0,"LAR",0,0);
INSERT INTO nflp_schedule VALUES(209,15,"2021-12-16 20:20:00","LAC",0,"KC",0,0);
INSERT INTO nflp_schedule VALUES(210,15,"2021-12-19 13:00:00","DET",0,"ARI",0,0);
INSERT INTO nflp_schedule VALUES(211,15,"2021-12-19 13:00:00","BUF",0,"CAR",0,0);
INSERT INTO nflp_schedule VALUES(212,15,"2021-12-19 13:00:00","NYG",0,"DAL",0,0);
INSERT INTO nflp_schedule VALUES(213,15,"2021-12-19 13:00:00","BAL",0,"GB",0,0);
INSERT INTO nflp_schedule VALUES(214,15,"2021-12-19 13:00:00","JAX",0,"HOU",0,0);
INSERT INTO nflp_schedule VALUES(215,15,"2021-12-19 13:00:00","CLE",0,"OAK",0,0);
INSERT INTO nflp_schedule VALUES(216,15,"2021-12-19 13:00:00","IND",0,"NE",0,0);
INSERT INTO nflp_schedule VALUES(217,15,"2021-12-19 13:00:00","MIA",0,"NYJ",0,0);
INSERT INTO nflp_schedule VALUES(218,15,"2021-12-19 13:00:00","PIT",0,"TEN",0,0);
INSERT INTO nflp_schedule VALUES(219,15,"2021-12-19 13:00:00","PHI",0,"WAS",0,0);
INSERT INTO nflp_schedule VALUES(220,15,"2021-12-19 16:05:00","SF",0,"ATL",0,0);
INSERT INTO nflp_schedule VALUES(221,15,"2021-12-19 16:05:00","DEN",0,"CIN",0,0);
INSERT INTO nflp_schedule VALUES(222,15,"2021-12-19 16:25:00","LAR",0,"SEA",0,0);
INSERT INTO nflp_schedule VALUES(223,15,"2021-12-19 20:20:00","TB",0,"NO",0,0);
INSERT INTO nflp_schedule VALUES(224,15,"2021-12-20 20:15:00","CHI",0,"MIN",0,0);
INSERT INTO nflp_schedule VALUES(225,16,"2021-12-23 20:20:00","TEN",0,"SF",0,0);
INSERT INTO nflp_schedule VALUES(226,16,"2021-12-25 16:30:00","GB",0,"CLE",0,0);
INSERT INTO nflp_schedule VALUES(227,16,"2021-12-25 20:15:00","ARI",0,"IND",0,0);
INSERT INTO nflp_schedule VALUES(228,16,"2021-12-26 13:00:00","CIN",0,"BAL",0,0);
INSERT INTO nflp_schedule VALUES(229,16,"2021-12-26 13:00:00","NE",0,"BUF",0,0);
INSERT INTO nflp_schedule VALUES(230,16,"2021-12-26 13:00:00","ATL",0,"DET",0,0);
INSERT INTO nflp_schedule VALUES(231,16,"2021-12-26 13:00:00","NYJ",0,"JAX",0,0);
INSERT INTO nflp_schedule VALUES(232,16,"2021-12-26 13:00:00","HOU",0,"LAC",0,0);
INSERT INTO nflp_schedule VALUES(233,16,"2021-12-26 13:00:00","MIN",0,"LAR",0,0);
INSERT INTO nflp_schedule VALUES(234,16,"2021-12-26 13:00:00","PHI",0,"NYG",0,0);
INSERT INTO nflp_schedule VALUES(235,16,"2021-12-26 13:00:00","CAR",0,"TB",0,0);
INSERT INTO nflp_schedule VALUES(236,16,"2021-12-26 16:05:00","SEA",0,"CHI",0,0);
INSERT INTO nflp_schedule VALUES(237,16,"2021-12-26 16:25:00","OAK",0,"DEN",0,0);
INSERT INTO nflp_schedule VALUES(238,16,"2021-12-26 16:25:00","KC",0,"PIT",0,0);
INSERT INTO nflp_schedule VALUES(239,16,"2021-12-26 20:20:00","DAL",0,"WAS",0,0);
INSERT INTO nflp_schedule VALUES(240,16,"2021-12-27 20:15:00","NO",0,"MIA",0,0);
INSERT INTO nflp_schedule VALUES(241,17,"2022-01-02 13:00:00","DAL",0,"ARI",0,0);
INSERT INTO nflp_schedule VALUES(242,17,"2022-01-02 13:00:00","BUF",0,"ATL",0,0);
INSERT INTO nflp_schedule VALUES(243,17,"2022-01-02 13:00:00","NO",0,"CAR",0,0);
INSERT INTO nflp_schedule VALUES(244,17,"2022-01-02 13:00:00","NE",0,"JAX",0,0);
INSERT INTO nflp_schedule VALUES(245,17,"2022-01-02 13:00:00","CIN",0,"KC",0,0);
INSERT INTO nflp_schedule VALUES(246,17,"2022-01-02 13:00:00","IND",0,"OAK",0,0);
INSERT INTO nflp_schedule VALUES(247,17,"2022-01-02 13:00:00","TEN",0,"MIA",0,0);
INSERT INTO nflp_schedule VALUES(248,17,"2022-01-02 13:00:00","CHI",0,"NYG",0,0);
INSERT INTO nflp_schedule VALUES(249,17,"2022-01-02 13:00:00","WAS",0,"PHI",0,0);
INSERT INTO nflp_schedule VALUES(250,17,"2022-01-02 13:00:00","NYJ",0,"TB",0,0);
INSERT INTO nflp_schedule VALUES(251,17,"2022-01-02 16:05:00","LAC",0,"DEN",0,0);
INSERT INTO nflp_schedule VALUES(252,17,"2022-01-02 16:05:00","SF",0,"HOU",0,0);
INSERT INTO nflp_schedule VALUES(253,17,"2022-01-02 16:25:00","SEA",0,"DET",0,0);
INSERT INTO nflp_schedule VALUES(254,17,"2022-01-02 16:25:00","BAL",0,"LAR",0,0);
INSERT INTO nflp_schedule VALUES(255,17,"2022-01-02 20:20:00","GB",0,"MIN",0,0);
INSERT INTO nflp_schedule VALUES(256,17,"2022-01-03 20:15:00","PIT",0,"CLE",0,0);
INSERT INTO nflp_schedule VALUES(257,18,"2022-01-09 13:00:00","TB",0,"CAR",0,0);
INSERT INTO nflp_schedule VALUES(258,18,"2022-01-09 13:00:00","MIN",0,"CHI",0,0);
INSERT INTO nflp_schedule VALUES(259,18,"2022-01-09 13:00:00","CLE",0,"CIN",0,0);
INSERT INTO nflp_schedule VALUES(260,18,"2022-01-09 13:00:00","PHI",0,"DAL",0,0);
INSERT INTO nflp_schedule VALUES(261,18,"2022-01-09 13:00:00","DET",0,"GB",0,0);
INSERT INTO nflp_schedule VALUES(262,18,"2022-01-09 13:00:00","JAX",0,"IND",0,0);
INSERT INTO nflp_schedule VALUES(263,18,"2022-01-09 13:00:00","MIA",0,"NE",0,0);
INSERT INTO nflp_schedule VALUES(264,18,"2022-01-09 13:00:00","ATL",0,"NO",0,0);
INSERT INTO nflp_schedule VALUES(265,18,"2022-01-09 13:00:00","BUF",0,"NYJ",0,0);
INSERT INTO nflp_schedule VALUES(266,18,"2022-01-09 13:00:00","BAL",0,"PIT",0,0);
INSERT INTO nflp_schedule VALUES(267,18,"2022-01-09 13:00:00","HOU",0,"TEN",0,0);
INSERT INTO nflp_schedule VALUES(268,18,"2022-01-09 13:00:00","NYG",0,"WAS",0,0);
INSERT INTO nflp_schedule VALUES(269,18,"2022-01-09 16:25:00","DEN",0,"KC",0,0);
INSERT INTO nflp_schedule VALUES(270,18,"2022-01-09 16:25:00","OAK",0,"LAC",0,0);
INSERT INTO nflp_schedule VALUES(271,18,"2022-01-09 16:25:00","LAR",0,"SF",0,0);
INSERT INTO nflp_schedule VALUES(272,18,"2022-01-09 16:25:00","ARI",0,"SEA",0,0);

