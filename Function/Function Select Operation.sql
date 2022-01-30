clear screen;
SET SERVEROUTPUT ON;

create or replace function isEven(A in number)
return number
is
BEGIN
   DBMS_OUTPUT.PUT_LINE('hello there  '||A);
   return 6;
End isEven;
/

select isEven(29) from dual;

