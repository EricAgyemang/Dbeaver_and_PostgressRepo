DROP TABLE PLAYERS;
DROP TABLE TEAMS;

CREATE TABLE Players
    (First varchar2(9), Last varchar2(10), G int, AB int, H int, DOUBLE int, TRIPLE int, HR int, R int, RBI int, BB int, SO int, SB int, Team int, HBP int)
;

INSERT ALL 
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP )
         VALUES ('Norichika', 'Aoki', 6, 14, 1, 0, 0, 0, 1, 1, 2, 2, 0, 1, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Billy', 'Butler', 5, 15, 5, 1, 0, 0, 1, 3, 1, 1, 0, 1,0)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Lorenzo', 'Cain', 7, 26, 8, 2, 0, 0, 4, 4, 3, 3, 0, 1,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Tim', 'Collins', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,0)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Wade', 'Davis', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Danny', 'Duffy', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,0)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Jarrod', 'Dyson', 5, 10, 2, 0, 0, 0, 0, 0, 1, 2, 0, 1,0)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Alcides', 'Escobar', 7, 29, 9, 3, 0, 0, 3, 2, 0, 5, 0, 1,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Brandon', 'Finnegan', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Jason', 'Frasor', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,0)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Alex', 'Gordon', 7, 27, 5, 3, 0, 0, 4, 2, 0, 5, 1, 1,9)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Terrance', 'Gore', 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1,2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Jeremy', 'Guthrie', 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Kelvin', 'Herrera', 4, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1,2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Greg', 'Holland', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Eric', 'Hosmer', 7, 28, 7, 2, 0, 0, 3, 4, 2, 8, 0, 1,2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Omar', 'Infante', 7, 22, 7, 3, 0, 1, 4, 5, 1, 6, 0, 1,0)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Mike', 'Moustakas', 7, 23, 5, 2, 0, 1, 3, 2, 1, 3, 0, 1,0)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Jayson', 'Nix', 2, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Salvador', 'Perez', 7, 24, 8, 1, 0, 1, 3, 4, 0, 2, 0, 1,0)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('James', 'Shields', 2, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Jason', 'Vargas', 1, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1,0)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Yordano', 'Ventura', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Josh', 'Willingham', 2, 2, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Jeremy', 'Affeldt', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,0)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Joaquin', 'Arias', 3, 2, 1, 0, 0, 0, 0, 0, 0, 1, 0, 2,0)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Brandon', 'Belt', 7, 26, 8, 1, 0, 0, 1, 2, 3, 9, 0, 2,0)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Gregor', 'Blanco', 7, 28, 4, 0, 0, 1, 6, 2, 6, 4, 1, 2,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Madison', 'Bumgarner', 3, 4, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Santiago', 'Casilla', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Brandon', 'Crawford', 7, 23, 7, 0, 0, 0, 2, 4, 3, 6, 0, 2,2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Matt', 'Duffy', 2, 2, 1, 0, 0, 0, 1, 0, 0, 1, 0, 2,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Tim', 'Hudson', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Travis', 'Ishikawa', 6, 13, 3, 0, 0, 0, 0, 0, 1, 4, 0, 2,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Tim', 'Lincecum', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Javier', 'Lopez', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Jean', 'Machi', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Mike', 'Morse', 6, 16, 4, 1, 0, 0, 2, 4, 1, 5, 0, 2,2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Joe', 'Panik', 7, 27, 6, 2, 1, 0, 3, 3, 2, 5, 0, 2,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Jake', 'Peavy', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Hunter', 'Pence', 7, 27, 12, 3, 0, 1, 7, 5, 3, 2, 0, 2,0)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Juan', 'Perez', 6, 12, 3, 1, 0, 0, 1, 3, 0, 4, 0, 2,0)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Yusmeiro', 'Petit', 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2,0)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Buster', 'Posey', 7, 26, 4, 0, 0, 0, 1, 2, 3, 3, 0, 2,0)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Sergio', 'Romo', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,0)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Pablo', 'Sandoval', 7, 28, 12, 3, 0, 0, 6, 4, 1, 4, 0, 2,1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Hunter', 'Strickland', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,0)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Andrew', 'Susac', 2, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team, HBP)
         VALUES ('Ryan', 'Vogelsong', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,0)
