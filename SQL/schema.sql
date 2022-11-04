-- Don't run any of this yet- Edit .csv to include an index column in order to have a primary key in 2020 and 2021. 
CREATE TABLE 2020 (
	 "Index" INT NOT NULL,
     Company_Name VARCHAR(40) NOT NULL,
     Ship_Date VARCHAR(40) NOT NULL,
	 City VARCHAR (40) NOT NULL,
	 "State" VARCHAR (40) NOT NULL,
	 ZIP INT NOT NULL,
	 Shipping_Service VARCHAR (40) NOT NULL,
	 Created_Date DATE NOT NULL,
	 Weight INT NOT NULL,
	 "Item/Bottle_Count" INT NOT NULL,
     PRIMARY KEY (--Index? Need unique characters),
     FOREIGN KEY ("State") REFERENCES "State Research" ("State")
);

	CREATE TABLE 2021 (
	 "Index" INT NOT NULL,
     Company_Name VARCHAR(40) NOT NULL,
     Ship_Date VARCHAR(40) NOT NULL,
	 City VARCHAR (40) NOT NULL,
	 "State" VARCHAR (40) NOT NULL,
	 ZIP INT NOT NULL,
	 Shipping_Service VARCHAR (40) NOT NULL,
	 Created_Date DATE NOT NULL,
	 Weight INT NOT NULL,
	 "Item/Bottle_Count" INT NOT NULL,
     PRIMARY KEY (--Index? Need unique characters),
     FOREIGN KEY ("State") REFERENCES "State Research" ("State")
);

CREATE TABLE "State Research" (
	"State"  VARCHAR (40) NOT NULL,
	Population INT NOT NULL,
	Lockdown_Start DATE NOT NULL,
	Intial_Expected_Lockdown_Start DATE NOT NULL,
	Phase_1_Re-Opening_Start DATE NOT NULL,
	Political_Alignment VARCHAR (40) NOT NULL,
	PRIMARY KEY ("State"),
);
