CREATE TABLE `hero table` (
  `hero_id` int NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Alias` varchar(50) NOT NULL,
  `Ability` varchar(50) DEFAULT NULL,
  `TeamID` int NOT NULL,
  PRIMARY KEY (`hero_id`),
  UNIQUE KEY `hero_id_UNIQUE` (`hero_id`),
  KEY `TeamID_idx` (`TeamID`),
  CONSTRAINT `TeamID` FOREIGN KEY (`TeamID`) REFERENCES `team` (`TeamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `team` (
  `TeamID` int NOT NULL,
  `TeamName` varchar(50) NOT NULL,
  `Objective` varchar(100) NOT NULL,
  KEY `Team ID_idx` (`TeamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

USE heroes;

INSERT INTO team (TeamName, Objective)
VALUES ('JLA','Protect the world'), 
	   ('JSA','Defeat the Nazis'), 
       ('Birds of Prey','Fight crime (without men)'), 
       ('Task Force X','Follow Waller\'s orders to die'), 
       ('Teen Titans','Teach young superheroes to be their best');

INSERT INTO hero (Firstname, Lastname, Alias, Ability, TeamID)
VALUES ('Bruce','Wayne','Batman','Martial Arts', 1),
	   ('Clark','Kent','Superman','Flight', 1),
	   ('Jay','Garrick','The Flash','Super-Speed', 2),
	   ('Alan','Scott','Green Lantern','Ring Creation', 2),
	   ('Dr Harleen','Quinzel','Harley Quinn','Hammer-Fighting', 3),
	   ('Floyd','Lawton','Deadshot','Marksmanship', 4),
	   ('Cecil','Adams','Count Vertigo','Induce dizziness', 4),
	   ('Damian','Wayne','Robin','Swordsmanship', 5),
	   ('Dick','Grayson','Nightwing','Acrobatics', 5);
       
UPDATE team
SET TeamName = 'Cohort 1', Objective = 'Learn a lot of stuff'
WHERE TeamID = 7;

