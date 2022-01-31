clear screen;
SET SERVEROUTPUT ON;


--Loop Break Type 1
DECLARE 
        NUM INT := 0;

BEGIN
    LOOP
	    NUM := NUM+1;
		DBMS_OUTPUT.PUT_LINE(NUM);
		
		IF NUM=5 THEN
		   EXIT;
		END IF;
		
	END LOOP;
END;
/


--Loop Break Type 2
DECLARE 
        NUM INT := 0;

BEGIN
    LOOP
	    NUM := NUM+1;
		DBMS_OUTPUT.PUT_LINE(NUM);

		EXIT WHEN NUM=5;
	END LOOP;
END;
/