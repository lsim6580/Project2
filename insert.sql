
INSERT INTO Author (ID, Name)
VALUES (1, 'Soren Lauesen'), (2, 'Robert Lafore'), (3, 'Adam Trachtenberg'), (4, 'David Sklar'), (5, 'Kevin Tatroe');

INSERT INTO Book (ISBN, Title, Edition, YearIssued)
VALUES ('0672324539', 'Data Structures and Algorithms in Java', '2', 2002),
('0321181433', 'User Interface Design: A Software Engineering Perspective', '1', 2004),
('0201745704', 'Software Requirements: Styles and Teqniques', '2', 2002),
('144936375X', 'PHP Cookbook: Solutions and Examples for PHP Programmers', '3', 2014),
('1449392776', 'Programming PHP', '3', 2013);

INSERT INTO Copy (barcode, Book_ID)
VALUES ('1234567', '0672324539'), ('5432122', '0672324539'), ('1237783', '144936375X'), 
('8902342', '1449392776'), ('1256231', '0321181433'), ('1117891', '0201745704');

INSERT INTO Authorship (ID, Main, Book_ID, Author_ID)
VALUES (1, 1, '0672324539', 2), (2, 1, '0321181433', 1), (3, 1, '0201745704', 1),
(4, 1, '144936375X', 4), (5, 0, '144936375X', 3), (6, 1, '1449392776', 5);

INSERT INTO Member (ID, Name, Gender, Email)
VALUES (1, 'Adam Smith', 1, 'smith@library.us'), (2, 'Jane Jackson', 2, 'jane@library.us'), 
(3, 'Joesph Davis', 1, 'joseph@library.us'), (4, 'Yusif Kareem', 1, 'yusif@library.us'), 
(5, 'Jasmin Harris', 2, 'jasmin@library.us')

 INSERT INTO Loan (ID, copyID, memberID, borrowDate, returnDate, status)
 VALUES (1, '1234567', 1, '06/01/2010', '06/10/2010', 2), (2, '1234567', 2, '02/15/2011', '02/20/2011', 2),
 (3, '5432122', 1,  '07/01/2011', '07/05/2011', 2), (4, '1237783', 5, '07/15/2012', '08/01/2012', 2);

INSERT INTO Loan(ID, copyID, memberID, borrowDate, status)
VALUES (5, '1237783', 4, '02/01/2013', 3), (6, '8902342', 3, '10/12/2013', 1);
