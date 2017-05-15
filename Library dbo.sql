CREATE DATABASE db_Library

CREATE TABLE Tbl_Book (
	Book_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Title VARCHAR(50) NOT NULL,
	Publisher_Name VARCHAR(50) NOT NULL FOREIGN KEY REFERENCES Tbl_Publisher(Name) ON UPDATE CASCADE ON DELETE CASCADE,
	); 




INSERT INTO Tbl_Book
	(Title,Publisher_Name)
		VALUES
		('The Crossing', 'Picador'),
		('Oliver Twist', 'Penguin'),
		('King Rat', 'Dell'),
		('The World According to Garp', 'Pocket Books'),
		('The Waste Land', 'HBJ Book'),
		('The Garden of Eden', 'Scribner'),
		('Old School', 'Knopf'),
		('A Street Car Named Desire', 'Penguin'),
		('Sula', 'Penguin'),
		('The Quiet American', 'Penguin'),
		('Of Mice and Men', 'Penguin'),
		('The Barracks Theif', 'Ecco Press'),
		('Choke', 'Doubleday'), 
		('Son of the Circus', 'Ballantine Books'),
		('Ulysses', 'Vintage'),
		('Tales of Ordinary Madness', 'City Lights'), 
		('A Dance with Dragons', 'Bantam'),
		('Midnight Children', 'Penguin'),  
		('Atlas Shrugged', 'Penguin'), 
		('Dune', 'Berkely Publishing Group'), 
		('The Count of Monte Cristo', 'Random House'),
		('The Gun Slinger', 'Donald M Grant'),
		('The Lost Tribe', 'Picador')
		;

SELECT * FROM Tbl_Book; 

CREATE TABLE Tbl_Publisher (
	Name VARCHAR(50) PRIMARY KEY NOT NULL, 
	[Address] VARCHAR(75) NOT NULL, 
	Phone BIGINT NOT NULL, 
); 

INSERT INTO Tbl_Publisher
	(Name, [Address], Phone)
		VALUES
		('Picador', '175 Fifth Avenue New York, NY 10010', '6463075421'),
		('Penguin', '222 Rosewood Drive Danvers, MA 01923', '9787508400'),
		('Dell', '1745 Broadway Frnt 3 New York, NY 10019-4641', '2127829000'),
		('Pocket Books', '1230 Avenue of the Americas New York, NY 10020', '2126987000'),
		('HBJ Book', '6277 Sea Harbor DriveOrlando, Florida 32887', '4073452000'),
		('Scribner', '1230 Avenue of the Americas New York New York 10020', '2126987000'),
		('Knopf', '1745 Broadway New York NY 10019 USA', '2127829000'),
		('Ecco Press', '10 East 53rd Street New York NY 10022', '2122077000'),
		('Doubleday', '1745 Broadway New York, NY 10019', '2129407390'), 
		('Ballantine Books', '1745 Broadway New York New York 10019', '2127828438'),
		('Vintage', '1745 Broadway New York NY 10019 USA', '2127829000'),
		('City Lights', '261 Columbus Avenue at Broadway, San Francisco, CA 94133 ', '4153628193'), 
		('Bantam', '222 Rosewood Drive Danvers, MA 01923', '9787508400'),
		('Berkely Publishing Group', '222 Rosewood Drive Danvers, MA 01923', '9787508400'), 
		('Random House', '1745 Broadway New York NY 10019 USA', '2127829000 '),
		('Donald M Grant', 'PO Box 187 19 Surrey Lane Hampton Falls, NH 03844', '6037787191')
; 
	
SELECT * FROM Tbl_Publisher; 
	
CREATE TABLE Tbl_Book_Author (
	Book_ID INT NOT NULL, 
	Author_Name VARCHAR(50) NOT NULL,
);


INSERT INTO Tbl_Book_Author 
	(Book_ID, Author_Name)
	VALUES
	('1', 'McCarthy, Cormac'), 
	('2', 'Dickens, Charles'),
	('3', 'Clavell, James'),
	('4', 'Irving, Jon'), 
	('5', 'Eliot, TS'), 
	('6', 'Hemmingway, Ernest'), 
	('7', 'Wolff, Tobias'), 
	('8', 'Williams, Tennessee'), 
	('9', 'Morrison, Toni'), 
	('10', 'Greene, Graham'), 
	('11', 'Steinbeck, John'), 
	('12', 'Wolff, Tobias'), 
	('13', 'Palinuk, Chuck'), 
	('14', 'Irving, Jon'), 
	('15', 'Joyce, James'), 
	('16',  'Bukowski, Charles'), 
	('17', 'Martin, George RR'), 
	('18', 'Rushdie, Salman'), 
	('19', 'Rand, Ayn'), 
	('20', 'Herbert, Frank'), 
	('21', 'Dumas, Alexander'), 
	('22', 'King, Stephen'), 
	('23', 'Lee, Mark')
