clear screen;
SET VERIFY OFF;
SET SERVEROUTPUT ON;


DECLARE
    
	N number ;
	Num number ;
	indx number:=1;
	student_exists number:= 0;

	
	ageAuth Author.age%TYPE;
	maxAuth number:=-1;
	minAuth number:=101;
	
	bookId BOOK.bid%TYPE;
	bookIdTemp BOOK.bid%TYPE;
	
	borrowsBookId borrows.bid%TYPE;
	borrowsStudentId borrows.sid%TYPE;
	sum1 number:=0;
	
BEGIN
 
     select count(aid) into N from Author;
     FOR i IN 1..N LOOP
	    select age into ageAuth from Author where aid = i;
		IF maxAuth<ageAuth THEN
		    maxAuth := ageAuth; 
		END IF;
		
		IF minAuth>ageAuth THEN
		    minAuth := ageAuth; 
		END IF;
	 END LOOP;
	 
	 
	 select count(bid) into bookId from BOOK;
	 
	 bookId:=bookId+1;
	 insert into BOOK values(bookId,minAuth,'Book 1','Novel');
	 
	 bookId:=bookId+1;
	 insert into BOOK values(bookId,minAuth,'Book 2','Novel');
	 
	 
	 select bookId into bookIdTemp from BOOK where aid=maxAuth;
	 
	 
	 
	 select count(*) into N from borrows;
	 
	 FOR i IN 1..N LOOP
        indx:=1;
		WHILE indx<N
		LOOP
		    BEGIN
		        select bid,sid  into borrowsBookId,borrowsStudentId from borrows
				where bid = i and sid=indx and ( dateBorrowed>='01-jan-2017' and dateBorrowed<='31-dec-2018');
			EXCEPTION 
                WHEN NO_DATA_FOUND THEN
                    student_exists := 1;			
			END;
			
			
			IF student_exists = 1 THEN
				student_exists := 0;
			ELSE
				student_exists := 0;
			    sum1:=sum1+1;
            END IF;
			indx:=indx+1;
	    END LOOP;
	 END LOOP;
	 
	 
	 
	 
	 
END;
/

commit;
