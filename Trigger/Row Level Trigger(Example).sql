clear screen;
SET SERVEROUTPUT ON;

create or replace trigger t1
after update or insert
of taka
on money
for each row

DECLARE
    A money.id%type;
    B money.name%type;
    C money.taka%type;
BEGIN
    A := :New.id;
    B := :old.name;
    C := :new.taka;
    insert into money1 values (A,b,c);
End;
/

-- Query 
/*
update money set taka=1000 where id=1;
insert into money values(5,'E',380);
*/
