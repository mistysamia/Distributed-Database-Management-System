clear screen;
SET SERVEROUTPUT ON;

create or replace function isEven(A in varchar2, B out number,C in out number)
return varchar2
is
BEGIN
   DBMS_OUTPUT.PUT_LINE('hello there  '||A||' '||C);
   B:=35;
   C:=B+c;
   return 'Never';
End isEven;
/

--Function Print Type 1
Declare 
   Name varchar2(100);
   Num number;
   Num2 number:=12;
begin 
    Name := isEven('Dumb',Num,Num2); 
	DBMS_OUTPUT.PUT_LINE(Name);
	DBMS_OUTPUT.PUT_LINE(Num||'  '||Num2);
end;
/