-- courtesy: Anika Sayara, Faculty, CSE, AUST

clear screen;

DROP TABLE STUDENT CASCADE CONSTRAINTS;
DROP TABLE FACULTY CASCADE CONSTRAINTS;
DROP TABLE COURSE CASCADE CONSTRAINTS;
DROP TABLE ENROLLED CASCADE CONSTRAINTS;

CREATE TABLE STUDENT (
	snum number, 
	sname varchar2(30), 
	major char(3), 
	slevel char(1), 
	age number,
        PRIMARY KEY(snum)); 



CREATE TABLE FACULTY(
	Fid number, 
	fName varchar2(30), 
	deptid number,
	PRIMARY KEY(Fid));



CREATE TABLE COURSE (
	cnum number, 
	cname varchar2(30), 
	meets_at varchar2(12), 
	room char(4), 
	Fid number,
	PRIMARY KEY(cnum),
	FOREIGN KEY(Fid) REFERENCES FACULTY(Fid));


 
CREATE TABLE ENROLLED(
	snum number, 
	cnum number,
	FOREIGN KEY(snum) REFERENCES STUDENT(snum),
	FOREIGN KEY(cnum) REFERENCES COURSE(cnum));



insert into student (snum, sname, major, slevel, age) values (1, 'Sajid Abdullah', 'CSE', '1', 19); 
insert into student (snum, sname, major, slevel, age) values (2, 'Abdullah Karim', 'CSE', '1', 19); 
insert into student (snum, sname, major, slevel, age) values (3, 'Sajid Rahmatullah', 'CSE', '2', 20); 
insert into student (snum, sname, major, slevel, age) values (4, 'Abid Barkatullah', 'CSE', '2', 22); 
insert into student (snum, sname, major, slevel, age) values (5, 'Barkatullah Shahid', 'CSE', '3', 19); 
insert into student (snum, sname, major, slevel, age) values (6, 'Abid Abdullah', 'CSE', '3', 20); 
insert into student (snum, sname, major, slevel, age) values (7, 'Abdullah Hafiz', 'CSE', '3', 21); 
insert into student (snum, sname, major, slevel, age) values (8, 'Rahmatullah Hafiz', 'CSE', '3', 21); 
insert into student (snum, sname, major, slevel, age) values (11, 'Sajid Abdullah', 'ME', '1', 19); 
insert into student (snum, sname, major, slevel, age) values (12, 'Abdullah Karim', 'ME', '1', 20); 

/*
insert into student (snum, sname, major, slevel, age) values (13, 'Sajid Rahmatullah', 'ME', '2', 20); 
insert into student (snum, sname, major, slevel, age) values (14, 'Abid Barkatullah', 'ME', '2', 22); 
insert into student (snum, sname, major, slevel, age) values (15, 'Barkatullah Shahid', 'ME', '3', 19); 
insert into student (snum, sname, major, slevel, age) values (16, 'Abid Abdullah', 'ME', '3', 20); 
insert into student (snum, sname, major, slevel) values (17, 'Abdullah Hafiz', 'ME', '3'); 
insert into student (snum, sname, major, slevel, age) values (18, 'Rahmatullah Hafiz', 'ME', '3', 21); 
insert into student (snum, sname, major, slevel, age) values (21, 'Sajid Abdullah', 'EEE', '1', 19); 
insert into student (snum, sname, major, slevel, age) values (22, 'Abdullah Karim', 'EEE', '1', 21); 
insert into student (snum, sname, major, slevel, age) values (23, 'Sajid Rahmatullah', 'EEE', '2', 22); 
insert into student (snum, sname, major, slevel) values (24, 'Abid Barkatullah', 'EEE', '2'); 
insert into student (snum, sname, major, slevel, age) values (25, 'Barkatullah Shahid', 'EEE', '3', 19); 
insert into student (snum, sname, major, slevel, age) values (26, 'Abid Abdullah', 'EEE', '3', 23); 
insert into student (snum, sname, major, slevel, age) values (27, 'Abdullah Hafiz', 'EEE', '3', 21); 
insert into student (snum, sname, major, slevel, age) values (28, 'Rahmatullah Hafiz', 'EEE', '3', 24); 

 
insert into faculty values(1, 'Abdullah', 1); 
insert into faculty values(2, 'Rahmatullah', 1); 
insert into faculty values(3, 'Shariful Islam', 2); 
insert into faculty values(4, 'Zobair', 3);  


insert into course values(1, 'Programming', '10:00am', 'R128', 1); 
insert into course values(2, 'Database', '10:00am', 'R127', 2); 
insert into course values(3, 'Drawing', '11:00am', 'R128', 2); 
insert into course values(4, 'Circuit', '10:00am', 'R126', 3); 
insert into course values(5, 'Electronics', '10:00am', 'R128', 3); 
insert into course values(6, 'Algorithm', '10:00am', 'R128', 3); 
insert into course values(7, 'System Analysis', '10:00am', 'R128', 1); 
insert into course values(8, 'Mechanics', '10:00am', 'R128', 4); 
 
 
 
insert into enrolled values(1,1); 
insert into enrolled values(2,1); 
insert into enrolled values(3,1); 
insert into enrolled values(4,1); 
insert into enrolled values(5,1); 
insert into enrolled values(7,1); 
insert into enrolled values(8,1); 
insert into enrolled values(11,1); 
insert into enrolled values(12,1); 
insert into enrolled values(13,1); 
insert into enrolled values(14,1); 
insert into enrolled values(15,1); 
insert into enrolled values(16,1); 
insert into enrolled values(21,1); 
insert into enrolled values(22,1); 
insert into enrolled values(23,1); 
insert into enrolled values(24,1); 
insert into enrolled values(25,1); 
insert into enrolled values(26,1); 
insert into enrolled values(27,1); 
insert into enrolled values(28,1); 
 
 
insert into enrolled values(1,2); 
insert into enrolled values(2,1); 
insert into enrolled values(3,3); 
insert into enrolled values(4,1); 
insert into enrolled values(5,4); 
insert into enrolled values(7,1); 
insert into enrolled values(8,5); 
insert into enrolled values(11,6); 
insert into enrolled values(12,1); 
insert into enrolled values(13,7); 
insert into enrolled values(14,8); 
insert into enrolled values(15,3); 
insert into enrolled values(16,1); 
insert into enrolled values(21,4); 
insert into enrolled values(22,1); 
insert into enrolled values(23,5); 
insert into enrolled values(24,1); 
insert into enrolled values(25,6); 
insert into enrolled values(26,1); 
insert into enrolled values(27,3); 
insert into enrolled values(28,2); 
 
 
insert into enrolled values(1,8); 
insert into enrolled values(2,4); 
insert into enrolled values(3,1); 
insert into enrolled values(4,7); 
insert into enrolled values(5,3); 
insert into enrolled values(7,1); 
insert into enrolled values(8,2); 
insert into enrolled values(11,4); 
insert into enrolled values(12,1); 
insert into enrolled values(13,2); 
insert into enrolled values(14,7); 
insert into enrolled values(15,1); 
insert into enrolled values(16,3); 
insert into enrolled values(21,1); 
insert into enrolled values(22,2); 
insert into enrolled values(23,5); 
insert into enrolled values(24,1); 
insert into enrolled values(25,6); 
insert into enrolled values(26,1); 
insert into enrolled values(27,2); 
insert into enrolled values(28,1);
*/
commit;
 
