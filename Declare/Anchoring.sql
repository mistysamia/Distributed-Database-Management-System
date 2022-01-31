clear screen;
SET SERVEROUTPUT ON;


DECLARE 
        t_name money.name%TYPE;
        t_taka money.taka%TYPE :=700;

BEGIN
 
    update money set taka = t_taka where id =1;
	DBMS_OUTPUT.PUT_LINE(t_name);
	DBMS_OUTPUT.PUT_LINE(t_taka);
END;
/
