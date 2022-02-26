clear screen;
SET VERIFY OFF;
SET SERVEROUTPUT ON;


DECLARE
	N number:=0 ;
	Num number:=0 ;
	student_exists number:= 0;
    tempCount number:=0 ;
	
	ageAuth Author.age%TYPE;
	maxAuth number:=-1;
	minAuth number:=101;
	
	maxAgedAuth  Author.aid%TYPE;
	minAgedAuth  Author.aid%TYPE;
	
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
			maxAgedAuth:= i;
		END IF;
		
		IF minAuth>ageAuth THEN
		    minAuth := ageAuth; 
			minAgedAuth:= i;
		END IF;
	 END LOOP;
	 
	 
	 select count(bid) into bookId from BOOK;
	 
	 bookId:=bookId+1;
	 insert into BOOK values(bookId,minAgedAuth,'Book 1','Novel');
	 
	 bookId:=bookId+1;
	 insert into BOOK values(bookId,minAgedAuth,'Book 2','Novel');
	 
	 select count(bid) into Num from book;
	 select count(*) into N from borrows;
	 
	 
	 FOR i IN 1..Num LOOP
	    BEGIN
		        select bid into tempCount from book where bid = i and aid=maxAgedAuth;
		EXCEPTION 
                WHEN NO_DATA_FOUND THEN
                    student_exists := 1;			
		END;
		IF student_exists = 1 THEN
				student_exists := 0;
			ELSE
				student_exists := 0;
			    FOR indx IN 1..N LOOP
	              BEGIN
		              select count(sid) into tempCount from borrows where sid=indx and bid = i 
					  and ( dateBorrowed>='01-jan-2017' and dateBorrowed<='31-dec-2017');
		          EXCEPTION 
                      WHEN NO_DATA_FOUND THEN
                        student_exists := 1;			
		              END;
		              IF student_exists = 1 THEN
		               	student_exists := 0;
		              ELSE
			            student_exists := 0;
			            sum1:=sum1+tempCount;
                      END IF;
	            END LOOP;
            END IF;
	 END LOOP;
	 
	 DBMS_OUTPUT.PUT_LINE('The Oldest author''s Books was borrowed within 2017 to 2018  : '||sum1||' times.');
END;
/

select bid,aid from Book;