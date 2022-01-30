clear screen;
SET SERVEROUTPUT ON;

create or replace procedure isOdd(A in money.id%type)
is 
BEGIN
   DBMS_OUTPUT.PUT_LINE('hello '||A);
End isOdd;
/

--Print Procedure type 1
begin 
    isOdd(3);
end;
/	

--Print Procedure type 2
EXEC isOdd(66);

