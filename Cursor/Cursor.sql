clear screen;
SET SERVEROUTPUT ON;

Declare 
     A money.id%TYPE;
	 B money.taka%type;
Begin 
    for R IN (select * from money) LOOP    
	    A:=R.id;
		B:=R.taka;
		DBMS_OUTPUT.PUT_LINE(A||' '||B);
    END LOOP;
END;
/