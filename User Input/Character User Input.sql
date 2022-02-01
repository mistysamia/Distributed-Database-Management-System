clear screen;
SET SERVEROUTPUT ON;
-- If we want to take user input then have to write this
SET VERIFY OFF;


-- Input Can be taken from Declare Block
DECLARE
    A VARCHAR2(100) := '&NAME';
	B VARCHAR2(100) := '&ADDRESS';
	
BEGIN
     DBMS_OUTPUT.PUT_LINE(A || ' ' || B);
END;
/


-- Input Can be taken from a Begin Block
DECLARE 
      A VARCHAR2(10);
BEGIN
    A := '&Name ';
    DBMS_OUTPUT.PUT_LINE(A);

END;
/
