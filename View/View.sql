drop view myview;
create or replace view myview(view_A,view_B,view_C)
as select s.id, s.name,s.taka from money S;

select * from myview;

commit;