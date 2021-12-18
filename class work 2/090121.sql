-- Here is the DDL to load the needed tables

DROP TABLE subs; 
DROP TABLE ships;
DROP TABLE bears;
DROP TABLE cubs;


CREATE TABLE Subs
(SUB_ID varchar2(5))
;

INSERT ALL
INTO Subs (SUB_ID) VALUES ('I-166')
INTO Subs (SUB_ID) VALUES ('I-176')
INTO Subs (SUB_ID) VALUES ('I-177')
INTO Subs (SUB_ID) VALUES ('I-180')
INTO Subs (SUB_ID) VALUES ('I-182')
SELECT * FROM dual
;

CREATE TABLE ships
(Ship varchar2(13), Country varchar2(2), SUB_ID varchar2(5))
;

INSERT ALL
INTO ships (Ship, Country, SUB_ID) VALUES ('SS Fingal', 'NL', 'I-180') 
INTO ships (Ship, Country, SUB_ID) VALUES ('AHS Centaur', 'AU', 'I-177') 
INTO ships (Ship, Country, SUB_ID) VALUES ('HNLMS K XVI', 'NL', 'I-166') 
INTO ships (Ship, Country, SUB_ID) VALUES ('USAT Liberty', 'US', 'I-166')
INTO ships (Ship, Country, SUB_ID) VALUES ('USS Seadragon', 'US', NULL)
SELECT * FROM dual
;


CREATE TABLE BEARS
    (Day date, Location varchar2(13), Opponent varchar2(7))
;

INSERT ALL 
    INTO BEARS (Day, Location, Opponent)
         VALUES ('11-Sep-2016 ', 'Houston, TX', 'Texans')
    INTO BEARS (Day, Location, Opponent)
         VALUES ('19-Sep-2016 ', 'Chicago, IL', 'Eagles')
    INTO BEARS (Day, Location, Opponent)
         VALUES ('25-Sep-2016 ', 'Arlington, TX', 'Cowboys')
    INTO BEARS (Day, Location, Opponent)
         VALUES ('02-Oct-2016 ', 'Chicago, IL', 'Lions')
SELECT * FROM dual
;

CREATE TABLE CUBS
    (Day date, Location varchar2(14), VS varchar2(9))
;

INSERT ALL 
    INTO CUBS (Day, Location, VS)
         VALUES ('11-Sep-2016 ', 'Houston, TX', 'Astros')
    INTO CUBS (Day, Location, VS)
         VALUES ('12-Sep-2016 ', 'St. Louis, MO', 'Cardinals')
    INTO CUBS (Day, Location, VS)
         VALUES ('13-Sep-2016 ', 'St. Louis, MO', 'Cardinals')
    INTO CUBS (Day, Location, VS)
         VALUES ('14-Sep-2016 ', 'St. Louis, MO', 'Cardinals')
    INTO CUBS (Day, Location, VS)
         VALUES ('15-Sep-2016 ', 'Chicago, IL', 'Brewers')
    INTO CUBS (Day, Location, VS)
         VALUES ('16-Sep-2016 ', 'Chicago, IL', 'Brewers')
    INTO CUBS (Day, Location, VS)
         VALUES ('17-Sep-2016 ', 'Chicago, IL', 'Brewers')
    INTO CUBS (Day, Location, VS)
         VALUES ('18-Sep-2016 ', 'Chicago, IL', 'Brewers')
    INTO CUBS (Day, Location, VS)
         VALUES ('19-Sep-2016 ', 'Chicago, IL', 'Reds')
    INTO CUBS (Day, Location, VS)
         VALUES ('20-Sep-2016 ', 'Chicago, IL', 'Reds')
    INTO CUBS (Day, Location, VS)
         VALUES ('21-Sep-2016 ', 'Chicago, IL', 'Reds')
    INTO CUBS (Day, Location, VS)
         VALUES ('23-Sep-2016 ', 'Chicago, IL', 'Cardinals')
    INTO CUBS (Day, Location, VS)
         VALUES ('24-Sep-2016 ', 'Chicago, IL', 'Cardinals')
    INTO CUBS (Day, Location, VS)
         VALUES ('25-Sep-2016 ', 'Chicago, IL', 'Cardinals')
    INTO CUBS (Day, Location, VS)
         VALUES ('26-Sep-2016 ', 'Pittsburgh, PA', 'Pirates')
    INTO CUBS (Day, Location, VS)
         VALUES ('27-Sep-2016 ', 'Pittsburgh, PA', 'Pirates')
    INTO CUBS (Day, Location, VS)
         VALUES ('28-Sep-2016 ', 'Pittsburgh, PA', 'Pirates')
    INTO CUBS (Day, Location, VS)
         VALUES ('29-Sep-2016 ', 'Pittsburgh, PA', 'Pirates')
    INTO CUBS (Day, Location, VS)
         VALUES ('30-Sep-2016 ', 'Cincinnati, OH', 'Reds')
    INTO CUBS (Day, Location, VS)
         VALUES ('01-Oct-2016 ', 'Cincinnati, OH', 'Reds')
    INTO CUBS (Day, Location, VS)
         VALUES ('02-Oct-2016 ', 'Cincinnati, OH', 'Reds')
SELECT * FROM dual
;

COMMIT;

-- Here are the tables

SELECT * FROM ships; 
SELECT * FROM subs;
SELECT * FROM bears;
SELECT * FROM cubs;