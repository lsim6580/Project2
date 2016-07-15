/* Creating the author table */
CREATE TABLE Author (
ID INT NOT NULL AUTO_INCREMENT,
Name VARCHAR(250) NOT NULL,
PRIMARY KEY(ID)
);

/* Creating the book table */
CREATE TABLE Book (
ISBN varchar(15) NOT NULL UNIQUE,
Title varchar(250) NOT NULL,
Edition varchar(10) NOT NULL,
YearIssued INT NOT NULL
);

/* Creating the copy table */
CREATE TABLE Copy (
barCode varchar(10) NOT NULL UNIQUE,
Book_ID varchar(15),
PRIMARY KEY (barCode),
FOREIGN KEY (Book_ID) REFERENCES Book(ISBN)
);

/* Creating the Authorship table*/
CREATE TABLE Authorship (
ID INT NOT NULL AUTO_INCREMENT,
Main tinyint NOT NULL,
Book_ID varchar(15) NOT NULL,
Author_ID INT NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY (Book_ID) REFERENCES Book(ISBN),
FOREIGN KEY (Author_ID) REFERENCES Author(ID)
);

/* Creating the Member table*/
CREATE TABLE Member (
ID INT NOT NULL AUTO_INCREMENT,
Name varchar(250) NOT NULL,
Gender tinyint NOT NULL,
Email varchar(250) NOT NULL,
PRIMARY KEY (ID)
);

/*Creating the loan table*/
CREATE TABLE Loan (
ID INT NOT NULL AUTO_INCREMENT,
copyID varchar(10) NOT NULL,
memberID INT NOT NULL,
borrowDate Date NOT NULL,
returnDate Date,
status int,
PRIMARY KEY(ID),
FOREIGN KEY (copyID) REFERENCES Copy(barcode),
FOREIGN KEY (memberID) REFERENCES Member(ID)
);