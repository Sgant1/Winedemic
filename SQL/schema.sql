--Database stores static data for use during the project- (So far have connected States, 2020, and 2021. Waiting on 2019 data)
--Database interfaces with the project in some format (connects to the model)- Erica
--Includes at least one join using the database language (not including pandas) -Create DB that has top 10 wine sales by state joined with the information from the states table?
--Includes at least one connection string (using SQALchemy or PyMongo) - DONE (I think) (Connected through pandas/JN)
--Provide ERD with relationships- DONE

--2019 has not been imported yet, waiting on data to be provided and cleaned. 
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
		
CREATE TABLE "State Research" (
	"State"  VARCHAR (40) NOT NULL,
	Population INT NOT NULL,
	Lockdown_Start VARCHAR (40) NOT NULL,
	Intial_Expected_Lockdown_Start VARCHAR (40) NOT NULL,
	"Phase_1_Re-Opening_Start" VARCHAR (40) NOT NULL,
	Political_Alignment VARCHAR (40) NOT NULL,
	PRIMARY KEY ("State")
);
DROP TABLE "State Research" CASCADE;
		
--SELECT COUNT(*) FROM complete_2019;
SELECT COUNT(*) FROM complete_2020;
SELECT COUNT(*) FROM complete_2021;
SELECT COUNT (*) FROM "State Research";

--confirm column names are correct and data imported correctly from 2020.
SELECT * FROM complete_2020
LIMIT 10;

--Also confirmed by right clicking on "complete_2020" table in the left panel>properties>columns.
--can edit PK and FK from the above directions as well.

--confirm column names are correct and data imported correctly from 2021.
SELECT * FROM complete_2021
LIMIT 10;

