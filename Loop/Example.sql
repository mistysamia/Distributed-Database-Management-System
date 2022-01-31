clear screen;
SET SERVEROUTPUT ON;


DECLARE 
        NUM money.id%TYPE := 0;

BEGIN
    select count(id) into NUM from money;
    FOR i IN 1..5 LOOP
	    NUM := NUM+1;
		insert into money values (NUM , 'D',300);
		DBMS_OUTPUT.PUT_LINE(i);
	END LOOP;
END;
/