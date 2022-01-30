clear screen;
SET SERVEROUTPUT ON;

create or replace procedure isOdd
is 
BEGIN
   DBMS_OUTPUT.PUT_LINE('hello ');
End isOdd;
/

--Print Procedure type 1
begin 
    isOdd;
end;
/	

--Print Procedure type 2
EXEC isOdd;