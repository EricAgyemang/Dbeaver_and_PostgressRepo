-- Here is the DDL to load the needed tables

DROP TABLE iboats; 
DROP TABLE iships;

CREATE TABLE iboats
(SUB_ID varchar2(5))
;

INSERT ALL
INTO iboats (SUB_ID) VALUES ('I-166')
INTO iboats (SUB_ID) VALUES ('I-176')
INTO iboats (SUB_ID) VALUES ('I-177')
INTO iboats (SUB_ID) VALUES ('I-180')
INTO iboats (SUB_ID) VALUES ('I-182')
SELECT * FROM dual
;

CREATE TABLE iships
(Ship varchar2(13), Country varchar2(2), SUB_ID varchar2(5))
;

INSERT ALL
INTO iships (Ship, Country, SUB_ID) VALUES ('SS Fingal', 'NL', 'I-180') 
INTO iships (Ship, Country, SUB_ID) VALUES ('AHS Centaur', 'AU', 'I-177') 
INTO iships (Ship, Country, SUB_ID) VALUES ('HNLMS K XVI', 'NL', 'I-166') 
INTO iships (Ship, Country, SUB_ID) VALUES ('USAT Liberty', 'US', 'I-166')
INTO iships (Ship, Country, SUB_ID) VALUES ('USS Seadragon', 'US', NULL)
SELECT * FROM dual
;


-- Here are the tables

SELECT * FROM iships; 
SELECT * FROM iboats;