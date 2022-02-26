clear screen;

DROP TABLE STUDENT CASCADE CONSTRAINTS;
DROP TABLE BORROWS CASCADE CONSTRAINTS;
DROP TABLE BOOK CASCADE CONSTRAINTS;
DROP TABLE AUTHOR CASCADE CONSTRAINTS;

CREATE TABLE STUDENT (
	sid int, 
	sname varchar2(30), 
	phone varchar2(15), 
	age int,
        PRIMARY KEY(sid)); 

CREATE TABLE AUTHOR (
	aid int, 
	aname varchar2(30), 
	age int,
        PRIMARY KEY(aid)); 

CREATE TABLE BOOK (
	bid int, 
	aid int, 
	title varchar2(100), 
	genre varchar2(20),
        PRIMARY KEY(bid),
	FOREIGN KEY(aid) REFERENCES AUTHOR(aid)); 

CREATE TABLE BORROWS(
	sid int, 
	bid int, 
	dateBorrowed date,
	FOREIGN KEY(sid) REFERENCES STUDENT(sid),
	FOREIGN KEY(bid) REFERENCES BOOK(bid));
	
	
insert into student(sid, sname, phone, age) VALUES (1,'Abid Abdullah','01710123456',20);
insert into student(sid, sname, phone, age) VALUES (2,'Abdullah Karim','01710123457',21);
insert into student(sid, sname, phone, age) VALUES (3,'Sajid Rahmatullah','01710123156',22);
insert into student(sid, sname, phone, age) VALUES (4,'Abdullah Hafiz','01710123458',20);
insert into student(sid, sname, phone, age) VALUES (5,'Rahmatullah Hafiz','01710124456',19);
insert into student(sid, sname, phone, age) VALUES (6,'Abid Barkatullah','01710173456',18);
insert into student(sid, sname, phone, age) VALUES (7,'Nazmul Hasan','01710113456',23);
insert into student(sid, sname, phone, age) VALUES (8,'Hasnat Ahmed','01710153456',24);
insert into student(sid, sname, phone, age) VALUES (9,'Sadman Sakib','01710193456',21);
insert into student(sid, sname, phone, age) VALUES (10,'Sazid Rahman','01710143456',19);


insert into author(aid, aname, age) VALUES (1,'William Shakespeare',50);
insert into author(aid, aname, age) VALUES (2,'Leo Tolstoy',45);
insert into author(aid, aname, age) VALUES (3,'Arthur Conan Doyle',51);
insert into author(aid, aname, age) VALUES (4,'Emily Dickinson',42);
insert into author(aid, aname, age) VALUES (5,'Edgar Allan Poe',30);
insert into author(aid, aname, age) VALUES (6,'Rabindranath Tagore',48);
insert into author(aid, aname, age) VALUES (7,'Rudyard Kipling',32);
insert into author(aid, aname, age) VALUES (8,'Oscar Wilde',55);
insert into author(aid, aname, age) VALUES (9,'Ernest Hemingway',60);
insert into author(aid, aname, age) VALUES (10,'John Keats',46);


insert into book(bid, aid, title, genre) VALUES (1,2, 'War and Peace', 'Novel');
insert into book(bid, aid, title, genre) VALUES (2,2, 'Anna Karenina', 'Novel');
insert into book(bid, aid, title, genre) VALUES (3,10, 'Selected Poems', 'Poetry');
insert into book(bid, aid, title, genre) VALUES (4,9, 'The Old Man and the Sea', 'Literary Fiction');
insert into book(bid, aid, title, genre) VALUES (5,6, 'Gitanjali', 'Poetry');
insert into book(bid, aid, title, genre) VALUES (6,6, 'Shesher Kabita', 'Novel');
insert into book(bid, aid, title, genre) VALUES (7,1, 'Macbeth', 'Novel');
insert into book(bid, aid, title, genre) VALUES (8,3, 'A Study in Scarlet', 'Novel');
insert into book(bid, aid, title, genre) VALUES (9,3, 'The Hound of the Baskervilles', 'Novel');
insert into book(bid, aid, title, genre) VALUES (10,4, 'Poems', 'Poetry');
insert into book(bid, aid, title, genre) VALUES (11,6, 'Kabuliwala', 'Short Story');
insert into book(bid, aid, title, genre) VALUES (12,6, 'Chokher Bali', 'Novel');	
	
	
insert into borrows(sid, bid, dateBorrowed) VALUES (1,4,'13-feb-2019');	
insert into borrows(sid, bid, dateBorrowed) VALUES (2,4,'14-jan-2018');	
insert into borrows(sid, bid, dateBorrowed) VALUES (2,4,'03-mar-2017');	
insert into borrows(sid, bid, dateBorrowed) VALUES (1,4,'15-apr-2019');	
insert into borrows(sid, bid, dateBorrowed) VALUES (3,2,'16-jul-2018');	
insert into borrows(sid, bid, dateBorrowed) VALUES (3,2,'17-feb-2017');	
insert into borrows(sid, bid, dateBorrowed) VALUES (5,1,'18-aug-2019');	
insert into borrows(sid, bid, dateBorrowed) VALUES (4,1,'19-feb-2018');	
insert into borrows(sid, bid, dateBorrowed) VALUES (5,3,'01-aug-2017');	
insert into borrows(sid, bid, dateBorrowed) VALUES (4,9,'31-jan-2018');	
insert into borrows(sid, bid, dateBorrowed) VALUES (6,8,'13-feb-2017');	
insert into borrows(sid, bid, dateBorrowed) VALUES (7,7,'14-jan-2019');	
insert into borrows(sid, bid, dateBorrowed) VALUES (7,5,'15-mar-2019');	
insert into borrows(sid, bid, dateBorrowed) VALUES (8,5,'16-feb-2018');	
insert into borrows(sid, bid, dateBorrowed) VALUES (6,5,'17-aug-2017');	
insert into borrows(sid, bid, dateBorrowed) VALUES (9,5,'19-jul-2019');	
insert into borrows(sid, bid, dateBorrowed) VALUES (7,6,'01-feb-2018');	
insert into borrows(sid, bid, dateBorrowed) VALUES (8,6,'03-mar-2018');	
insert into borrows(sid, bid, dateBorrowed) VALUES (8,4,'30-jul-2019');	
insert into borrows(sid, bid, dateBorrowed) VALUES (8,4,'06-jan-2018');	