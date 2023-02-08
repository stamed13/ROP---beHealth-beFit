DROP DATABASE IF EXISTS rop_behealth_befit;

CREATE DATABASE rop_behealth_befit CHARACTER SET utf8 COLLATE utf8_slovak_ci;

USE rop_behealth_befit;

CREATE TABLE genders (
	idGender TINYINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(10) NOT NULL
) Engine = Innodb;

INSERT INTO genders (name) VALUES ("muž");
INSERT INTO genders (name) VALUES ("žena");

CREATE TABLE plans (
	idPlan INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    mon VARCHAR(40) NOT NULL,
    tue VARCHAR(40) NOT NULL,
    wed VARCHAR(40) NOT NULL,
    thu VARCHAR(40) NOT NULL,
    fri VARCHAR(40) NOT NULL,
    sat VARCHAR(40) NOT NULL,
    sun VARCHAR(40) NOT NULL
) Engine = Innodb;

CREATE TABLE advice (
	idAdvice INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(500) NOT NULL
) Engine = Innodb;

CREATE TABLE users (
	idUser INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(60) NOT NULL,
    passwd VARCHAR(60) NOT NULL,
    fname VARCHAR(20) NOT NULL,
    lname VARCHAR(40) NOT NULL,
    genderId TINYINT NOT NULL,
    age TINYINT NOT NULL,
    height INT NOT NULL,
    weight INT NOT NULL,
    planId INT NOT NULL,
    adviceId INT NOT NULL
) Engine = Innodb;

CREATE TABLE cathegories (
	idCathegory INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL
) Engine = Innodb;

INSERT INTO cathegories (name) VALUES ("kalistenika");
INSERT INTO cathegories (name) VALUES ("strečing");

CREATE TABLE parts (
	idPart INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cathegoryId INT NOT NULL,
    name VARCHAR(20) NOT NULL
) Engine = Innodb;

INSERT INTO parts (cathegoryId, name) VALUES (1, "príťah");
INSERT INTO parts (cathegoryId, name) VALUES (1, "tlak");
INSERT INTO parts (cathegoryId, name) VALUES (1, "nohy");
INSERT INTO parts (cathegoryId, name) VALUES (1, "brucho");
INSERT INTO parts (cathegoryId, name) VALUES (2, "krk");
INSERT INTO parts (cathegoryId, name) VALUES (2, "ruky");
INSERT INTO parts (cathegoryId, name) VALUES (2, "chrbát");
INSERT INTO parts (cathegoryId, name) VALUES (2, "nohy");

CREATE TABLE levels (
	idLevel INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(15) NOT NULL
) Engine = Innodb;

INSERT INTO levels (name) VALUES ("začiatočník");
INSERT INTO levels (name) VALUES ("pokročilí");
INSERT INTO levels (name) VALUES ("expert");

CREATE TABLE exercises (
	idExercise INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    partId INT NOT NULL,
    levelId INT NOT NULL,
    name VARCHAR(40) NOT NULL
) Engine = Innodb;

INSERT INTO exercises (partId, levelId, name) VALUES (1, 1, "aktívny vis");
INSERT INTO exercises (partId, levelId, name) VALUES (1, 1, "vytlacanie z ramien");
INSERT INTO exercises (partId, levelId, name) VALUES (1, 1, "negatívny zhyb nadhmat");
INSERT INTO exercises (partId, levelId, name) VALUES (1, 1, "izometria podhmat");
INSERT INTO exercises (partId, levelId, name) VALUES (1, 1, "izometria nadhmat");
INSERT INTO exercises (partId, levelId, name) VALUES (1, 1, "austrálsky zhyb");
INSERT INTO exercises (partId, levelId, name) VALUES (1, 2, "zhyb podhmat");
INSERT INTO exercises (partId, levelId, name) VALUES (1, 2, "zhyb nadhmat");
INSERT INTO exercises (partId, levelId, name) VALUES (1, 2, "austrálsky zhyb ťahší");
INSERT INTO exercises (partId, levelId, name) VALUES (1, 2, "tuck front lever výdrž");
INSERT INTO exercises (partId, levelId, name) VALUES (1, 2, "lopatkový zhyb, záklon");
INSERT INTO exercises (partId, levelId, name) VALUES (1, 2, "motýlik");
INSERT INTO exercises (partId, levelId, name) VALUES (1, 3, "zhyb na 1 ruke");
INSERT INTO exercises (partId, levelId, name) VALUES (1, 3, "L-zhyb");
INSERT INTO exercises (partId, levelId, name) VALUES (1, 3, "frontlever");
INSERT INTO exercises (partId, levelId, name) VALUES (1, 3, "backlever");
INSERT INTO exercises (partId, levelId, name) VALUES (1, 3, "lukostrelecký zhyb");
INSERT INTO exercises (partId, levelId, name) VALUES (1, 3, "false grip zhyb");

