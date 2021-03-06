Create TABLE `Ratings` (
	`idRatings` int NOT NULL Auto_Increment,
    `RestScore` int NOT NULL,
    `DriverScore` int NOT NULL,
    `driver_id` int(11) NOT NULL,
    `restaurant_id` int(11) NOT NULL,
    PRIMARY KEY(idRatings),
    KEY `fk_F_driver_id` (`driver_id`),
    KEY `fk_F_restaurant_id` (`restaurant_id`),
    CONSTRAINT `fk_F_driver_id` FOREIGN KEY(`driver_id`) REFERENCES `driver` (`driver_id`),
    CONSTRAINT `fk_F_restaurant` FOREIGN KEY(`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

INSERT INTO ratings (idRatings,RestScore,DriverScore,driver_id,restaurant_id) VALUES (1,10,7,4,11),(2,5,5,8,55),(3,10,5,5,48),(4,9,8,3,97),(5,2,5,7,77),(6,3,7,2,97),(7,10,2,1,17),(8,4,8,1,90),(9,6,6,1,79),(10,8,7,7,54);
INSERT INTO ratings (idRatings,RestScore,DriverScore,driver_id,restaurant_id) VALUES (11,9,4,7,15),(12,9,5,5,64),(13,9,9,2,69),(14,10,9,3,100),(15,10,4,1,83),(16,8,10,3,66),(17,5,10,4,16),(18,6,10,1,62),(19,3,10,5,94),(20,5,10,6,12);
INSERT INTO ratings (idRatings,RestScore,DriverScore,driver_id,restaurant_id) VALUES (21,2,9,3,7),(22,10,7,1,64),(23,9,7,4,64),(24,7,2,5,44),(25,2,2,7,8),(26,4,2,5,3),(27,4,3,2,75),(28,4,5,4,28),(29,2,7,2,17),(30,9,7,6,32);
INSERT INTO ratings (idRatings,RestScore,DriverScore,driver_id,restaurant_id) VALUES (31,4,4,3,55),(32,3,10,8,13),(33,10,3,5,24),(34,4,1,5,2),(35,2,1,2,49),(36,10,4,2,60),(37,1,2,6,59),(38,2,5,6,86),(39,4,3,3,87),(40,8,4,5,25);
INSERT INTO ratings (idRatings,RestScore,DriverScore,driver_id,restaurant_id) VALUES (41,10,1,3,99),(42,2,9,5,85),(43,2,4,7,77),(44,4,7,1,42),(45,7,4,1,59),(46,8,10,3,44),(47,1,6,3,20),(48,9,3,4,74),(49,3,3,5,59),(50,9,5,7,56);
INSERT INTO ratings (idRatings,RestScore,DriverScore,driver_id,restaurant_id) VALUES (51,6,10,4,21),(52,10,3,5,81),(53,9,10,6,96),(54,3,3,4,33),(55,3,4,2,64),(56,3,9,8,6),(57,3,6,3,79),(58,1,5,1,2),(59,8,10,6,67),(60,4,5,5,96);
INSERT INTO ratings (idRatings,RestScore,DriverScore,driver_id,restaurant_id) VALUES (61,10,8,7,86),(62,7,5,8,88),(63,10,9,2,57),(64,7,1,8,19),(65,9,3,1,4),(66,2,7,4,3),(67,5,9,8,22),(68,8,6,3,77),(69,1,8,4,96),(70,7,4,6,11);
INSERT INTO ratings (idRatings,RestScore,DriverScore,driver_id,restaurant_id) VALUES (71,2,10,1,58),(72,6,8,1,41),(73,6,4,5,69),(74,4,6,2,94),(75,4,7,4,34),(76,4,6,1,52),(77,4,1,1,85),(78,5,9,6,95),(79,9,6,2,24),(80,1,7,5,47);
INSERT INTO ratings (idRatings,RestScore,DriverScore,driver_id,restaurant_id) VALUES (81,8,9,6,50),(82,6,5,1,34),(83,8,10,7,17),(84,6,8,1,44),(85,10,9,7,82),(86,2,8,3,53),(87,10,2,1,71),(88,1,3,4,61),(89,5,1,7,92),(90,8,10,1,17);
INSERT INTO ratings (idRatings,RestScore,DriverScore,driver_id,restaurant_id) VALUES (91,2,6,1,82),(92,10,5,2,85),(93,2,5,3,24),(94,4,3,4,85),(95,6,4,1,3),(96,4,3,7,18),(97,5,7,6,41),(98,3,4,4,50),(99,10,10,6,52),(100,2,8,8,50);






