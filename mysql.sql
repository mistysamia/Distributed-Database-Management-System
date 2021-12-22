SET SERVEROUTPUT ON;


/*
BEGIN
    DBMS_OUTPUT.PUT_LINE('HELLO WORLD');
END;
/

BEGIN
    NULL;
END;
/

BEGIN
     insert into money values(4,'D',130);
end;
/
*/
/*
declare 
     t_name varchar2(20);
	 t_taka number;
BEGIN
     select name , taka into t_name, t_taka from money where id=1;
	 DBMS_OUTPUT.PUT_LINE(t_name);
	 DBMS_OUTPUT.PUT_LINE(t_taka);
end;
/


declare 
     t_name money.name%TYPE;
	 t_taka money.taka%TYPE;
BEGIN
     select name , taka into t_name, t_taka from money where id=1;
	 DBMS_OUTPUT.PUT_LINE(t_name);
	 DBMS_OUTPUT.PUT_LINE(t_taka);
end;
/


declare 

	 t_taka money.taka%TYPE;
BEGIN
     t_taka:=500;
	 update money
	 set taka=t_taka where id=1;
	 DBMS_OUTPUT.PUT_LINE(t_taka);
end;
/

select * from money;


declare 

	 t_taka money.taka%TYPE:=700;
BEGIN
  
	 update money
	 set taka=t_taka where id=1;
	 DBMS_OUTPUT.PUT_LINE(t_taka);
end;
/



declare 
	 NUM int:=5;
BEGIN
  
	 if mod(NUM,2)=0 THEN
	    DBMS_OUTPUT.PUT_LINE('Even');
	ELSE
	    DBMS_OUTPUT.PUT_LINE('Odd');
	end if;
end;
/


declare 
	 NUM int:=5;
BEGIN
  
	if mod(NUM,3)=0 THEN
	    DBMS_OUTPUT.PUT_LINE('Zero');
	ELSIF MOD(NUM,3) =1 then
	    DBMS_OUTPUT.PUT_LINE('One');
	ELSE
	    DBMS_OUTPUT.PUT_LINE('Two');
	end if;
end;
/


declare 
	 NUM money.taka%TYPE;
BEGIN
    select taka into NUM from money where id=1;
	if mod(NUM,3)=0 THEN
	    DBMS_OUTPUT.PUT_LINE('Zero');
	ELSIF MOD(NUM,3) =1 then
	    DBMS_OUTPUT.PUT_LINE('One');
	ELSE
	    DBMS_OUTPUT.PUT_LINE('Two');
	end if;
end;
/


declare 
	 NUM money.taka%TYPE;
BEGIN
    select taka into NUM from money where id=1;
	Case
    	when mod(NUM,3)=0 THEN
	      DBMS_OUTPUT.PUT_LINE('Zero');
	    when MOD(NUM,3) =1 then
	      DBMS_OUTPUT.PUT_LINE('One');
	    ELSE
	      DBMS_OUTPUT.PUT_LINE('Two');
	end case;
end;
/



declare 
	 NUM int := 0;
BEGIN
    
	Loop
    	Num := Num+1;
	    DBMS_OUTPUT.PUT_LINE(Num);
	    IF NUM = 5 THEN
		    exit;
		end if;
	end Loop;
end;
/



declare 
	 NUM int := 0;
BEGIN
    
	while num<5 Loop
    	Num := Num+1;
	    DBMS_OUTPUT.PUT_LINE(Num);
	end Loop;
end;
/

BEGIN

    for i in 1..5 LOOP  
      DBMS_OUTPUT.PUT_LINE(i);
	end loop;
end;
/


declare 
	 NUM money.id%Type := 0;
BEGIN
    select count(id) into NUM from money;
	for i in 1..5 LOOP 
	   NUM := NUM+1;
	   insert into money values (NUM , 'D', 200);
	end Loop;
end;
/



Set verify off;

declare 
   A int := &x;
   B int := &y;
  
Begin 
     DBMS_OUTPUT.PUT_LINE(A+B);
End;
/

*/

Set verify off;

declare 
   A varchar2(20) := '&name';
   B varchar2(20) := '&address';
  
Begin 
     DBMS_OUTPUT.PUT_LINE(A || ' ' || B);
End;
/
commit;


