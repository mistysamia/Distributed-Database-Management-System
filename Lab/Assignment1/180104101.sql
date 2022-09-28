clear screen;


-------------------------------------------------
------------           1           --------------
-------------------------------------------------

--Create table Student

drop table Student; 
create table Student(studentId int ,name varchar2(20), 
phone varchar2(20), age int);


insert into Student values (1,'Samia','01792004254',23);
insert into Student values (2,'Misty','01792004432',21);
insert into Student values (3,'Rahman','01794224254',22);
insert into Student values (4,'Rukaiya','01792533454',27);
insert into Student values (5,'Bristy','01798424254',28);
insert into Student values (6,'Jesmin','01792002354',53);
insert into Student values (7,'Reza','01792004573',40);
insert into Student values (8,'Lia','01792247254',32);
insert into Student values (9,'Tuhin','01778504254',45);
insert into Student values (10,'Rafiq','01797494254',63);



--Create table Borrows

drop table Borrows; 
create table Borrows(studentId int ,bookId int,dateBorrowed date);


insert into Borrows values (4,5,'23-JUN-2020');
insert into Borrows values (6,6,'13-NOV-2021');
insert into Borrows values (4,3,'05-JUN-2019');
insert into Borrows values (1,4,'17-MAY-2020');
insert into Borrows values (4,5,'28-DEC-2020');
insert into Borrows values (8,6,'30-AUG-2021');
insert into Borrows values (1,5,'18-DEC-2019');
insert into Borrows values (9,5,'02-AUG-2018');
insert into Borrows values (4,5,'13-NOV-2020');
insert into Borrows values (2,10,'25-JUN-2021');


--Create table Book

drop table Book;
create table Book(bookId int ,authorId int,title varchar2(50),
genre varchar2(50));


insert into Book values (5,1,'Gitanjali','Horror');
insert into Book values (1,2,'Pother Panchali','Non-Fiction');
insert into Book values (6,3,'Gulliver''s Travels','Graphic Novel');
insert into Book values (2,4,'Anne Frank''s Diary','Historical Fiction');
insert into Book values (6,5,'November Rain','Fantasy');
insert into Book values (1,6,'Aranyak','Non-Fiction');
insert into Book values (1,7,'Lal Shalu','Mystery');
insert into Book values (8,8,'Shesher Kabita','Literary Fiction');
insert into Book values (9,9,'Chokher Bali','Adventure');
insert into Book values (2,10,'Ami-Topu','Non-Fiction');


--Create table Author

drop table Author; 
create table Author(authorId int,name varchar2(50),
age int);


insert into Author values (1,'Ishwar Chandra Gupta',67);
insert into Author values (2,'Peary Chand Mitra',53);
insert into Author values (3,'Ishwar Chandra Vidyasagar',45);
insert into Author values (4,'Lal Behari Dey',82);
insert into Author values (5,'Michael Madhusudan Dutt ',49);
insert into Author values (6,'Rajnarayan Basu',67);
insert into Author values (7,'Dinabandhu Mitra',81);
insert into Author values (8,'Sanjib Chandra Chattopadhyay',78);
insert into Author values (9,'Ekram Ali ',61);
insert into Author values (10,'Hemendrakumar Roy',73);


-------------------------------------------------
------------           2           --------------
-------------------------------------------------


--Querys

--a
select Student.name as Student_Name  from Student inner join Borrows on 
Student.studentId = Borrows.studentId inner join Book ON
Borrows.bookId= Book.bookId where Book.title = 'Gulliver''s Travels';
--b
select max(Author.age) as Author_Age from Author inner join Book on
Author.authorId= Book.authorId where
Book.genre='Non-Fiction';
--c
select Student.phone as Student_Phone from Student inner join Borrows on 
Student.studentId = Borrows.studentId inner join Book ON
Borrows.bookId= Book.bookId where Book.title = 'Gitanjali' group BY
Student.phone Having count(Student.studentId)>2;


commit;



