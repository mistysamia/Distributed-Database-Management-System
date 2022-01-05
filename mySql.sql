SET SERVEROUTPUT ON;


/*
DECLARE
    A money.id%TYPE;
	B money.id%TYPE;

BEGIN
    FOR R in (select * from money) LOOP
	   A: = R.id;
	   B := R.taka;
	   DBMS_OUTPUT.PUT_LINE(A||' '||B);
	END LOOP;
END;
/

*/

/*
CREATE OR REPLACE PROCEDURE sampleprocedure is
BEGIN
	DBMS_OUTPUT.PUT_LINE('Hello World');
	
END sampleprocedure;
/

EXEC sampleprocedure;

*/

CREATE OR REPLACE PROCEDURE outParam
(A IN number , B OUT number) is
BEGIN
    B:=10;
	DBMS_OUTPUT.PUT_LINE(A);
	
END outParam;
/

DECLARE 
      NUM number ;
BEGIN
    outParam(2,NUM);
	DBMS_OUTPUT.PUT_LINE(NUM);
	
END;
/