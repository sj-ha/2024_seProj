select * from dept;
SELECT * from bonus;
SELECT * from emp;

--smith�� �̸�, ���, �޿���?
select ENAME, EMPNO, SAL from emp where ename='smith';
select ENAME, EMPNO, SAL from emp where ename='SMITH';
--CLERK, PRESIDENT, SALESMAN ������ �ϴ� �������� �̸�, ���, JOB��?
SELECT ename, empno, job FROM EMP WHERE JOB='CLERK' or job ='PRESIDENT' or job = 'SALESMAN';
SELECT ename, empno, job FROM EMP WHERE job in ('CLERK', 'PRESIDENT', 'SALESMAN');
--1250�̻� 1600������ �޿��� �޴� �������� �̸�, ���, JOB, �޿���?
select ename, empno, job, sal from emp where ((1250 <= sal) and (sal  <= 1600));
select ename, empno, job, sal from emp where (sal between 1250 and 1600);
--�̸��� ������ �ι�° �ڸ��� E�� �������� �̸�, ���, JOB��?
select ename, empno, job from emp where ename like '%E_';
--���ӻ���� ���� ������ �̸�, ���, JOB��?
select ename, empno, job from emp where mgr is null;

--SMITH�� �̸�, ���, ����, �޿�, �μ� ��ȣ��?
select ENAME "�̸�", EMPNO "���", job "����", sal "�޿�", deptno "�μ� ��ȣ" from emp where ename='SMITH';
--SMITH�� �̸�, ���, �μ�����?
select a.ename, a.empno, b.dname "�μ���" from emp a
left join dept b on a.deptno = b.deptno where a.ename='SMITH';
--research �μ��� �μ���, ��ġ, �̸�, �����?
select b.dname, b.loc, a.ename, a.empno from emp a
left join dept b on a.deptno = b.deptno where b.dname='RESEARCH';
--SMITH�� �̸�, ���, �μ���, �μ���ȣ��?
select a.ename, a.empno, b.dname, a.deptno from emp a
left join dept b on a.deptno = b.deptno where a.ename = 'SMITH';
select a.ename, a.empno, b.dname, a.deptno from emp a, dept b where a.ename = 'SMITH';