; 

SELECT * FROM Tbl_Book_Author; 	



CREATE TABLE Tbl_Library_Branch (
	Branch_ID INT PRIMARY KEY NOT NULL IDENTITY (100,1), 
	Branch_Name VARCHAR(30) NOT NULL, 
	[Address] VARCHAR(50) NOT NULL, 
); 



INSERT INTO Tbl_Library_Branch
	(Branch_Name, [Address])
	VALUES
	('Sharpstown', '1900 Sw Hazel Nut Lane Portland, OR 97213'),
	('Central', '500 Main st Lake Oswego, OR 97206'),
	('Uptown', '1200 NE Macadamia court, St Helens, WA 96541'),
	('Plaza', '450 Park Ave Sherwood, OR 94731')
; 
SELECT * FROM Tbl_Library_Branch;

CREATE TABLE Tbl_Book_Copies (
	Book_ID INT NOT NULL,  
	Branch_ID INT NOT NULL FOREIGN KEY REFERENCES Tbl_Library_Branch(Branch_ID) ON UPDATE CASCADE ON DELETE CASCADE, 
	No_OF_Copies INT 
); 



INSERT INTO Tbl_Book_Copies 
	(Book_ID, Branch_ID, No_of_Copies)
	VALUES
	('1', '101', '2'), 
	('3', '101', '2'),
	('5', '101', '4'), 
	('4', '101', '3'), 
	('7', '101', '2'),
	('8', '101', '2'), 
	('13', '101', '2'), 
	('16', '101', '3'), 
	('17', '101', '4'),
	('21', '101', '5'), 
	('4', '102', '3'), 
	('5', '102', '2'), 
	('8', '102', '2'), 
	('10', '102', '3'), 
	('11', '102', '2'), 
	('15', '102', '4'), 
	('17', '102', '3'), 
	('20', '102', '6'), 
	('21', '102', '2'), 
	('22', '102', '2'), 
	('23', '102', '2'), 
	('3', '100', '2'),
	('4', '100', '4'),
	('6', '100', '4'),
	('7', '100', '3'), 
	('8', '100', '2'),
	('9', '100', '4'), 
	('13', '100', '5'), 
	('15', '100', '2'),
	('17', '100', '2'), 
	('22', '100', '4'), 
	('23', '100', '3'), 
	('2', '103', '2'),
	('4', '103', '2'), 
	('5', '103', '3'), 
	('6', '103', '5'), 
	('8', '103', '4'), 
	('9', '103', '3'), 
	('11', '103', '2'), 
	('12', '103', '2'), 
	('15', '103', '3'), 
	('17', '103', '6'), 
	('18', '103', '2'), 
	('19', '103', '2'), 
	('21', '103', '3'), 
	('22', '103', '2'),
	('23', '103', '4')
; 

SELECT * FROM Tbl_Book_Copies; 


CREATE TABLE Tbl_Book_Loans (
	Book_ID INT NOT NULL, 
	Branch_ID INT NOT NULL FOREIGN KEY REFERENCES Tbl_Library_Branch(Branch_ID) ON UPDATE CASCADE ON DELETE CASCADE,
	Card_NO INT NOT NULL FOREIGN KEY REFERENCES Tbl_Borrowers(Card_NO) ON UPDATE CASCADE ON DELETE CASCADE,
	Date_Out DATE NOT NULL, 
	Date_Due DATE NOT NULL, 

); 



