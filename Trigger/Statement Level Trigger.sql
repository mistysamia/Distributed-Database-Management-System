clear screen;
SET SERVEROUTPUT ON;

create or replace trigger t1
after update
of taka
on money

DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('Updated');
End;
/

-- Query 
/*
update money set taka=1000 where id=1;
insert into money values(5,'E',380);
*/