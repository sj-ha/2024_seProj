select * from dept;
SELECT * from bonus;
SELECT * from emp;

--smith의 이름, 사번, 급여는?
select ENAME, EMPNO, SAL from emp where ename='smith';
select ENAME, EMPNO, SAL from emp where ename='SMITH';
--CLERK, PRESIDENT, SALESMAN 역할을 하는 직원들의 이름, 사번, JOB은?
SELECT ename, empno, job FROM EMP WHERE JOB='CLERK' or job ='PRESIDENT' or job = 'SALESMAN';
SELECT ename, empno, job FROM EMP WHERE job in ('CLERK', 'PRESIDENT', 'SALESMAN');
--1250이상 1600이하의 급여를 받는 직원들의 이름, 사번, JOB, 급여는?
select ename, empno, job, sal from emp where ((1250 <= sal) and (sal  <= 1600));
select ename, empno, job, sal from emp where (sal between 1250 and 1600);
--이름의 끝에서 두번째 자리가 E인 직원들의 이름, 사번, JOB은?
select ename, empno, job from emp where ename like '%E_';
--직속상관이 없는 직원의 이름, 사번, JOB은?
select ename, empno, job from emp where mgr is null;

--SMITH의 이름, 사번, 역할, 급여, 부서 번호는?
select ENAME "이름", EMPNO "사번", job "역할", sal "급여", deptno "부서 번호" from emp where ename='SMITH';
--SMITH의 이름, 사번, 부서명은?
select a.ename, a.empno, b.dname "부서명" from emp a
left join dept b on a.deptno = b.deptno where a.ename='SMITH';
--research 부서의 부서명, 위치, 이름, 사번은?
select b.dname, b.loc, a.ename, a.empno from emp a
left join dept b on a.deptno = b.deptno where b.dname='RESEARCH';
--SMITH의 이름, 사번, 부서명, 부서번호는?
select a.ename, a.empno, b.dname, a.deptno from emp a
left join dept b on a.deptno = b.deptno where a.ename = 'SMITH';
select a.ename, a.empno, b.dname, a.deptno from emp a, dept b where a.ename = 'SMITH';


