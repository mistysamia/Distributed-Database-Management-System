clear screen;
SET SERVEROUTPUT ON;


DECLARE 
    NUM INT := 5;

BEGIN
    FOR i IN 1..NUM LOOP
		DBMS_OUTPUT.PUT_LINE(i);
	END LOOP;
END;
/
