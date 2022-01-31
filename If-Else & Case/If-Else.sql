clear screen
SET SERVEROUTPUT ON;


DECLARE 
        NUM money.taka%TYPE;

BEGIN
    SELECT TAKA INTO NUM FROM MONEY WHERE ID = 1;
    
	IF MOD (NUM,3) = 0 THEN
	    DBMS_OUTPUT.PUT_LINE('ZERO');
    ELSIF MOD (NUM,3) = 1 THEN
	    DBMS_OUTPUT.PUT_LINE('ONE');
    ELSE 
 	    DBMS_OUTPUT.PUT_LINE('TWO');
	  
	END IF;
END;
/