INSERT INTO Tbl_Book_Loans
	(Book_ID, Branch_ID, Card_NO, Date_Out, Date_Due)
	VALUES
	('15', '101', '2004', '2/10/2017', '5/10/2017'), 
	('14', '101', '2003', '2/10/2017', '5/10/2017'), 
	('11', '103', '2005', '2/10/2017', '5/10/2017'), 
	('1', '102', '2008', '2/10/2017', '5/10/2017'), 
	('3', '100', '2002', '3/20/2017', '5/20/2017'), 
	('7', '100', '2002', '3/20/2017', '5/20/2017'), 
	('12', '100', '2002', '3/20/2017', '5/20/2017'), 
	('15', '100', '2002', '3/20/2017', '5/20/2017'), 
	('17', '100', '2002', '3/20/2017', '5/20/2017'), 
	('15', '102', '2001', '3/27/2017', '5/27/2017'), 
	('23', '101', '2008', '3/21/2017', '5/21/2017'), 
	('17', '102', '2004', '3/15/2017', '5/15/2017'), 
	('22', '100', '2003', '4/1/2017', '6/1/2017'), 
	('4', '103', '2007', '4/3/2017', '6/3/2017'), 
	('16', '103', '2007', '4/3/2017', '6/3/2017'), 
	('1', '103', '2007', '4/3/2017', '6/3/2017'), 
	('4', '103', '2007', '4/3/2017', '6/3/2017'), 
	('5', '103', '2007', '4/3/2017', '6/3/2017'), 
	('6', '102', '2001', '4/4/2017', '6/4/2017'), 
	('19', '101', '2003', '4/4/2017', '6/4/2017'), 
	('2', '101', '2008', '4/7/2017', '6/7/2017'), 
	('11', '103', '2002', '4/8/2017', '6/8/2017'), 
	('7', '101', '2005', '4/8/2017', '6/8/2017'), 
	('8', '102', '2005', '4/9/2017', '6/9/2017'), 
	('10', '101', '2003', '4/9/2017', '6/9/2017'), 
	('13', '101', '2008', '4/9/2017', '6/9/2017'), 
	('3', '103', '2004', '4/10/2017', '6/10/2017'), 
	('6', '102', '2001', '4/10/2017', '6/10/2017'), 
	('20', '102', '2009', '4/15/2017', '6/15/2017'), 
	('21', '100', '2003', '4/16/2017', '6/16/2017'), 
	('3', '101', '2009', '4/17/2017', '6/17/2017'), 
	('2', '103', '2005', '4/20/2017', '6/20/2017'), 
	('23', '100', '2006', '4/20/2017', '6/20/2017'), 
	('17', '102', '2007', '4/21/2017', '6/21/2017'), 
	('19', '101', '2001', '4/25/2017', '6/25/2017'), 
	('5', '100', '2002', '4/29/2017', '6/29/2017'), 
	('12', '100', '2002', '4/29/2017', '6/29/2017'), 
	('3', '103', '2003', '5/1/2017', '7/1/2017'), 
	('18', '102', '2001', '5/1/2017', '7/1/2017'), 
	('16', '102', '2008', '5/3/2017', '7/3/2017'), 
	('21', '101', '2005', '5/3/2017', '7/3/2017'), 
	('4', '103', '2006', '5/5/2017', '7/5/2017'), 
	('8', '103', '2001', '5/7/2017', '7/7/2017'), 
	('9', '101', '2007', '5/8/2017', '7/8/2017'), 
	('17', '100', '2008', '5/8/2017', '7/8/2017'), 
	('18', '100', '2008', '5/8/2017', '7/8/2017'), 
	('21', '102', '2009', '5/9/2017', '7/9/2017'), 
	('1', '102', '2002', '5/9/2017', '7/9/2017'), 
	('23', '103', '2004', '5/10/2017', '7/10/2017'), 
	('6', '100', '2005', '5/10/2017', '7/10/2017'), 
	('9', '101', '2009', '5/10/2017', '7/10/2017')
;

SELECT * FROM Tbl_Book_Loans; 



CREATE TABLE Tbl_Borrowers (
	Card_NO INT PRIMARY KEY NOT NULL IDENTITY(2001,1), 
	Name VARCHAR(50) NOT NULL, 
	[Address] VARCHAR(75) NOT NULL, 
	Phone BIGINT NOT NULL
); 

INSERT INTO Tbl_Borrowers
	(Name, [Address], Phone)
	VALUES
	('Ichibod Crane', '300 Sleepy Hollow Lane Tempe, Az 90909', '5575786901'),
	('Michael Stype', '90 s Were great place Colorado Springs CO 34523', '9099099000'),
	('Lewis Carol',  '1690 Rabbit Hole Court Billings, MT 34567', '4224203434'),
	('Geraldo Rivera', '100 No one likes you rd Chicago, IL 76591', '5107778920'), 
	('Jenny Craig', '1200 Calories per day St Oakland, CA 97214', '6357981000'), 
	('Sam Kinison', '37 lots of yelling rd Los Angeles, CA 94552', '7773332424'), 
	('Courtney Love', '421 I killed kurt place Seattle, Wa 45783', '6664211994'), 
	('Ben Stiller', '100 Awkward Way New York, New York 93002', '7793342432'), 
	('Lisa Lobe', '900 Nineth Story Ave Laramie, Wy 97200', '6789101112')