SELECT * FROM dual
;

CREATE TABLE Teams
    (TEAM int, NAME varchar2(6), CITY varchar2(13), STATE varchar2(2))
;

INSERT ALL 
    INTO Teams (TEAM, NAME, CITY, STATE)
         VALUES (1, 'Royals', 'Kansas City', 'MO')
    INTO Teams (TEAM, NAME, CITY, STATE)
         VALUES (2, 'Giants', 'San Francisco', 'CA')
SELECT * FROM dual
;

COMMIT;

SET ECHO ON
-- ERIC AGYEMANG
--IT 478 ADVANCED DATABASE PROCESSING
--LAB 11

--Create functions for each of the following:
--1. R – Runs scored: number of times a player crosses home plate

CREATE OR REPLACE FUNCTION player_stats_r
(
first_name_param VARCHAR2,
last_name_param VARCHAR2
)
RETURN NUMBER
AS RS NUMBER;
BEGIN
    SELECT R AS plate_Appearance INTO RS from players
    WHERE first = first_name_param and last = last_name_param;
    RETURN RS;
END;
/

select player_stats_r('Lorenzo','Cain') as runs_scored from dual;



--2. BB/K – Walk-to-strikeout ratio: number of bases on balls divided by number of strikeouts
CREATE OR REPLACE FUNCTION player_stats_wts
(
first_name_param VARCHAR2,
last_name_param VARCHAR2
)
RETURN NUMBER
AS WTS NUMBER;
BEGIN
    SELECT BB/SO AS Walk_to_strikeout INTO WTS from players  
    WHERE first = first_name_param and last = last_name_param;
    RETURN WTS;
END;
/

select player_stats_wts('Lorenzo','Cain') as Walk_to_strikeout from dual;



--3. XBH – Extra-base hits: total hits greater than singles (2B + 3B + HR) NOTE: 2B = DOUBLE, 3B = TRIPLE
CREATE OR REPLACE FUNCTION player_stats_xbh
(
first_name_param VARCHAR2,
last_name_param VARCHAR2
)
RETURN NUMBER
AS XBH NUMBER;
BEGIN
    SELECT (DOUBLE + TRIPLE + HR) AS Extra_base INTO XBH from players
    WHERE first = first_name_param and last = last_name_param;
    RETURN XBH;
END;
/
SELECT player_stats_xbh('Lorenzo','Cain') as Extra_base from dual;



--4. TB – Total bases: one for each single, two for each double, three for each triple, and four for each home run [H + 2B + (2 × 3B) + 
    --(3 × HR)] or [1B + (2 × 2B) + (3 × 3B) + (4 × HR)] NOTE: 2B = DOUBLE, 3B = TRIPLE
    
CREATE OR REPLACE FUNCTION player_stats_tb
(   
first_name_param VARCHAR2,
last_name_param VARCHAR2
)
RETURN NUMBER
AS TB NUMBER;
BEGIN
    SELECT H + DOUBLE + (2 * TRIPLE) + (3 * HR) AS plate_Appearance INTO TB from players
    WHERE first = first_name_param and last = last_name_param;
    RETURN TB;
END;
/
select player_stats_tb('Lorenzo','Cain') as Total_base from dual;
 
    
       
    
--5. TOB – Times on base: times reaching base as a result of hits, walks, and hit-by-pitches (H + BB + HBP)

CREATE OR REPLACE FUNCTION time_on_base
(
first_name_param VARCHAR2,
last_name_param VARCHAR2
)
RETURN NUMBER
AS t_o_base NUMBER;
BEGIN
    SELECT (H + BB + HBP) INTO t_o_base from players
    WHERE First = first_name_param and Last = last_name_param;
    RETURN t_o_base;
END;
/
select time_on_base('Lorenzo','Cain') as time_on_base from dual;


























