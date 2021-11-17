BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Famille" (
	"id_famille"	INTEGER,
	"nom"	VARCHAR(255) NOT NULL,
	PRIMARY KEY("id_famille" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Reco" (
	"id_reco"	INTEGER AUTO_INCREMENT,
	"nom"	VARCHAR(255),
	"id_famille"	INT NOT NULL,
	PRIMARY KEY("id_reco"),
	FOREIGN KEY("id_famille") REFERENCES "Famille"("id_famille")
);
CREATE TABLE IF NOT EXISTS "critere" (
	"id_critere"	INTEGER AUTO_INCREMENT,
	"planet"	CHAR(1) NOT NULL,
	"people"	CHAR(1),
	"prosperity"	CHAR(1),
	"thematique"	VARCHAR(50),
	"precision_reco"	VARCHAR(50),
	"critere"	VARCHAR(255),
	"justification"	VARCHAR(255),
	"test_1"	VARCHAR(255),
	"test_2"	VARCHAR(255),
	"test_3"	VARCHAR(255),
	"type"	VARCHAR(50),
	"difficulte"	VARCHAR(3),
	"commentaire"	VARCHAR(255),
	"is_incontournable"	LOGICAL,
	"cycle_de_vie"	VARCHAR(50),
	"tags"	VARCHAR(50),
	"acteurs"	VARCHAR(50),
	"indicateurs"	VARCHAR(50),
	"X_indicateur"	VARCHAR(50),
	"Y_indicateur"	VARCHAR(50),
	"prio"	VARCHAR(50),
	"recurrence"	VARCHAR(50),
	"use_case"	VARCHAR(255),
	"exemple"	VARCHAR(50),
	"limite"	VARCHAR(50),
	"id_reco"	INT NOT NULL,
	PRIMARY KEY("id_critere"),
	FOREIGN KEY("id_reco") REFERENCES "Reco"("id_reco")
);
CREATE TABLE IF NOT EXISTS "odd" (
	"id_odd"	INTEGER AUTO_INCREMENT,
	"nom"	VARCHAR(50),
	"description"	VARCHAR(255),
	PRIMARY KEY("id_odd")
);
CREATE TABLE IF NOT EXISTS "Asso_9" (
	"id_reco"	INT,
	"id_odd"	INT,
	FOREIGN KEY("id_odd") REFERENCES "odd"("id_odd"),
	FOREIGN KEY("id_reco") REFERENCES "Reco"("id_reco"),
	PRIMARY KEY("id_reco","id_odd")
);
COMMIT;
