--create table dept2 as select * from dept;
select * from dept2;

select * from dept2 where deptno = '50';
--update dept2 set loc='Jeju' where deptno = '50';