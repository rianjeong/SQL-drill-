CREATE DATABASE db_pourcost

USE db_pourcost
GO


CREATE TABLE liquor_cost (
		liquor_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
		liquor_type VARCHAR (50) NOT NULL,
		liquorbottle_cost MONEY NOT NULL, 
	);


	INSERT INTO liquor_cost
		(liquor_type, liquorbottle_cost)
		VALUES
		('vodka', 9.95),
		('whiskey',13.95),
		('gin',9.95),
		('rum',10.95),
		('scotch',15.95),
		('tequila',8.95),
		('rye',16.95),
		('vermouth',7.95)
	;
	
	 

	CREATE TABLE liquor_brand_inventory (
		liquor_brandID INT PRIMARY KEY NOT NULL IDENTITY(2200,1), 
		liquor_brand VARCHAR(50) NOT NULL, 
		liquor_inventory DECIMAL(5,2) NOT NULL,
		);

		INSERT INTO liquor_brand_inventory
		(liquor_brand, liquor_inventory, liquor_id)
		VALUES
		('Ketel One', 5.7, 1), 
		('Jim Beam', 7.7, 2), 
		('Beefeater', 3.2, 3),
		('Captain Morgans', 4.4, 4),
		('Johnny Walker Black', 2.3, 5), 
		('Cazadores', 3.7, 6), 
		('Dickel Rye', 8.2, 7), 
		('Martini and Rossi', .8, 8)
		; 

SELECT * FROM liquor_cost;
SELECT * FROM liquor_brand_inventory; 

DROP TABLE liquor_brand_inventory

CREATE TABLE liquor_brand_inventory (
		liquor_brandID INT PRIMARY KEY NOT NULL IDENTITY(2200,1), 
		liquor_brand VARCHAR(50) NOT NULL, 
		liquor_inventory DECIMAL(5,2) NOT NULL,
		liquor_id INT FOREIGN KEY REFERENCES liquor_cost(liquor_id)
		);

	SELECT liquor_brand, liquorbottle_cost FROM liquor_brand_inventory, liquor_cost WHERE liquorbottle_cost >= 10; 

