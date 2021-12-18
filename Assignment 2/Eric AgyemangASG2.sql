SET ECHO ON;

-- ERIC AGYEMANG
--IT 478 ADVANCED DATABASE PROCESING
-- HOMEWORK #2


--1: Load the data


--DDL For HW#2 --

DROP TABLE PLAYERS;
DROP TABLE TEAMS;

CREATE TABLE Players
    (First varchar2(9), Last varchar2(10), G int, AB int, H int, DOUBLE int, TRIPLE int, HR int, R int, RBI int, BB int, SO int, SB int, Team int)
;

INSERT ALL 
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Norichika', 'Aoki', 6, 14, 1, 0, 0, 0, 1, 1, 2, 2, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Billy', 'Butler', 5, 15, 5, 1, 0, 0, 1, 3, 1, 1, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Lorenzo', 'Cain', 7, 26, 8, 2, 0, 0, 4, 4, 3, 3, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Tim', 'Collins', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Wade', 'Davis', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Danny', 'Duffy', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Jarrod', 'Dyson', 5, 10, 2, 0, 0, 0, 0, 0, 1, 2, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Alcides', 'Escobar', 7, 29, 9, 3, 0, 0, 3, 2, 0, 5, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Brandon', 'Finnegan', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Jason', 'Frasor', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Alex', 'Gordon', 7, 27, 5, 3, 0, 0, 4, 2, 0, 5, 1, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Terrance', 'Gore', 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Jeremy', 'Guthrie', 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Kelvin', 'Herrera', 4, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Greg', 'Holland', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Eric', 'Hosmer', 7, 28, 7, 2, 0, 0, 3, 4, 2, 8, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Omar', 'Infante', 7, 22, 7, 3, 0, 1, 4, 5, 1, 6, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Mike', 'Moustakas', 7, 23, 5, 2, 0, 1, 3, 2, 1, 3, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Jayson', 'Nix', 2, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Salvador', 'Perez', 7, 24, 8, 1, 0, 1, 3, 4, 0, 2, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('James', 'Shields', 2, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Jason', 'Vargas', 1, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Yordano', 'Ventura', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Josh', 'Willingham', 2, 2, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Jeremy', 'Affeldt', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Joaquin', 'Arias', 3, 2, 1, 0, 0, 0, 0, 0, 0, 1, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Brandon', 'Belt', 7, 26, 8, 1, 0, 0, 1, 2, 3, 9, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Gregor', 'Blanco', 7, 28, 4, 0, 0, 1, 6, 2, 6, 4, 1, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Madison', 'Bumgarner', 3, 4, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Santiago', 'Casilla', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Brandon', 'Crawford', 7, 23, 7, 0, 0, 0, 2, 4, 3, 6, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Matt', 'Duffy', 2, 2, 1, 0, 0, 0, 1, 0, 0, 1, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Tim', 'Hudson', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Travis', 'Ishikawa', 6, 13, 3, 0, 0, 0, 0, 0, 1, 4, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Tim', 'Lincecum', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Javier', 'Lopez', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Jean', 'Machi', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Mike', 'Morse', 6, 16, 4, 1, 0, 0, 2, 4, 1, 5, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Joe', 'Panik', 7, 27, 6, 2, 1, 0, 3, 3, 2, 5, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Jake', 'Peavy', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Hunter', 'Pence', 7, 27, 12, 3, 0, 1, 7, 5, 3, 2, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Juan', 'Perez', 6, 12, 3, 1, 0, 0, 1, 3, 0, 4, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Yusmeiro', 'Petit', 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Buster', 'Posey', 7, 26, 4, 0, 0, 0, 1, 2, 3, 3, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Sergio', 'Romo', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Pablo', 'Sandoval', 7, 28, 12, 3, 0, 0, 6, 4, 1, 4, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Hunter', 'Strickland', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Andrew', 'Susac', 2, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2)
    INTO Players (First, Last, G, AB, H, DOUBLE, TRIPLE, HR, R, RBI, BB, SO, SB, Team)
         VALUES ('Ryan', 'Vogelsong', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2)
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

---- Procedure section

--2. Create a procedure that will add a column called HBP and populate the column with 0's for all players. Call your procedure using CALL.
ALTER TABLE Players add HBP NUMBER default 0;
desc Players;

SELECT * FROM Players;


--1. PA – Plate appearance: number of completed batting appearances
CREATE OR REPLACE FUNCTION player_stats1
(
first_name_param VARCHAR2,
last_name_param VARCHAR2
)
RETURN NUMBER
AS plate_appearance NUMBER;

BEGIN
SELECT AB + BB + HBP AS Plate_appearance INTO plate_appearance
FROM PLAYERS
WHERE first = first_name_param AND last = last_name_param;
RETURN plate_appearance;
END;

SELECT player_stats1('Lorenzo', 'Cain') AS Plate_appearance
FROM dual;

--2. K – Strike out (also abbreviated SO): number of times that a third strike is taken or swung at and missed, or bunted foul. 
CREATE OR REPLACE FUNCTION player_stats_k
(
first_name_param VARCHAR2,
last_name_param VARCHAR2
)
RETURN NUMBER
AS K NUMBER;

BEGIN
SELECT SO AS Plate_appearance INTO K
FROM PLAYERS
WHERE first = first_name_param AND last = last_name_param;
RETURN K;
END;

SELECT player_stats_k('Lorenzo', 'Cain') AS strikeouts
FROM dual;


--3. R – Runs scored: number of times a player crosses home plate
CREATE OR REPLACE FUNCTION player_stats_r
(
first_name_param VARCHAR2,
last_name_param VARCHAR2
)
RETURN NUMBER
AS RUNS NUMBER;

BEGIN
SELECT R AS Plate_appearance INTO RUNS
FROM PLAYERS
WHERE first = first_name_param AND last = last_name_param;
RETURN RUNS;
END;

SELECT player_stats_r('Lorenzo', 'Cain') AS runsscored
FROM dual;



--4. TB – Total bases: one for each single, two for each double, three for each triple, and four for each home run [H + 2B + (2 × 3B) + (3 × HR)] 
      --or [1B + (2 × 2B) + (3 × 3B) + (4 × HR)] NOTE: 2B = DOUBLE, 3B = TRIPLE, and HR = HOME RUN
CREATE OR REPLACE FUNCTION player_stats_t
(
first_name_param VARCHAR2,
last_name_param VARCHAR2
)
RETURN NUMBER
AS 
TOTAL NUMBER;

BEGIN
SELECT H + DOUBLE + (2 * TRIPLE) + (3 * HR)  AS Plate_appearance INTO TOTAL
FROM PLAYERS
WHERE first = first_name_param AND last = last_name_param;
RETURN TOTAL;
END;

SELECT player_stats_t('Lorenzo', 'Cain') AS totalruns
FROM dual;





































