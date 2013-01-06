PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE locations (
	id INTEGER NOT NULL, 
	name VARCHAR, 
	address TEXT, 
	scraper VARCHAR, 
	url VARCHAR, 
	availability_url TEXT, 
	PRIMARY KEY (id)
);
INSERT INTO "locations" VALUES(1,'Spandau Arcaden Scraper','','SpandauArcadenScraper','','http://www.spandau-arcaden.de/oeffnungszeiten.html');
INSERT INTO "locations" VALUES(2,'Wilmersdorfer Arcaden Scraper','','WilmersdorferArcadenScraper','','http://www.wilmersdorfer-arcaden.de/oeffnungszeiten.html');
INSERT INTO "locations" VALUES(3,'Neu Koelln Arcaden Scraper','','NeuKoellnArcadenScraper','','http://www.neukoelln-arcaden.de/oeffnungszeiten.html');
INSERT INTO "locations" VALUES(4,'Schoenhauser Allee Arcaden Scraper','','SchoenhauserAlleeArcadenScraper','','http://www.schoenhauser-allee-arcaden.de/oeffnungszeiten.html');
CREATE TABLE availabilities (
	id INTEGER NOT NULL, 
	location_id INTEGER, 
	opentime DATETIME, 
	closetime DATETIME, 
	PRIMARY KEY (id), 
	FOREIGN KEY(location_id) REFERENCES locations (id)
);
INSERT INTO "availabilities" VALUES(1,1,'2012-11-04 13:00:00.000000','2012-11-04 18:00:00.000000');
INSERT INTO "availabilities" VALUES(2,1,'2012-12-09 13:00:00.000000','2012-12-09 20:00:00.000000');
INSERT INTO "availabilities" VALUES(3,1,'2012-12-23 13:00:00.000000','2012-12-23 20:00:00.000000');
INSERT INTO "availabilities" VALUES(4,2,'2012-12-09 13:00:00.000000','2012-12-09 20:00:00.000000');
INSERT INTO "availabilities" VALUES(5,2,'2012-12-23 13:00:00.000000','2012-12-23 20:00:00.000000');
INSERT INTO "availabilities" VALUES(6,3,'2012-04-29 13:00:00.000000','2012-04-29 18:00:00.000000');
INSERT INTO "availabilities" VALUES(7,3,'2012-08-19 13:00:00.000000','2012-08-19 18:00:00.000000');
INSERT INTO "availabilities" VALUES(8,3,'2012-09-02 13:00:00.000000','2012-09-02 18:00:00.000000');
INSERT INTO "availabilities" VALUES(9,3,'2012-10-21 13:00:00.000000','2012-10-21 18:00:00.000000');
INSERT INTO "availabilities" VALUES(10,3,'2012-11-04 13:00:00.000000','2012-11-04 18:00:00.000000');
INSERT INTO "availabilities" VALUES(11,3,'2012-12-09 13:00:00.000000','2012-12-09 20:00:00.000000');
INSERT INTO "availabilities" VALUES(12,3,'2012-12-23 13:00:00.000000','2012-12-23 20:00:00.000000');
INSERT INTO "availabilities" VALUES(13,4,'2012-12-09 13:00:00.000000','2012-12-09 20:00:00.000000');
INSERT INTO "availabilities" VALUES(14,4,'2012-12-23 13:00:00.000000','2012-12-23 20:00:00.000000');
COMMIT;
