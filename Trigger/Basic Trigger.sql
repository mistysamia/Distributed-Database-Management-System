clear screen;
SET SERVEROUTPUT ON;

create or replace trigger trigger1
after INSERT
on money

DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('Inserted After');
End;
/

create or replace trigger trigger2
before INSERT
on money

DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('Inserted Before');
End;
/


-- Query 
/*
update money set taka=1000 where id=1;
insert into money values(5,'E',380);
*/