;

SELECT * FROM Tbl_Borrowers; 

CREATE PROC dbo.Stp_countbooksandbranches3 @Title VARCHAR(50) = NULL, @Branch_Name NVARCHAR(30)=NULL
AS
SELECT *
FROM Tbl_Book 
INNER JOIN Tbl_Book_Copies ON Tbl_Book_Copies.Book_ID = Tbl_Book.Book_id
INNER JOIN Tbl_Library_Branch ON Tbl_Library_Branch.Branch_ID = Tbl_Book_Copies.Branch_ID
WHERE Title = ISNULL(@Title,Title)
AND Branch_Name LIKE '%' + ISNULL(@Branch_Name,Branch_Name) + '%'
GO 


/*--This is for the first two questions--*/
EXEC dbo.Stp_countbooksandbranches3 @Title= 'The Lost Tribe'



/*--This is for question 3--*/
SELECT Name 
FROM Tbl_Borrowers
INNER JOIN Tbl_Book_Loans ON Tbl_Book_Loans.Card_NO = Tbl_Borrowers.Card_NO
WHERE Date_Out IS NULL 

/*--This is for Question 4, I did this for Central since There were no books due back on todays date from Sharpstown.--*/
CREATE PROC dbo.Stp_DuedateInfo4 @Branch_Name NVARCHAR(30) = NULL
AS
SELECT DISTINCT Tbl_Book.Title, Tbl_Book_Loans.Date_Due, Tbl_Borrowers.Name, Tbl_Borrowers.[Address] 
FROM Tbl_Book_Loans 
INNER JOIN Tbl_Book ON Tbl_Book.Book_ID = Tbl_Book_Loans.Book_ID
INNER JOIN Tbl_Library_Branch ON Tbl_Library_Branch.Branch_ID = Tbl_Book_Loans.Branch_ID
INNER JOIN Tbl_Borrowers ON Tbl_Borrowers.Card_No = Tbl_Book_Loans.Card_NO
WHERE Branch_Name = ISNULL(@Branch_Name,Branch_Name)
AND Date_Due = '5/10/2017'

EXEC dbo.Stp_DuedateInfo4 @Branch_Name = 'Central'



/*--This is for question 5--*/

SELECT DISTINCT Tbl_Book_Loans.Card_NO, Tbl_Library_Branch.Branch_Name,COUNT(Card_NO) AS Books_out
FROM Tbl_Book_Loans 
INNER JOIN Tbl_Library_Branch ON Tbl_Library_Branch.Branch_ID = Tbl_Book_Loans.Branch_ID
GROUP BY Card_NO, Branch_Name



/*--This is for question 6--*/
SELECT DISTINCT Tbl_Borrowers.Name, Tbl_Borrowers.[Address], Tbl_Book_Loans.Card_NO,
COUNT(Tbl_Book_Loans.Card_NO) AS Books_out
FROM Tbl_Book_Loans
INNER JOIN Tbl_Borrowers ON Tbl_Borrowers.Card_NO = Tbl_Book_Loans.Card_NO
GROUP BY Name, [Address],Tbl_Book_Loans.Card_NO
HAVING COUNT(Tbl_Book_Loans.Card_NO) >= 5

/*--This is for question 7--*/

CREATE PROCEDURE dbo.Stp_find_authorandbranch @Author_Name NVARCHAR(50) = NULL
AS
SELECT DISTINCT Tbl_Book.Title, Tbl_Book_Author.Author_Name, Tbl_Book_Copies.No_OF_Copies, Tbl_Library_Branch.Branch_Name
FROM Tbl_Book
INNER JOIN Tbl_Book_Author ON Tbl_Book_Author.Book_ID = Tbl_Book.Book_id
INNER JOIN Tbl_Book_Copies ON Tbl_Book_Copies.Book_ID =Tbl_Book_Author.Book_ID
INNER JOIN Tbl_Library_Branch ON Tbl_Library_Branch.Branch_ID = Tbl_Book_Copies.Branch_ID
WHERE Author_Name = ISNULL(@Author_Name,Author_Name)
AND Branch_Name = 'Central'
GO 

EXEC dbo.Stp_find_authorandbranch @author_Name = 'Wolff, Tobias'