drop table test;
create table test(id number,name varchar2(20));
insert into test(id,name)(select empno,empname from emp);
commit;
SET ECHO OFF;
SPOOL F:\output\test.txt
SET LINESIZE 100
SET PAGESIZE 50
select * from test;
SPOOL OFF;
exit;
