--Tested on MySQL

CREATE TABLE "AlbumTrack"
(
    "rid" INT() NOT NULL PRIMARY KEY,
    "cat#" CHAR(80)  NOT NULL PRIMARY KEY,
    "sid" INT() NOT NULL PRIMARY KEY,
    "trackno" INT(),
);

INSERT INTO AlbumTrack VALUES ('1','UL 1868-2','1','5');
INSERT INTO AlbumTrack VALUES ('1','UL 1868-2','2','7');
INSERT INTO AlbumTrack VALUES ('1','UL 1868-2','3','8');
INSERT INTO AlbumTrack VALUES ('1','UL 1868-2','4','9');
INSERT INTO AlbumTrack VALUES ('1','MAU5RAT','1','5');
INSERT INTO AlbumTrack VALUES ('1','MAU5RAT','2','7');
INSERT INTO AlbumTrack VALUES ('1','MAU5RAT','3','8');
INSERT INTO AlbumTrack VALUES ('1','MAU5RAT','4','9');

CREATE TABLE "Song"
(
    "sid" INT() NOT NULL PRIMARY KEY,
    "stitle" CHAR(80),
    "duration" INT(),
    "remixof" INT(),
    "artist" INT()
);

INSERT INTO Song VALUES ('1','Brazil (2nd Edit)','323','NULL','1');
INSERT INTO Song VALUES ('2','I Remember','548','NULL','1');
INSERT INTO Song VALUES ('3','Faxing Berlin (Piano Acoustica Version','105','4','1');
INSERT INTO Song VALUES ('1','Faxing Berlin','150','NULL','1');

CREATE TABLE "Rerelease"
(
    "catno" CHAR(80),
    "rid" INT(),
    "upc" CHAR(12),
    "label" INT(),
    "year" INT(),
    "medium" CHAR(80),
);

INSERT INTO Rerelease VALUES ('UL 1868-5','1','617465186820','1','2008','CD');
INSERT INTO Rerelease VALUES ('MAU5RAT','1',NULL,'2','2016','Web');

CREATE TABLE "Label"
(
    "lid" INT() NOT NULL PRIMARY KEY,
    "lname" CHAR(80),
    "labbr" CHAR(80),
);

INSERT INTO Label VALUES ('1','Ultra Records','UL');
INSERT INTO Label VALUES ('2','mauStrap','MAU');

CREATE TABLE "Release"
(
    "rid" INT() NOT NULL PRIMARY KEY,
    "rtitle" CHAR(80),
    "year" INT(),
    "aid" INT(),
);

INSERT INTO Release VALUES ('1','Random Album Title.','2008','1');

CREATE TABLE "Artist"
(
    "aid" CHAR(90) NOT NULL PRIMARY KEY,
    "aname" CHAR(80),
);

INSERT INTO Artist VALUES ('1','deadmau5');

SELECT * FROM AlbumTrack;
SELECT * FROM Song;
SELECT * FROM Release;
SELECT * FROM Rerelease;
SELECT * FROM Label;
SELECT * FROM Artist;      

SELECT stitle FROM Song INNER JOIN Song.sid = AlbumTrack.sid AND AlbumTrack.cat# = Rerelease.cat# AND Rerelease.year > 2008;
SELECT title FROM AlbumTrack WHERE AlbumTrack.cat# = Rerelease.cat# AND SELECT year from Rerelease WHERE Rerelease.cat# = AlbumTrack.cat# AND SELECT COUNT(sid) from AlbumTrack WHERE AlbumTrack.cat# = Rerelease.cat#;
SELECT SUM(duration) AND SELECT stitle FROM Song AND SELECT cat# from AlbumTrack WHERE Song.sid = AlbumTrack.sid AND AlbumTrack.cat# = Rerelease.cat#;
SELECT stitle, duration FROM Song AND SELECT aname FROM Artist WHERE Song.remixof = Song.sid AND Song.sid = AlbumTrack.sid AND AlbumTrack.rid = Rerelease.rid AND Rerelease.rid = Artist.rid;

SELECT * FROM AlbumTrack;
SELECT * FROM Song;
SELECT * FROM Release;
SELECT * FROM Rerelease;
SELECT * FROM Label;
SELECT * FROM Artist;