INSERT INTO exercises (partId, levelId, name) VALUES (2, 1, "lopatkový kľuk");
INSERT INTO exercises (partId, levelId, name) VALUES (2, 1, "kľuk na kolenách");
INSERT INTO exercises (partId, levelId, name) VALUES (2, 1, "kľuk na prekážke");
INSERT INTO exercises (partId, levelId, name) VALUES (2, 1, "negatívny kľuk");
INSERT INTO exercises (partId, levelId, name) VALUES (2, 1, "izometria v normálnom kľuku");
INSERT INTO exercises (partId, levelId, name) VALUES (2, 1, "dipy na stoličke");
INSERT INTO exercises (partId, levelId, name) VALUES (2, 2, "normálny kľuk");
INSERT INTO exercises (partId, levelId, name) VALUES (2, 2, "širší kľuk");
INSERT INTO exercises (partId, levelId, name) VALUES (2, 2, "kľuk z vyvýšeniny");
INSERT INTO exercises (partId, levelId, name) VALUES (2, 2, "diamantový kľuk");
INSERT INTO exercises (partId, levelId, name) VALUES (2, 2, "izometria v širšom kľuku");
INSERT INTO exercises (partId, levelId, name) VALUES (2, 2, "dipy");
INSERT INTO exercises (partId, levelId, name) VALUES (2, 3, "kľuk s tliesknutím");
INSERT INTO exercises (partId, levelId, name) VALUES (2, 3, "lukostrelecký kľuk");
INSERT INTO exercises (partId, levelId, name) VALUES (2, 3, "tuckpanche kľuk");
INSERT INTO exercises (partId, levelId, name) VALUES (2, 3, "dipy na kruhoch");
INSERT INTO exercises (partId, levelId, name) VALUES (2, 3, "tigrie kľuky");
INSERT INTO exercises (partId, levelId, name) VALUES (2, 3, "kľuk v stojke");

INSERT INTO exercises (partId, levelId, name) VALUES (3, 1, "drep s rukami vpred");
INSERT INTO exercises (partId, levelId, name) VALUES (3, 1, "drep s rukami za hlavou");
INSERT INTO exercises (partId, levelId, name) VALUES (3, 1, "sumo drep");
INSERT INTO exercises (partId, levelId, name) VALUES (3, 1, "úzky drep");
INSERT INTO exercises (partId, levelId, name) VALUES (3, 1, "skákavé výpady");
INSERT INTO exercises (partId, levelId, name) VALUES (3, 1, "drep výskok");
INSERT INTO exercises (partId, levelId, name) VALUES (3, 2, "drep na 1 nohe dotyk členkov");
INSERT INTO exercises (partId, levelId, name) VALUES (3, 2, "bulgarian split squats");
INSERT INTO exercises (partId, levelId, name) VALUES (3, 2, "záklon na kolenách");
INSERT INTO exercises (partId, levelId, name) VALUES (3, 2, "drep na 1 nohe s vystretou nohou");
INSERT INTO exercises (partId, levelId, name) VALUES (3, 2, "drep na 1 nohe s nohou na kolene");
INSERT INTO exercises (partId, levelId, name) VALUES (3, 2, "izometria v polohe stolička");
INSERT INTO exercises (partId, levelId, name) VALUES (3, 3, "drep na 1 nohe so záťažou");
INSERT INTO exercises (partId, levelId, name) VALUES (3, 3, "drep na 1 nohe s nohou vo flexe");
INSERT INTO exercises (partId, levelId, name) VALUES (3, 3, "drep na 1 nohe s rukami za chrbtom");
INSERT INTO exercises (partId, levelId, name) VALUES (3, 3, "skok na prekážku");
INSERT INTO exercises (partId, levelId, name) VALUES (3, 3, "drep na 1 nohe vo flexe a so záťažou");
INSERT INTO exercises (partId, levelId, name) VALUES (3, 3, "drep na 1 nohe vo flexe a s výskokom");

INSERT INTO exercises (partId, levelId, name) VALUES (4, 1, "skracovačky");
INSERT INTO exercises (partId, levelId, name) VALUES (4, 1, "dotýkanie členkov");
INSERT INTO exercises (partId, levelId, name) VALUES (4, 1, "sklápačky");
INSERT INTO exercises (partId, levelId, name) VALUES (4, 1, "quadrupedál");
INSERT INTO exercises (partId, levelId, name) VALUES (4, 1, "ruské otočky");
INSERT INTO exercises (partId, levelId, name) VALUES (4, 1, "plank na kolenách");
INSERT INTO exercises (partId, levelId, name) VALUES (4, 2, "kolíska");
INSERT INTO exercises (partId, levelId, name) VALUES (4, 2, "striedavé zdvihy nôh");
INSERT INTO exercises (partId, levelId, name) VALUES (4, 2, "horolezci");
INSERT INTO exercises (partId, levelId, name) VALUES (4, 2, "ruské otočky ťahšie");
INSERT INTO exercises (partId, levelId, name) VALUES (4, 2, "stierače");
INSERT INTO exercises (partId, levelId, name) VALUES (4, 2, "nožnice");
INSERT INTO exercises (partId, levelId, name) VALUES (4, 2, "izometria");
INSERT INTO exercises (partId, levelId, name) VALUES (4, 3, "dragon flag");
INSERT INTO exercises (partId, levelId, name) VALUES (4, 3, "vznos do 180°");
INSERT INTO exercises (partId, levelId, name) VALUES (4, 3, "stierače ťahšie");
INSERT INTO exercises (partId, levelId, name) VALUES (4, 3, "kolíska ťahšia");
INSERT INTO exercises (partId, levelId, name) VALUES (4, 3, "tlak panvy nad seba");

CREATE TABLE activities (
	idActivity INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    pullCa INT NOT NULL,
    pushCa INT NOT NULL,
    coreCa INT NOT NULL,
    legCa INT NOT NULL,
    neckSt INT NOT NULL,
	bicepsSt INT NOT NULL,
	tricepsSt INT NOT NULL,
	shoulderSt INT NOT NULL,
	wristSt INT NOT NULL,
    backSt INT NOT NULL,
    hamstringSt INT NOT NULL,
	calfSt INT NOT NULL,
	buttSt INT NOT NULL,
	attractorSt INT NOT NULL
) Engine = Innodb;

CREATE TABLE userActivity (
	idUsrAct BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	date DATE,
    userId INT NOT NULL,
	activityId INT NOT NULL,
    FOREIGN KEY (userId) REFERENCES users(idUser),
	FOREIGN KEY (activityId) REFERENCES activities(idActivity)
) Engine = Innodb;