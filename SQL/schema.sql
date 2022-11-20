--Database stores static data for use during the project- (So far have connected States, 2019, 2020, and 2021.)
--Database interfaces with the project in some format (connects to the model)- Erica
--Includes at least one join using the database language (not including pandas) -Create DB joining all three years and States.
--Includes at least one connection string (using SQALchemy or PyMongo) - (Connected via pandas in Jupyter Notebook)
--Provide ERD with relationships- DONE

CREATE TABLE "State Research" (
	"State"  VARCHAR (40) NOT NULL,
	Population INT NOT NULL,
	Lockdown_Start VARCHAR (40) NOT NULL,
	Initial_Expected_Lockdown_End VARCHAR (40) NOT NULL,
	"Phase_1_Re-Opening_Start" VARCHAR (40) NOT NULL,
	Political_Alignment VARCHAR (40) NOT NULL,
	PRIMARY KEY ("State")
);
-- DROP TABLE "State Research" CASCADE;

--2019 has been imported and confirmed. 
CREATE TABLE complete_2019 (
	 "Order_Number" INT NOT NULL,
     Company_Name VARCHAR(40) NOT NULL,
     Ship_Date VARCHAR(40) NOT NULL,
	 City VARCHAR (40) NOT NULL,
	 "State" VARCHAR (40) NOT NULL,
	 ZIP VARCHAR (40) NOT NULL,
	 Shipping_Service VARCHAR (40) NOT NULL,
	 Created_Date VARCHAR (40) NOT NULL,
	 Weight VARCHAR (40) NOT NULL,
	 "Item/Bottle_Count" VARCHAR (40) NOT NULL,
     PRIMARY KEY ("Order_Number"),
     FOREIGN KEY ("State") REFERENCES "State Research" ("State")
);
--drop syntax here in case we need to re-do anything.
--DROP TABLE complete_2019 CASCADE;

--2020 has been imported and confirmed.
CREATE TABLE complete_2020 (
	 "Order_Number" INT NOT NULL,
     Company_Name VARCHAR(40) NOT NULL,
     Ship_Date VARCHAR(40) NOT NULL,
	 City VARCHAR (40) NOT NULL,
	 "State" VARCHAR (40) NOT NULL,
	 ZIP VARCHAR (40) NOT NULL,
	 Shipping_Service VARCHAR (40) NOT NULL,
	 Created_Date VARCHAR (40) NOT NULL,
	 Weight VARCHAR (40) NOT NULL,
	 "Item/Bottle_Count" VARCHAR (40) NOT NULL,
     PRIMARY KEY ("Order_Number"),
     FOREIGN KEY ("State") REFERENCES "State Research" ("State")
);
--drop syntax here in case we need to re-do anything.
--DROP TABLE complete_2020 CASCADE;

CREATE TABLE complete_2021 (
	 "Order_Number" INT NOT NULL,
     Company_Name VARCHAR(40) NOT NULL,
     Ship_Date VARCHAR(40) NOT NULL,
	 City VARCHAR (40) NOT NULL,
	 "State" VARCHAR (40) NOT NULL,
	 ZIP VARCHAR (40) NOT NULL,
	 Shipping_Service VARCHAR (40) NOT NULL,
	 Created_Date VARCHAR (40) NOT NULL,
	 Weight VARCHAR (40) NOT NULL,
	 "Item/Bottle_Count" VARCHAR (40) NOT NULL,
     PRIMARY KEY ("Order_Number"),
     FOREIGN KEY ("State") REFERENCES "State Research" ("State")
);
--drop syntax here in case we need to re-do anything.
--DROP TABLE complete_2021 CASCADE;

		
SELECT COUNT(*) FROM complete_2019;
SELECT COUNT(*) FROM complete_2020;
SELECT COUNT(*) FROM complete_2021;
SELECT COUNT (*) FROM "State Research";

--confirm column names are correct and data imported correctly from 2019,  2020, 2021 and State Research.
SELECT * FROM complete_2019
LIMIT 5;

SELECT * FROM complete_2020
LIMIT 5;

SELECT * FROM complete_2021
LIMIT 5;

SELECT * FROM "State Research"
LIMIT 5;

--Also confirmed by right clicking on tables in the left panel>properties>columns.
--can edit PK and FK from the above directions as well.

-- Create new table for State that excludes population
SELECT "State", "lockdown_start", "initial_expected_lockdown_end", "Phase_1_Re-Opening_Start", "political_alignment"
INTO Joined_State_2020
FROM "State Research";

-- Check the table
SELECT * FROM Joined_State_2020
Limit 5

--Join State Research with complete_2020 on "State"
SELECT c."State",
     c."created_date",
     c."Item/Bottle_Count",
	 J."lockdown_start",
	 J."initial_expected_lockdown_end",
	 J."Phase_1_Re-Opening_Start",
	 J."political_alignment"
FROM "complete_2020" AS c
INNER JOIN Joined_State_2020 AS J
ON J."State" = c."State";
--DROP TABLE Joined_State_2020;
	 
SELECT * FROM Joined_State_2020
LIMIT 5;

--Create Winedemic_Complete table
--Imported Winedemic Complete from Pandas connection.
--CREATE TABLE Winedemic_Complete (
--	 "Order_Number" INT NOT NULL,
--    Company_Name VARCHAR(40) NOT NULL,
--	 "State" VARCHAR (40) NOT NULL,
--	 City VARCHAR (40) NOT NULL,
--	 Created_Date VARCHAR (40) NOT NULL,
--	 "Item/Bottle_Count" VARCHAR (40) NOT NULL,
--	 Weight VARCHAR (40) NOT NULL,
--    PRIMARY KEY ("Order_Number"),
--     FOREIGN KEY ("State") REFERENCES "State Research" ("State")
--);

--DROP TABLE Winedemic_Complete;
SELECT * FROM public."Winedemic Complete"
LIMIT 100