select distinct author.`Name` from author
inner join authorship on author.`ID` = authorship.`Author_ID`
inner join book on book.`ISBN` = authorship.`Book_ID`
where book.`YearIssued` = 2002;

select book.`Title`, count(*) as 'Number of Copies' from book
inner join copy on book.`ISBN` = copy.`Book_ID`
group by copy.Book_ID;

select distinct loan.`copyID`, book.`Title` from loan
right join copy on loan.`copyID` = copy.`barCode`
inner join book on copy.`Book_ID` = book.`ISBN`
where (loan.`borrowDate` < '2013-01-01') and (loan.`borrowDate` > '2009-12-31');

select member.`ID` as 'Member ID', member.`Name`, loan.`copyID` as 'Copy ID', book.`Title` as 'Book Title' from member
left join loan on member.`ID` = loan.`memberID`
inner join copy on loan.`copyID` = copy.`barCode`
inner join book on copy.`Book_ID` = book.`ISBN`
where loan.status = 1;