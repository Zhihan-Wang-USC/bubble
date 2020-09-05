-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `users`

CREATE TABLE `users`
(
 `username`     varchar(45) NOT NULL ,
 `userpassword` varchar(45) NOT NULL ,

PRIMARY KEY (`username`)
);






-- ************************************** `tags`

CREATE TABLE `tags`
(
 `tag` varchar(45) NOT NULL ,

PRIMARY KEY (`tag`)
);






-- ************************************** `tags_usernames`

CREATE TABLE `tags_usernames`
(
 `username` varchar(45) NOT NULL ,
 `tag`      varchar(45) NOT NULL ,

PRIMARY KEY (`username`, `tag`),
KEY `fkIdx_10` (`tag`),
CONSTRAINT `FK_10` FOREIGN KEY `fkIdx_10` (`tag`) REFERENCES `tags` (`tag`),
KEY `fkIdx_16` (`username`),
CONSTRAINT `FK_16` FOREIGN KEY `fkIdx_16` (`username`) REFERENCES `users` (`username`)
);






-- ************************************** `tags_connection`

CREATE TABLE `tags_connection`
(
 `tagcombined` varchar(45) NOT NULL ,
 `strength`    int NOT NULL ,
 `tag1`        varchar(45) NOT NULL ,
 `tag2`        varchar(45) NOT NULL ,

PRIMARY KEY (`tagcombined`),
KEY `fkIdx_32` (`tag1`),
CONSTRAINT `FK_32` FOREIGN KEY `fkIdx_32` (`tag1`) REFERENCES `tags` (`tag`),
KEY `fkIdx_35` (`tag2`),
CONSTRAINT `FK_35` FOREIGN KEY `fkIdx_35` (`tag2`) REFERENCES `tags` (`tag`)
);





