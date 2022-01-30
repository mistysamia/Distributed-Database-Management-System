clear screen;
SET VERIFY OFF;
SET SERVEROUTPUT ON;


-- Number Type Input
Accept X number Prompt "Enter Your ID = "
Declare 
    A number;
Begin 
    A := &x;
	DBMS_OUTPUT.PUT_LINE('ID = '||A);
END;
/

-- Character Type Input
Accept X char Prompt "Enter Your Name = " 
--Char should be used not 'VARCHAR2'
Declare 
	 B varchar2(30);
Begin 
	B :='&x';
	DBMS_OUTPUT.PUT_LINE('Name = '||B);
END;
/
