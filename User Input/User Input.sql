clear screen;
SET SERVEROUTPUT ON;
-- If we want to take user input then have to write this
SET VERIFY OFF;


DECLARE
    A int := &x;
	B int := &y;
	
BEGIN
     DBMS_OUTPUT.PUT_LINE(A+B);
END;
/
