clear screen;
SET SERVEROUTPUT ON;


DECLARE 
        NUM INT := 0;

BEGIN
    WHILE NUM<5
    LOOP
	    NUM := NUM+1;
		DBMS_OUTPUT.PUT_LINE(NUM);
	END LOOP;
END;
/