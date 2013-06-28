-- Dataabase expense_tracker

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `registered_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `transactions` (
  `txn_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_s` varchar(64) DEFAULT NULL,
  `user_d` varchar(64) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `desc` varchar(128) DEFAULT NULL,
  `comments` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`txn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
