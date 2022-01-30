clear screen;

drop table money;

create table money (id number , name varchar2(20), taka number);

select * from money;

insert into money values(1,'A',100);
insert into money values(2,'B',200);
insert into money values(3,'C',300);

commit;
select * from money;

