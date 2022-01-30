clear screen;
SET SERVEROUTPUT ON;

create or replace trigger t1
after update or insert
of taka
on money
for each row

DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('Updated or Inserted');
End;
/

-- Query 
/*
update money set taka=1000 where id=1;
insert into money values(5,'E',380);
*/