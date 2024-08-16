1 .Display all the employees whose name start with P

OUTPUT ; no rows selected




2.                 Display all the analyst and clerks in department 10 and 20




SELECT * FROM EMP
WHERE JOB IN('MANAGER','CLERK') AND DEPTNO IN(10,20);

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7369 SMITH      CLERK           7902 17-DEC-80        800                    20
 7566 JONES      MANAGER         7839 02-APR-81       2975                    20
 7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
 7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
 7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


3.                 List all the department names which are having blank space in their  
          location and having   Dname with at least two EE's

SQL> SELECT * FROM DEPT
  2  WHERE LOC LIKE'%%' AND DNAME LIKE '%E%E%';

    DEPTNO DNAME          LOC
---------- -------------- -------------
        20 RESEARCH       DALLAS


4 Display all the employees who are having at least two AA's in their job description and salary in the range 1200 to 2800 in dept 10,20,30.
SQL> SELECT * FROM EMP
  2  WHERE JOB LIKE '%A%A%' AND ((SAL>1200) AND(SAL<2800)) AND DEPTNO IN (10,20,30);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30


5.                 Display all the employees who aren't having any reporting manager with number ending with '8' and not working as 'MANAGER' or 'SALESMAN' in dept 30.

 SELECT * FROM EMP
 WHERE MGR LIKE'%8' AND JOB NOT IN('MANAGER','SALESMAN') AND DEPTNO=30;

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7900 JAMES      CLERK           7698 03-DEC-81        950                    30

6.                 List all the employees who are not getting any commission with their designation neither 'CLERK' nor 'MANAGER' and joined in the year 81 and getting salary more than 1500.

SQL> SELECT * FROM EMP
  2  WHERE COMM IS NULL AND JOB NOT IN('MANAGER','CLERK') AND HIREDATE LIKE'%81' AND SAL>1500;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

         
7.                 List all the employees whose name is having at least FIVE characters and joined in the year 80 or 81 and having a reporting manager with salary in the range 800 to 2000 in dept 30 or 40.

SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'_____'
  3  AND ((HIREDATE LIKE '%80') OR(HIREDATE LIKE '%81'))
  4  AND SAL>800 AND SAL<2000
  5  AND DEPTNO IN(30,40);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
8.                 Display all the employees whose name is having exactly 5 characters and having vowel as middle character
 SELECT * FROM EMP
 WHERE ENAME LIKE'_____'
  AND ENAME LIKE '__A__' OR  ENAME LIKE '__E__'OR ENAME LIKE '__I__'
 OR ENAME LIKE '__O__' OR ENAME LIKE '__U__';

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7369 SMITH      CLERK           7902 17-DEC-80        800                    20
  7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
  7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
  7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
  7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20



9.                 Display all the products whose name is having 2 consecutive underscores
`
10.            Display all the employees whose name starts with s and does not end with vowel


SQL> SELECT * FROM EMP
  2   WHERE (ENAME LIKE'S%')
  3   AND (ENAME NOT LIKE'%A'
  4   OR ENAME NOT LIKE'%E'
  5   OR ENAME NOT LIKE'%I'
  6   OR ENAME NOT LIKE'%O'
  7   OR ENAME NOT LIKE'%U');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20


11.            Display all the products whose name is having ' (single quote) as character

12.            Display all the employees who is working as manager for only one employee

13.            List all the employees where reporting manager ID is ending with the number 8?
    

SQL> SELECT * FROM EMP
  2  WHERE MGR LIKE'%8';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30


14.            List all the employees who's job is salesman and the salary ranges between 1500 to 3000?

SQL> SELECT * FROM EMP
  2  WHERE JOB='SALESMAN'
  3  AND SAL BETWEEN 1500 AND 3500;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

15.            List all the employees who are working as managers and salesman in dept 20 & 30 with a salary in the range of 1000 to 3000?


SQL>  SELECT * FROM EMP
  2   WHERE JOB IN('MANAGER','SALESMAN') AND DEPTNO IN(20,30)
  3  AND SAL BETWEEN 1000 AND 3000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

16.            List all the employees who's salary is in the range of 1000 to 2000 in dept   
           10,20,30 except all clerks?


SQL> SELECT * FROM EMP
  2  WHERE SAL BETWEEN 1000 AND 2000
  3  AND DEPTNO IN(10,20,30)
  4  AND JOB NOT IN('CLERK');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30


17.            List all the employees who's names starts with letter A and who's salary is greater than 1000?

S
SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'A%' AND SAL>1000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20


18.            List all the student name whose percentage is above 60.

19.            Display all the employee whose name has consecutive m in it.
SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'%M%M%';

no rows selected


20.            Display all the employee whose job not belongs to clerk and whose department number is 10 and 20.
           

SQL> SELECT * FROM EMP
  2  WHERE JOB NOT IN('CLERK') AND DEPTNO IN(10,20);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
SELS

21.            List all the employee names who as always two P's and whose salary ranges between 1000 to 3000.
          

22.            Display all the employee name who don't have commission and working in department 10,20.

SQL> SELECT * FROM EMP
  2  WHERE COMM IS NULL AND DEPTNO IN(10,20);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

       

23.            list all the employees who is not having reporting manager in dept 20 and 30.
       

SQL> SELECT * FROM EMP 
  2  WHERE MGR IS NULL AND DEPTNO IN (20,30);

no rows selected


24.            list all the employees whose name does not start with A
      

SQL> SELECT *  FROM EMP
  2  WHERE ENAME NOT LIKE'A%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10



25.            display all the employees who have joined in the year 87.
         
SQL> SELECT * FROM EMP
  2  WHERE HIREDATE LIKE'%87';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20


26.            list the employees who have 2 T's in there name.
          

SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'%T%T%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20


27.            list all the employees whose employee no is not 7654.


SQL> SELECT * FROM EMP
  2  WHERE EMPNO NOT LIKE'7654';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


28.            Write a query to display all the salesmen in Dept 30

SQL> SELECT * FROM EMP
  2  WHERE JOB IN ('SALESMAN')
  3  AND DEPTNO IN 30;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30


29.            Write a query to display the employees whose salary is 3000 and 2000

SQL> SELECT * FROM EMP

  2  WHERE SAL IN(2000,3000);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

30.            List all the employees whose name has at least one R in it.

SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'%R%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10



31.            List all the employees whose salary is between the range 800 and 2500


SQL> SELECT * FROM EMP
  2  WHERE SAL BETWEEN 800  AND 2500;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


32.            List all the employees except who works for Dept 30

SQL> SELECT * FROM EMP
  2  WHERE DEPTNO NOT IN 30;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


33.            Display all the employees who's analyst salary greater than equal to 2000.


SQL> SELECT * FROM EMP
  2  WHERE JOB IN('ANALYST')
  3  AND SAL>=2000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20


34.            Display all the employees who's name end with T and start with A .
SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'A%T';

no rows selected

35.            Display all the employees who are managers and with their annual salary

SQL> SELECT JOB,SAL*12 FROM EMP
  2  WHERE JOB IN('MANAGER');

JOB           SAL*12
--------- ----------
MANAGER        35700
MANAGER        34200
MANAGER        29400

36.            Display all the employees who are salesmen and with their annual bonus

SQL> SELECT JOB,COMM*12 FROM EMP
  2  WHERE JOB IN('SALESMAN');

JOB          COMM*12
--------- ----------
SALESMAN        3600
SALESMAN        6000
SALESMAN       16800
SALESMAN           0


37.            Display all the employees who's job name end with second character E

SQL> SELECT ENAME ,JOB FROM EMP
  2  WHERE JOB LIKE'%E_';

ENAME      JOB
---------- ---------
JONES      MANAGER
BLAKE      MANAGER
CLARK      MANAGER

38.            Display all the employee who don't have commission and salary greater than 1000.

SQL> SELECT * FROM EMP
  2  WHERE COMM IS NULL AND SAL>1000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


39.            Display department name which 'LL' in their Location.

SQL> SELECT * FROM DEPT
  2  WHERE LOC LIKE'%L%L%';

    DEPTNO DNAME          LOC
---------- -------------- -------------
        20 RESEARCH       DALLAS


40.            List all the employee whose department is not 20 and name don't have 'M' as first letter.

SQL> SELECT * FROM EMP
  2  WHERE DEPTNO NOT IN 20 
  3  AND ENAME NOT LIKE'M%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30


41.            List all the employee with employee number between 7000 to 8000.

SQL> SELECT * FROM EMP
  2  WHERE EMPNO BETWEEN 7000 AND 8000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


42.            Display all the employee whose salary not in the range from 1500 to 3000.
SQL> SELECT * FROM EMP
  2  WHERE SAL NOT BETWEEN 1500 AND 3000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


43.            Display all the employees having greater than 1000 who joined in the month of December and  who having reporting manager ?

SQL> SELECT  * FROM EMP
  2  WHERE SAL>1000 AND HIREDATE LIKE'%DEC%' AND MGR IS NOT NULL;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20


44.            Display all the employees who have the at least minimum 4 characters in  their jobs in the department 20?


45.            List all the employee who are in  clerk name  end with s except department number 10 ?

SQL> SELECT * FROM EMP
  2  WHERE JOB IN('CLERK')
  3  AND ENAME LIKE'%S' AND DEPTNO NOT IN 10;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30

46.            Display  the employee name should be 5 character?


47.            List all the employee who are getting salary more than highest commission?

SQL> SELECT * FROM EMP
  2  WHERE SAL>COMM;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

48.            Display the sentence  with a combination of ename ,sal ,deptno from emp table

SQL> SELECT ENAME||SAL||DEPTNO FROM EMP;

ENAME||SAL||DEPTNO
-----------------------------------------
SMITH80020
ALLEN160030
WARD125030
JONES297520
MARTIN125030
BLAKE285030
CLARK245010
SCOTT300020
KING500010
TURNER150030
ADAMS110020
JAMES95030
FORD300020
MILLER130010

49.            Display the employee whose second letter from the beginning is 'A'  and the last second letter is 'R'

SQL> SELECT * FROM EMP 
  2  WHERE ENAME LIKE'_A%R_';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30

50.            Display the employee who is earning salary more than 300/- but not more than 3000/-

SQL> SELECT * FROM EMP
  2  WHERE SAL>300 AND SAL<3000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


51.            Display the details of analyst

SQL> SELECT * FROM EMP
  2  WHERE JOB=('ANALYST');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20


52.            Display the details of employee who does not take commission

SQL> SELECT * FROM EMP
  2  WHERE COMM IS NULL;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


53.            List all employee with annual salary with 500 rs bonus and working as manager joined in the month of April and may
SQL> SELECT ENAME,JOB,HIREDATE,SAL*12, COMM+(500)
  2  FROM EMP
  3  WHERE JOB='MANAGER' AND HIREDATE LIKE'%APR%' AND HIREDATE LIKE'%MAY%';

no rows selected


54.            Write a query to display employee whose emp no starts with 78 and 79 whose designation contains at least one  E  in dept no 20 and 30


SQL>  SELECT * FROM EMP
  2   WHERE EMPNO LIKE'78%' OR EMPNO LIKE'79%'
  3  AND JOB LIKE'%E%' AND DEPTNO IN(20,30);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30


55.            List all the manager working in dept 30 and 20 hired between 02-jan-81 to 9-june-81



SQL> SELECT * FROM EMP
  2  WHERE JOB='MANAGER' AND DEPTNO IN (30,20) 
  3  AND HIREDATE BETWEEN '02-JAN-81' AND '09-JUN-81';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30


56.            List the employee job with hiredate whose name starts between A and S working in dept 30 and 20

SQL> SELECT ENAME,JOB,HIREDATE,DEPTNO FROM EMP 
  2  WHERE ENAME BETWEEN 'A' AND 'S'AND DEPTNO IN(30,20);

ENAME      JOB       HIREDATE      DEPTNO
---------- --------- --------- ----------
ALLEN      SALESMAN  20-FEB-81         30
JONES      MANAGER   02-APR-81         20
MARTIN     SALESMAN  28-SEP-81         30
BLAKE      MANAGER   01-MAY-81         30
ADAMS      CLERK     23-MAY-87         20
JAMES      CLERK     03-DEC-81         30
FORD       ANALYST   03-DEC-81         20



57.            Write a query to display Dname which contains at least two S and at least one of O or A in their location



SQL> SELECT * FROM DEPT
  2  WHERE DNAME LIKE '%S%S%' AND LOC LIKE'%O%' OR LOC LIKE'%A%';

    DEPTNO DNAME          LOC
---------- -------------- -------------
        20 RESEARCH       DALLAS
        30 SALES          CHICAGO


58.            List all the manager working in department 20 &30 hired between 02-jan-81 & 09-june-81.

SQL> SELECT *  FROM EMP
  2  WHERE JOB='MANAGER' AND DEPTNO IN(20,30) AND HIREDATE BETWEEN '02-JAN-81' AND '09-JUN-81';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30


59.            Write a query to display employees whose employee id starts with 78 & 79 whose designation contains atleast one E and  working in department 20  & 30.
SQL> 
SQL> SELECT * FROM EMP 
  2  WHERE EMPNO LIKE'78%' OR EMPNO LIKE'79%' 
  3  AND JOB LIKE'%E%' AND DEPTNO IN(20,30);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30


60.            List the employee job with hiredate whose name starts between 'A' & 'S' working in department 20 & 30 also display commission amount.


SQL> SELECT * FROM EMP
  2  WHERE ENAME BETWEEN 'A' AND 'S' AND DEPTNO IN(20,30);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20


61.            Write a query to display name which contains atleast two S & atleast one 'O' or 'A' in their location from department table.

 SELECT * FROM DEPT
 WHERE DNAME LIKE'%S%S%'
 AND LOC LIKE'%O%' OR LOC LIKE'%A%';

DEPTNO DNAME          LOC
------ -------------- -------------
    20 RESEARCH       DALLAS
    30 SALES          CHICAGO


62.            List all the employee with annual salary with 5000rs bonus working as manager joined in the month of april& may.

SQL> SELECT ENAME,(SAL*12)+5000 ,HIREDATE FROM EMP
  2  WHERE JOB='MANAGER'
  3  AND HIREDATE LIKE'%APRIL%' OR HIREDATE LIKE'%MAY%';

ENAME      (SAL*12)+5000 HIREDATE
---------- ------------- ---------
BLAKE              39200 01-MAY-81
ADAMS              18200 23-MAY-87


63.            List all the manager working in department 20 &30 hired between 02-jan-81 & 09-june-81.

SQL>  SELECT JOB ,DEPTNO,HIREDATE
  2   FROM EMP
  3   WHERE JOB=('MANAGER') AND DEPTNO IN(20,30) AND
  4   HIREDATE BETWEEN '02-JAN-1981' AND '09-JUN-1981';

JOB           DEPTNO HIREDATE
--------- ---------- ---------
MANAGER           20 02-APR-81
MANAGER           30 01-MAY-81

64.            Write a query to display employees whose employee id starts with 78 & 79 whose designation contains atleast one E and  working in department 20  & 30.

 SELECT * FROM EMP
 WHERE EMPNO LIKE'78%' OR EMPNO LIKE'79%'
 AND JOB LIKE'%E%' AND DEPTNO IN(20,30);

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7839 KING       PRESIDENT            17-NOV-81       5000                    10
  7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
  7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
  7900 JAMES      CLERK           7698 03-DEC-81        950                    30


65.            List the employee job with hiredate whose name starts between 'A' & 'S' working in department 20 & 30 also display commission amount.

 SELECT * FROM EMP
 WHERE ENAME BETWEEN 'A' AND 'S' AND DEPTNO IN(20,30);

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
  7566 JONES      MANAGER         7839 02-APR-81       2975                    20
  7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
  7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
  7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
  7900 JAMES      CLERK           7698 03-DEC-81        950                    30
  7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

66.            Write a query to display name which contains atleast two S & atleast one 'O' or 'A' in their location from department table.

SQL> SELECT * FROM DEPT
  2  WHERE DNAME LIKE'%S%S%' AND LOC LIKE'%O%' 
  3  OR LOC LIKE'%A%';

    DEPTNO DNAME          LOC
---------- -------------- -------------
        20 RESEARCH       DALLAS
        30 SALES          CHICAGO


67.            List all the employee with annual salary with 5000rs bonus working as manager joined in the month of april& may.


SQL>  SELECT ENAME,(SAL*12)+5000,JOB,HIREDATE FROM EMP
  2   WHERE JOB='MANAGER' AND HIREDATE LIKE'%APRIL%' AND HIREDATE LIKE'%MAY%';

no rows selected


68.            List all the employees in dept 20 who have salary less than 500

  4  
SQL> SELECT * FROM EMP
  2  WHERE DEPTNO=20 AND SAL<500;

no rows selected

69.            List all the employees who work in dept 10


 SELECT * FROM EMP
 WHERE DEPTNO=10;

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
  7839 KING       PRESIDENT            17-NOV-81       5000                    10
  7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


70.            List all the employees who should report to manager in dept 30


SQL> SELECT * FROM EMP
  2  WHERE MGR IS NULL AND DEPTNO=30;

no rows selected

71.            List all the employees whose salry is greater than 3000

SQL> SELECT * FROM EMP 
  2  WHERE SAL>3000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000                    10

72.            List all the employees whose job is analyst

SQL> SELECT * FROM EMP
  2  WHERE JOB='ANALYST';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

73.            List the employees whose salary in the range of 2000 to 3000 except in dept 10 and 20 in all clerks?
SQL> SELECT * FROM EMP 
  2  WHERE JOB='CLERK' AND DEPTNO NOT IN(10,20)
  3   AND SAL BETWEEN 2000 AND 3000;

no rows selected

74.            List the employees whose name is having letter 'E' as last but two character?
SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'%E_';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

75.            list all the employees who is having comm in dept 30?
SQL> SELECT * FROM EMP
  2  WHERE DEPTNO=30 AND COMM IS NOT NULL;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

76.            Display all the employee whose earning salary in the range 2500 and 5000 in dept 10 and 20?

SQL> SELECT * FROM EMP
  2  WHERE SAL BETWEEN 2500 AND 5000
  3  AND DEPTNO IN(10,20);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

77.            list all the employees who are not having reporting manager in dept 20?


SQL> SELECT * FROM EMP
  2  WHERE DEPTNO=20 AND MGR IS NULL
  3  ;

no rows selected

78.            List the employees who are '5' no in second position in empno  as well as mgr

79.            List all the salgrade whose lowsalary between 1000 to 2000
  3  
SQL> SELECT * FROM EMP
  2  WHERE SAL BETWEEN 1000 AND 2000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


80.            List the employees name who's are having 3rd letter should 'A' in ename in it

SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'__A%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20

81.            List all the manager who earn less than 3000

SQL> SELECT * FROM EMP
  2  WHERE JOB='MANAGER' AND SAL<3000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10

82.            List the departments name whos are having 3rd letter should 'n' in it
SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'__N%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10

83.            Display all employees working as a Clerk and Sal not more than 1500 in Dept 10,20,30.

SQL> SELECT * FROM EMP
  2  WHERE JOB='CLERK' AND SAL<1500 AND DEPTNO IN(10,20,30);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

84.            List the employees whose job and Ename having letter 'T'.

SQL> SELECT * FROM EMP
  2  WHERE JOB LIKE'%T%' AND ENAME LIKE'%T%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20

85.            List all employees except who are having Commission
SQL>  SELECT * FROM EMP
  2   WHERE COMM IS NOT  NULL;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

86.            Write a query to display Deptname and location having character 'o'.
SQL> SELECT * FROM DEPT
  2  WHERE DNAME LIKE'%O%' AND LOC LIKE'%O%';

    DEPTNO DNAME          LOC
---------- -------------- -------------
        10 ACCOUNTING     NEW YORK
        40 OPERATIONS     BOSTON

87.            List the employees whose EmpNo ends with '9' and don't  having reporting Manager.


SQL> SELECT * FROM EMP
  2  WHERE EMPNO LIKE'%9' AND MGR IS NULL;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000                    10

88.            Display all the employees whose joined between Feb and may.

SQL> SELECT * FROM EMP
  2  WHERE HIREDATE LIKE'%FEB%' OR HIREDATE LIKE'%MAR%' OR  HIREDATE LIKE'%APR%' OR HIREDATE LIKE'%MAY%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20

89.            Display all the enames who is having a reporting manager 7698.

SQL> SELECT * FROM EMP
  2  WHERE MGR LIKE'7698';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30

90.            Display all the employees whose getting highest salary in department 20
           and  30.

91.            List all the enames in department 30 who is having 'A'is one of the character .

SQL> SELECT * FROM EMP
  2  WHERE DEPTNO=30 AND ENAME LIKE'%A%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30

92.            List all the department names and location with atleast 2O's.
SQL> SELECT * FROM DEPT
  2  WHERE DNAME LIKE'%O%O%' AND LOC LIKE'%O%O%';

    DEPTNO DNAME          LOC
---------- -------------- -------------
        40 OPERATIONS     BOSTON

93.            List all employee whose name starts with k and ends k?

SQL> SELECT * FROM EMP 
  2  WHERE ENAME LIKE'K%K';

no rows selected

94.            List the department which are having k in their location as well as their department name?
  3  
SQL> SELECT * FROM DEPT
  2  WHERE LOC LIKE'%K%' AND DEPTNO LIKE'%K%';

no rows selected


95.            List all the employee is having letter P in the 3rd position?


SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'__P%';

no rows selected

96.            List all the emp whoes MANAGER employee number between 7698,7839 and salary ends with number 5?
SQL> SELECT * FROM EMP
  2  WHERE MGR BETWEEN 7698  AND 7839 
  3  AND SAL LIKE'%5';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20


97.            List all the employee whose employee 3rd letter  should 2 and his manager  annual salary between 30000 to 35000?
SQL> SELECT SAL*12 ,ENAME FROM EMP
  2   WHERE EMPNO LIKE'__2%' AND JOB='MANAGER'  AND SAL BETWEEN 3000 AND 3500;

no rows selected

98.            List the employee who joined in any year but not belongs to the month of march.

SQL>  SELECT * FROM EMP
  2  WHERE HIREDATE NOT LIKE'%MAR%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


99.            list the employee of department no 30 or 10 joined in the year 81.
SQL> SELECT * FROM EMP
  2  WHERE DEPTNO IN(10,30)
  3  AND HIREDATE LIKE'%81';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30


100.       Display the names of employee working in department no 10 or 20 or 30 employee working as clerk,salesman or analyst.


SQL> SELECT * FROM EMP
  2  WHERE DEPTNO IN(10,20,30)
  3  AND JOB IN('CLERK','SALESMAN','ANALYST');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

101.       List the employees whose names having a character get 'll' together.

SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'%L%L%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

102.       Display the details of the employee whose comm is more than their salary.

 SELECT * FROM EMP
 WHERE SAL>COMM;

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
  7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
  7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

103.       List all the emp whose name has atleast one 'a' in it.

SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'%A%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30

104.       List all the emp in dept 30 whose sal >= 1500.

SQL> SELECT * FROM EMP
  2  WHERE DEPTNO=30 AND SAL>=1500;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30


105.       List all the emp who are hired in year 81.

SQL> SELECT * FROM EMP
  2  WHERE HIREDATE LIKE'%81';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

106.       List all the analyst in all the department.

SQL> SELECT * FROM EMP
  2  WHERE JOB='ANALYST';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

107.       List all the emp who are receiving commission.

SQL> SELECT * FROM EMP
  2  WHERE COMM IS NOT NULL;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

108.       List the employees whose name does not start with ‘A’

SQL> SELECT * FROM EMP
  2  WHERE ENAME NOT LIKE'A%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

109.       Display all the employee who are joined in JAN.

SQL> SELECT * FROM EMP
  2  WHERE HIREDATE LIKE'%JAN%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

110.       Display all the employee who are ‘MANAGER’s having E as the last character in ename but salary having exactly 4 character.
SQL> SELECT * FROM EMP
  2  WHERE JOB='MANAGER' AND ENAME LIKE'%E' AND SAL LIKE'____';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30

111.       List all the employees who are having reporting managers in dept 20.

SQL> SELECT * FROM EMP
  2  WHERE MGR IS NOT NULL AND DEPTNO=20;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

112.       Display the employees who are having employee no as  7902,7934.
SQL> SELECT * FROM EMP
  2  WHERE EMPNO LIKE'7902' OR EMPNO LIKE'7934';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

113.       Display all the employees name start with J?

SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'J%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30


114.       List all the employees whose Commission greater than 100?

SQL> SELECT * FROM EMP
  2  WHERE COMM>100;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30

115.       List all the employees who have joined in the month of April?
SQL> SELECT * FROM EMP
  2  WHERE HIREDATE LIKE'%APR%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20

116.       List all the employees whose salary is less than 5000?
SQL> SELECT * FROM EMP
  2  WHERE SAL<5000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

117.       List all the employees who have joined in the year 82?

SQL> SELECT * FROM EMP
  2  WHERE HIREDATE LIKE'%82';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

118.       Display all the employees who's job has string 'na' in it.

SQL> SELECT * FROM EMP
  2  WHERE JOB LIKE'%NA%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

119.       Display all the employees who joined after Feb 81
SQL>  SELECT * FROM EMP
  2  WHERE HIREDATE < '28-FEB-1981';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30

120.       Display all the employees except those who are working in  dept10&30.

 SELECT * FROM EMP
 WHERE DEPTNO NOT IN(10,30);

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7369 SMITH      CLERK           7902 17-DEC-80        800                    20
  7566 JONES      MANAGER         7839 02-APR-81       2975                    20
  7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
  7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
  7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

121.       Display all the employees who's commission is not null.
> SELECT * FROM EMP
  WHERE COMM IS NOT NULL;

  EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------- ---------- --------- ---------- --------- ---------- ---------- ----------
   7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
   7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
   7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
   7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

122.       List all the employees who are having reporting manager  in dept 10&20.

 SELECT * FROM EMP
 WHERE MGR IS NOT NULL AND DEPTNO IN(10,20);

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7369 SMITH      CLERK           7902 17-DEC-80        800                    20
  7566 JONES      MANAGER         7839 02-APR-81       2975                    20
  7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
  7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
  7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
  7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
  7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

123.       Display all the employees whose job has string ‘ANA’ in it.

> SELECT * FROM EMP
  WHERE JOB LIKE '%ANA%';

  EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------- ---------- --------- ---------- --------- ---------- ---------- ----------
   7566 JONES      MANAGER         7839 02-APR-81       2975                    20
   7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
   7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
   7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
   7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

124.       Display all the presidents in department 10.
> SELECT * FROM EMP
  WHERE JOB='PRESIDENT' AND DEPTNO=10;

  EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------- ---------- --------- ---------- --------- ---------- ---------- ----------
   7839 KING       PRESIDENT            17-NOV-81       5000                    10

125.       List the employees whose hire date is before feb 81.
> SELECT * FROM EMP
  WHERE HIREDATE <'01-FEB-1981';

  EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------- ---------- --------- ---------- --------- ---------- ---------- ----------
   7369 SMITH      CLERK           7902 17-DEC-80        800                    20

126.       Display all the employees whose name starts with alphabet ‘B’ and ends with a ‘E’ and salary more than 2200.
 SELECT * FROM EMP
 WHERE ENAME LIKE'B%E' AND SAL>2200;

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30

127.       Display the students whose name is having both first character as ’B’ and last character as a vowel and percentage more than 85 but less than 90.

128.       Select all the employees whose name 4th character starts with 'n' and 1st character start with 'a' or 's' who is working in department 30

SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE
  3  'A__N%' OR ENAME LIKE'S__N%';

no rows selected

129.       List all the employees who is working in department 10 and salary in the rage of 1500 and 5000 and having commission >=500

SQL> SELECT * FROM EMP
  2  WHERE DEPTNO=10 AND SAL BETWEEN 1500 AND 5000 AND COMM>=500;

no rows selected

130.       List the employee except those who are working in dept 10 & 30 and joined after 03-Dec-81

131.       List all the employees whose name having consecutive 'SS' and working in dept  
          10 whose salary in the range of 500 and 1500
SELECT * FROM EMP
WHERE DEPTNO NOT IN(10,30) AND HIREDATE>'31-DEC-1981';

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
 7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20

132.       List those employees who are having reporting manager in dept 20,10,30 and name end with 'S'  with salary in the range of 2000 and 3000 and joined before 19-June-87
 SELECT * FROM EMP
 WHERE ENAME LIKE'%S' AND MGR IS NOT NULL
 AND DEPTNO IN(10,20,30)
 AND HIREDATE<'19-JUN-1987';

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7566 JONES      MANAGER         7839 02-APR-81       2975                    20
  7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
  7900 JAMES      CLERK           7698 03-DEC-81        950                    30


133.       list all the employees whose names end with TT.

SELECT * FROM EMP
WHERE ENAME LIKE'%TT';

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20

134.       list all the employees who have commission of 500 or more.
 SELECT * FROM EMP
 WHERE COMM>=500;

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
  7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30

135.       list all the employees whose salary is between the range 500 and 2000 and belongs to dept 20 and dept 30

 SELECT * FROM EMP
 WHERE DEPTNO IN(20,30)
 AND SAL BETWEEN 500 AND 2000;

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7369 SMITH      CLERK           7902 17-DEC-80        800                    20
  7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
  7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
  7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
  7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
  7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
  7900 JAMES      CLERK           7698 03-DEC-81        950                    30

136.       list all the salesman and analyst who work in dept 20 and dept 30
SELECT * FROM EMP
WHERE JOB IN('SALESMAN','ANALYST')
AND DEPTNO IN(20,30);

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
 7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
 7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
 7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
 7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
 7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

137.       list all the employees whose salary is less than 1000 and doesnt belong to
           dept 20

 SELECT * FROM EMP
 WHERE SAL<1000 AND DEPTNO NOT IN 20;

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7900 JAMES      CLERK           7698 03-DEC-81        950                    30

138.       List all the analyst in department number 20 and having salary greater
             than 2000.

 SELECT * FROM EMP
 WHERE JOB='ANALYST'
 AND DEPTNO=20 
  AND SAL>2000;

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
  7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

139.       List all the employees except clerk and analyst and who are not earning salary in the range 1000,3000.
 SELECT * FROM EMP
 WHERE JOB NOT IN('CLERK','ANALYST') 
 AND SAL BETWEEN 1000 AND 3000;

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
  7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
  7566 JONES      MANAGER         7839 02-APR-81       2975                    20
  7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
  7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
  7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
  7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

140.       Select all the salesman whose name second character starts with 'A' and who have joined after 20-FEB-81.

 SELECT * FROM EMP
 WHERE ENAME LIKE'_A%' 
 AND HIREDATE>'20-FEB-1981';

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
  7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
  7900 JAMES      CLERK           7698 03-DEC-81        950                    30

141.       List all the employees who are getting 3000 and excess salaries working in department 10 and 20.

 SELECT * FROM EMP
 WHERE SAL=3000 AND DEPTNO IN(10,20);

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
  7902 FORD       ANALYST         7566 03-DEC-81       3000                    20


142.       Select all the salesman whose name has atleast 1 character 'R' and whose salary is less than 1500 and who are joined after 21-FEB-81.
 SELECT * FROM EMP
 WHERE JOB='SALESMAN' AND ENAME LIKE'%R%'
 AND SAL<1500 AND HIREDATE >'21-FEB-1981';

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
 7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30

143.       Write a query to display all the employee details who joined on the year 81 and who has A in his employee name and who gets a commission in the deptno starting with 3.
 SELECT * FROM EMP
 WHERE HIREDATE LIKE'%81' AND ENAME LIKE'%A%'
AND COMM IS NOT NULL AND DEPTNO LIKE'3%';

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
 7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
 7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30

144.       Write a query to list all the employees who has a manager and has annual salary greater than 10000 and his empID is between 7850 to 7950 and who works as a analyst.

 SELECT  * FROM EMP
 WHERE (SAL*12)>10000 AND JOB='ANALYST' 
AND EMPNO BETWEEN 7850 AND 7950;

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

145.       Write a query to list all the department details where department name has E or A and whose location has A and whose deptno is 30.


SQL>  SELECT * FROM DEPT
  2   WHERE ((DNAME LIKE'%E%')OR (DNAME LIKE'%A%'))
  3   AND LOC LIKE'%A%' AND DEPTNO=30;

    DEPTNO DNAME          LOC
---------- -------------- -------------
        30 SALES          CHICAGO

146.       Write a query to display the employees who has salary less than 2000 and more than 3000 and who joined on NOV or SEP and gets a total monthly salary of less than 2000 including commision.

SELECT *
FROM EMP 
WHERE SAL <2000
AND SAL >3000
AND HIREDATE LIKE '%NOV%' OR HIREDATE LIKE '%SEP%'
AND (SAL+COMM)<2000;

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

147.       Write a query to display the employee details and quaterly salary of employees except SALESMAN whose salary i more than 500 but less than 2000 and name starts with S.
SQL> SELECT ENAME,JOB,SAL*3
  2  FROM EMP
  3  WHERE JOB!='SALESMAN'
  4  AND SAL>500 AND SAL<2000
  5  AND ENAME LIKE'S%';

ENAME      JOB            SAL*3
---------- --------- ----------
SMITH      CLERK           2400

148.       list all the names with 'E' present in their last names and their salaries is between  6000 and 12000
SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'%E'
  3  AND SAL BETWEEN 6000 AND 12000;

no rows selected

149.       hint: login using HR

150.       list all the names of employees who are not working as 'IT Programmer or clerk' and whose sal is more than 3000.
SELECT * FROM EMP
WHERE JOB!='CLERK' AND SAL>3000;

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7839 KING       PRESIDENT            17-NOV-81       5000                    10

151.       List all the departments starting with location no 1700 and those who have managers.

152.       hint:refer departments table in HR
         
153.       list all the employee  first and last name followed by 'your job is ' and the job along with their salaries greater than 9000

SQL> SELECT ENAME||'YOUR JOB IS'||JOB
  2  FROM EMP
  3  WHERE SAL>9000;

no rows selected

154.       list all the employees first name followed by ' your salary is ' salary and their phone number should contain atleast '1' number somewhere and they must not be Sales representative and hr representative.
SQL> SELECT ENAME||'YOUR SALARY IS'||SAL
  2  FROM EMP
  3  WHERE JOB NOT IN('SALESMAN','HR');

ENAME||'YOURSALARYIS'||SAL
-----------------------------------------
SMITHYOUR SALARY IS800
JONESYOUR SALARY IS2975
BLAKEYOUR SALARY IS2850
CLARKYOUR SALARY IS2450
SCOTTYOUR SALARY IS3000
KINGYOUR SALARY IS5000
ADAMSYOUR SALARY IS1100
JAMESYOUR SALARY IS950
FORDYOUR SALARY IS3000
MILLERYOUR SALARY IS1300

155.       Display only the manager codes of the employees whose salary is more than 1000 and hiring date is in the year 81

SQL> SELECT * FROM EMP
  2  WHERE JOB='MANAGER'
  3  AND SAL>1000
  4  AND HIREDATE LIKE'%81';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10

156.       Display all the employees who report to the manager 7698 and are salesman whose names end with N
SQL> SELECT * FROM EMP
  2  WHERE MGR=7698
  3  AND JOB='SALESMAN'
  4  AND ENAME LIKE'%N';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30

157.       Display only the employee name along with the joining date in one column from department 30 and the joining date is in the year 81

SQL>  SELECT ENAME ||HIREDATE
  2   FROM EMP
  3  WHERE DEPTNO=30
  4  AND HIREDATE LIKE'%81';

ENAME||HIREDATE
-------------------
ALLEN20-FEB-81
WARD22-FEB-81
MARTIN28-SEP-81
BLAKE01-MAY-81
TURNER08-SEP-81

158.       List the employees who are Clerks and salary is above 1000 and the hired date is after year 81
SQL> SELECT * FROM EMP
  2  WHERE SAL>1000
  3  AND JOB='CLERK'
  4  AND HIREDATE>'31-DEC-1981';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

159.       List the employees whose salary is between 1000 to 3000 except clerks whose name third character starts with A

SQL> SELECT * FROM EMP
  2  WHERE JOB!='CLERK'
  3  AND ENAME LIKE'__A%'
  4  AND SAL BETWEEN 1000 AND 3000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10

160.       List all the employees except salesman and manger in deptno 10
SQL> SELECT * FROM EMP
  2  WHERE JOB NOT IN('SALESMAN','MANAGER')
  3  AND DEPTNO=10;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

161.       List all the employees who are nor earning salary in the range  1500 and 3000

SQL> SELECT * FROM EMP
  2  WHERE SAL NOT BETWEEN 1500 AND 3000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

162.       Display all the employees who are 'MANAGER' having J as first character in ename

SQL> SELECT * FROM EMP
  2  WHERE JOB='MANAGER'
  3  AND ENAME LIKE'J%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20

163.       List all the salesman in deptno 20 and having greater than 2000

SQL> SELECT * FROM EMP
  2  WHERE JOB='SALESMAN'
  3  AND DEPTNO=20
  4  AND SAL>2000;

no rows selected

164.       List all the employees whose name starts with 'J' or 'F'
SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'J%' OR ENAME LIKE'F%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

165.       Display the names who are not salesman and analyst and whose salary is more than 1000 working in department 20 

SQL> SELECT * FROM EMP
  2  WHERE JOB NOT IN('SALESMAN','ANALYST')
  3  AND SAL>1000
  4  AND DEPTNO=20;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20

166.       display the name whose last but not two is L having some commission and does not belong department 10 and 20

SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'%L' AND ENAME NOT LIKE'%L_';

no rows selected

167.       salesman whose salary is ending with 5
SQL> SELECT * FROM EMP
  2  WHERE SAL LIKE'%5';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20

168.       employees joined between 80 and 81
SQL> SELECT * FROM EMP
  2  WHERE HIREDATE BETWEEN '01-JAN-1980' AND '31-DEC-1981';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

169.       list all the salesman whose name consists of n
SQL> SELECT * FROM EMP
  2  WHERE JOB='SALESMAN'
  3  AND ENAME LIKE'%N%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

170.       List all employees who is analyst ,clerk and salesman
SQL> SELECT * FROM EMP
  2  WHERE JOB IN('ANALYST','CLERK','SALESMAN');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

171.       List all the employees whose name start with a and end with n

SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'A%' AND ENAME LIKE'%N';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30

172.       List all the employees Whose name doesn't start with n
SQL> SELECT * FROM EMP
  2  WHERE ENAME NOT LIKE'N%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

173.       List all the employees whose name having 5 characters and salary between 2000 and 20000

SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'____'
  3  AND SAL BETWEEN 2000 AND 20000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

174.       Display all employees whose is working as analyst and salesman and working in dept 10 and 20 and salary less than 30000

SQL> SELECT * FROM EMP
  2  WHERE JOB IN('ANALYST','SALESMAN')
  3  AND DEPTNO IN(10,20)
  4  AND SAL<30000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

175.       List all the employees who joined in the year 82 and salary greater than 1000
SQL> SELECT * FROM EMP
  2  WHERE HIREDATE LIKE'%82'
  3  AND SAL>1000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


176.       List all the employees who are salesman and not have any commission
SQL> SELECT * FROM EMP
  2   WHERE JOB='SALESMAN'
  3  AND COMM IS NULL;

177.       List all the employees whose ratio of commission to salary is greater than 0.5
SQL> SELECT ENAME,SAL,COMM
  2  FROM EMP
  3  WHERE SAL>0
  4  AND COMM/SAL>0.5;

ENAME             SAL       COMM
---------- ---------- ----------
MARTIN           1250       1400

178.       Display the name and job of the employees whose name second character is 'L' and designation is not 'SALESMAN'
SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'_L%'
  3  AND JOB!='SALESMAN';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10

179.       Display all the employees whose name 3rd character is 'R' and getting some commission

SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'__R%'
  3  AND COMM IS NOT NULL;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

180.       select all the  employees having commision  >1000 join the job on sep whose name having 'T' last but two and dept no is not 10 or 20.
SQL> SELECT * FROM EMP
  2  WHERE COMM>1000
  3  AND HIREDATE LIKE'%SEP%' AND 
  4  ENAME LIKE'%T_' AND 
  5  DEPTNO NOT IN(10,20);

no rows selected

181.       select all the employees who join on date 17th of any year there sal is equal to 800 or 5000 and there deptno not equal  to 30
SQL> SELECT * FROM EMP
  2  WHERE HIREDATE LIKE'17%'
  3  AND SAL=800 OR SAL=5000
  4  AND DEPTNO !=30;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10

182.       select all the analyst whose name not having 2 consecutine  't's & sal is between 2000 and 3000 not belongs to deptno 10 or 20.
SQL> SELECT * FROM EMP
  2  WHERE JOB='ANALYST'
  3  AND ENAME NOT LIKE'%T%T%'
  4  AND SAL BETWEEN 2000 AND 3000 
  5  AND DEPTNO NOT IN(10,20);

no rows selected

183.       select all the employee who's name having 2 consecutive 'l'  they neither the salesman nor manager having sal <2000 & joining on 1st month of any year.
SELECT * FROM EMP
WHERE ENAME LIKE'%I%I%'
AND JOB NOT IN ('SALESMAN','MANAGER')
AND SAL<2000 AND HIREDATE LIKE'%JAN%';

184.       list all the employes whose job is analyst and name starts with the 3 rd character  as S and the salary more than 3000.
 SELECT * FROM EMP
 WHERE JOB=('ANALYST')
 AND ENAME LIKE'__S%' AND SAL>3000;

185.       list all the employees whose job is salesman and hiredate is between 17-dec-18 to 08-dec-81 and deptno as 30
 SELECT * FROM EMP
 WHERE JOB=('SALESMAN')
 AND HIREDATE BETWEEN '08-JAN-1981' AND '17-DEC-2018'
 AND DEPTNO=30;

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
  7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
  7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
  7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

186.       list all the employees whose name is king and the salary is greater than 5000 in the dept 10 and 20
SQL> SELECT * FROM EMP
  2  WHERE ENAME='KING'
  3  AND SAL>5000 AND DEPTNO IN(10,20);

no rows selected

AND 
 SELECT * FROM EMP
 WHERE ENAME='KING' AND DEPTNO IN(10,20);

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7839 KING       PRESIDENT            17-NOV-81       5000                    10

187.       list all the employees whose salary is more then 4000 and commission is null and deptno 10

SELECT * FROM EMP
WHERE SAL>4000 AND COMM IS NULL
AND DEPTNO=10;

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7839 KING       PRESIDENT            17-NOV-81       5000                    10

188.       list all the employees whose reporting manager is not null and the deptno is 10 and 30 and salary is more than 3000
SQL> SELECT * FROM EMP
  2  WHERE MGR IS NOT NULL
  3  AND DEPTNO IN (10,30)
  4  AND SAL>3000;

no rows selected

189.       List all the employees in dept 20, earning more than Rs 2500 and not having commission  and whose name does not start with ‘S’.

SELECT * FROM EMP
WHERE DEPTNO=20
AND SAL>2500
AND COMM IS NULL 
AND ENAME NOT LIKE'S%';

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7566 JONES      MANAGER         7839 02-APR-81       2975                    20
 7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

190.       Display all the employee whose earning salary not in the range 2500 and 5000 in dept 10 and 20 whose annual salary is ending with zero.

SELECT EMP.* , SAL*12 AS ANNUAL_SAL
FROM EMP 
WHERE SAL NOT BETWEEN 2500 AND 5000
AND SAL*12 LIKE '%0';

191.       Display all the employee who are joined after year 81, not working as managers and clerks in dept 10 and 20 with a salary in the range of 1000 to 3000.
 SELECT * FROM EMP
 WHERE HIREDATE >'31-DEC-1981'
 AND JOB NOT IN('MANAGER','CLERK')
 AND DEPTNO IN(10,20) 
 AND SAL BETWEEN 1000 AND 3000;

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20

192.       List the department names, Locations which are having letter ‘O’ in their locations as well as their department names NOT IN DEPT 20 AND 40.

193.       Select all the employees whose name start with s or A in departmetment 20 and  
         30. whose are joined before 01-may-81 and after 01-may-80.
        

194.       List  all the employees whose salary is between 1000 and 3000 who are salesman not working in department 10,20 with commission greater than 1000.
 SELECT * FROM DEPT
 WHERE LOC LIKE'%O%'
 AND DEPTNO NOT IN(20,40);

DEPTNO DNAME          LOC
------ -------------- -------------
    10 ACCOUNTING     NEW YORK
    30 SALES          CHICAGO

195.       List all the department name where department number is greater than 20 and location has atleast one character a.
 SELECT * FROM DEPT
 WHERE DEPTNO>20 AND 
 LOC LIKE'%A%';

DEPTNO DNAME          LOC
------ -------------- -------------
    30 SALES          CHICAGO

196.       List all the clerk whose salary is less than 1000 who joined after year 75 and also display their annual salary.

SELECT * FROM EMP
WHERE JOB='CLERK'
AND SAL<1000
AND HIREDATE>'31-DEC-1975';

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7369 SMITH      CLERK           7902 17-DEC-80        800                    20
 7900 JAMES      CLERK           7698 03-DEC-81        950                    30

197.       List all the managers,analyst and salesman with annual commission in department 10 and 30 with salary less than 2000 and also display their annual salary of 2 years.

SQL> SELECT ENAME,JOB, COMM*12 AS ANNUAL_COMM,SAL*24 AS SALARY,DEPTNO
  2  FROM EMP
  3   WHERE JOB IN('MANAGER','ANALYST','SALESMAN')
  4   AND DEPTNO IN(10,30)
  5   AND SAL<2000;

ENAME      JOB       ANNUAL_COMM     SALARY     DEPTNO
---------- --------- ----------- ---------- ----------
ALLEN      SALESMAN         3600      38400         30
WARD       SALESMAN         6000      30000         30
MARTIN     SALESMAN        16800      30000         30
TURNER     SALESMAN            0      36000         30

198.       List all the employees who joined afer year 80 and having salary is between  
       2500 and 4000 and also calculate their salary after six months.

SQL> SELECT ENAME,HIREDATE,JOB,SAL*6
  2  FROM EMP
  3  WHERE HIREDATE >'31-DEC-1980'
  4  ;

ENAME      HIREDATE  JOB            SAL*6
---------- --------- --------- ----------
ALLEN      20-FEB-81 SALESMAN        9600
WARD       22-FEB-81 SALESMAN        7500
JONES      02-APR-81 MANAGER        17850
MARTIN     28-SEP-81 SALESMAN        7500
BLAKE      01-MAY-81 MANAGER        17100
CLARK      09-JUN-81 MANAGER        14700
SCOTT      19-APR-87 ANALYST        18000
KING       17-NOV-81 PRESIDENT      30000
TURNER     08-SEP-81 SALESMAN        9000
ADAMS      23-MAY-87 CLERK           6600
JAMES      03-DEC-81 CLERK           5700
FORD       03-DEC-81 ANALYST        18000
MILLER     23-JAN-82 CLERK           7800

199.       select all the manager whose salary is more than 2500 and department of                                                             
        20 or 30.
         
 SELECT * FROM EMP
 WHERE JOB='MANAGER'
 AND DEPTNO IN(20,30);

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7566 JONES      MANAGER         7839 02-APR-81       2975                    20
  7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30

200.       select all the employee whose employee no second digit is 8 and who do not have manager.

 SELECT * FROM EMP
 WHERE EMPNO LIKE'_8%'
 AND MGR IS NULL;

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7839 KING       PRESIDENT            17-NOV-81       5000                    10

201.       select all the employee who work in department 10, 20, 30 and salary is more than 2000 and who are joined in between the year 85 to 87.
SQL> SELECT * FROM EMP
  2  WHERE DEPTNO IN(10,20,30)
  3  AND SAL>2000
  4  AND HIREDATE BETWEEN '01-JAN-1985' AND '31-DEC-1987';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20

202.       list all the department no which is having concatenate L in location name.

203.       list all the employee name who earn more than 1500 salary with commission and working in department 20 and 30 and employee name consists at least one A. 

SQL> SELECT ENAME ,EMPNO,HIREDATE,SAL+COMM,DEPTNO ,SAL
  2  FROM EMP
  3  WHERE SAL>1500 AND 
  4  DEPTNO IN(20,30)
  5  AND ENAME LIKE'%A%';

ENAME           EMPNO HIREDATE    SAL+COMM     DEPTNO        SAL
---------- ---------- --------- ---------- ---------- ----------
ALLEN            7499 20-FEB-81       1900         30       1600
BLAKE            7698 01-MAY-81                    30       2850


204.       Display all the employee whose job is clerk and annual salary ends with double
         zero?
     
SQL> SELECT ENAME,EMPNO,HIREDATE,SAL*12 AS ANUAL_SAL
  2  FROM EMP
  3  WHERE JOB='CLERK' AND (SAL*12) LIKE'%00';

ENAME           EMPNO HIREDATE   ANUAL_SAL
---------- ---------- --------- ----------
SMITH            7369 17-DEC-80       9600
ADAMS            7876 23-MAY-87      13200
JAMES            7900 03-DEC-81      11400
MILLER           7934 23-JAN-82      15600

206.       Display employee name who have exactly 5 characters in their name and who works in dept 30?

SELECT * FROM EMP
WHERE ENAME LIKE'_____'
AND DEPTNO=30;

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
 7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
 7900 JAMES      CLERK           7698 03-DEC-81        950                    30

207.       Display all the employee whose having reporting manager from dept 20 and dept 30?

SELECT * FROM EMP
WHERE MGR IS NOT NULL
AND DEPTNO IN(20,30);

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7369 SMITH      CLERK           7902 17-DEC-80        800                    20
 7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
 7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
 7566 JONES      MANAGER         7839 02-APR-81       2975                    20
 7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
 7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
 7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
 7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
 7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
 7900 JAMES      CLERK           7698 03-DEC-81        950                    30
 7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

208.       display employee number  whose name doesn't ends with 'S'?

SELECT * FROM EMP
WHERE ENAME NOT LIKE'%S';

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7369 SMITH      CLERK           7902 17-DEC-80        800                    20
 7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
 7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
 7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
 7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
 7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
 7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
 7839 KING       PRESIDENT            17-NOV-81       5000                    10
 7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
 7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
 7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

209.       List all employees who is working as clerk in dept 30 and getting salary above  
       2000
SQL> SELECT * FROM EMP
  2  WHERE JOB='CLERK'
  3  AND DEPTNO =30
  4  AND SAL>2000;

no rows selected

210.       List all employees who are having R as third character in their name, not working as clerk and joined after JUN-81

  SELECT * FROM EMP
  WHERE ENAME LIKE'__R%'
  AND JOB !='CLERK'
 AND HIREDATE > '30-JUN-1981';

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
  7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
  7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

211.       List all employees who are working under same manager

 

212.       List all departments which are having A as last before character in their location whose deptno is not 10
 SELECT * FROM DEPT
 WHERE LOC LIKE'%A_'
 AND DEPTNO !=10;

DEPTNO DNAME          LOC
------ -------------- -----------
    20 RESEARCH       DALLAS

213.       List all the managers who don't get a commission in deptno 20 and 30
SELECT * FROM EMP
WHERE JOB='MANAGER'
AND COMM IS NULL 
AND DEPTNO IN(20,30);

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7566 JONES      MANAGER         7839 02-APR-81       2975                    20
 7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30

214.       Display all employees with names containing characters A and R together in it and are getting commission
 SELECT * FROM EMP
 WHERE ENAME LIKE'%A%R%'
 AND COMM IS NOT NULL;

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
  7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30

215.       Display employees with same salary

216.       Display all employees except salary range between 1000 and 5000 and are hired after year 1980

SELECT * FROM EMP
WHERE SAL NOT BETWEEN 1000 AND 5000 
AND HIREDATE>'31-DEC-1980';

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7900 JAMES      CLERK           7698 03-DEC-81        950                    30


217.       Display all department names and location containing string 'ON' in it


218.       Display all employees who were hired in year 1981 and doesn't have a reporting manager

  SELECT * FROM EMP
  WHERE HIREDATE LIKE'%81'
 AND MGR IS NULL;

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7839 KING       PRESIDENT            17-NOV-81       5000                    10

219.       List all the employees whose getting salary less than 1000 and whose name start with s and end with h and whose working in dept 20.

 SELECT * FROM EMP
 WHERE SAL<1000 
 AND ENAME LIKE'S%H'
 AND DEPTNO=20;

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7369 SMITH      CLERK           7902 17-DEC-80        800                    20

220.       Display all the employees who are joined after 17-dec-80 and getting salary greater than 2000 and their jobs are analyst. And whose name start with S and end with T.

SELECT * FROM EMP
WHERE ENAME LIKE'S%T'
AND JOB='ANALYST'
AND SAL>2000
AND HIREDATE>'17-DEC-80';

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20

221.       Display all the employees whose name having atleast one character O and his job is analyst and whose joined after 17-nov-81.

 SELECT * FROM EMP
 WHERE ENAME LIKE'%O%'
 AND JOB='ANALYST'
 AND HIREDATE>'17-NOV-81';

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
  7902 FORD       ANALYST         7566 03-DEC-81       3000                    20


222.       Display all the employees who are salesman, analyst, president and manager and their salary is greater than 1000 along with the employees whose getting commission.

SELECT * FROM EMP
WHERE JOB IN('SALESMAN','ANALYST','PRESIDENT','MANAGER')
AND SAL>1000
AND COMM IS NOT NULL;

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
 7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
 7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
 7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

223.       Display all the employees who are not working as manager and analyst in dept  
      20 and 30 and whose getting salary range between 1000 to 3000 and their name    
      having atleast one O.

SQL> SELECT * FROM EMP
  2  WHERE JOB NOT IN('MANAGER','ANALYST')
  3  AND DEPTNO IN(20,30)
  4  AND SAL BETWEEN 1000 AND 3000
  5  AND ENAME LIKE'%O%';


224.       list all the employees who are working as salesmen and analyst in dept 20 and 30 with a salary in the range of 1000 and 2000?

SELECT * FROM EMP
WHERE JOB IN ('SALESMAN','ANALYST')
AND DEPTNO IN(20,30)
AND SAL BETWEEN 1000 AND 2000;

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
 7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
 7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
 7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

225.       list all the employees whose salary is not in the range of 2000 to 3000 in dept 10 except all clerks?

SELECT * FROM EMP
WHERE JOB!='CLERK'
AND DEPTNO=10
AND SAL NOT BETWEEN 2000 AND 3000;

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7839 KING       PRESIDENT            17-NOV-81       5000                    10

226.       display all the salesman whose quarterly salary ends with 5?

SQL> SELECT ENAME,EMPNO,SAL*3 AS QUARTRLY_SAL
  2  FROM EMP
  3  WHERE JOB='SALESMAN'
  4  AND SAL LIKE'%5';

no rows selected

227.       list all the employees from the accounting department and all the employees who are located at boston?


SQL> SELECT * FROM DEPT
  2  WHERE DNAME LIKE'ACCOUNTING'
  3  AND LOC LIKE'BOSTON';

no rows selected

228.        display all the employees whose names start with either w or m?

SELECT * FROM EMP
WHERE ENAME LIKE'W%' OR ENAME LIKE'M%';

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
 7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
 7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

229.       List all employee number whose employee number ending with at least 4 or 7.

SQL> SELECT * FROM EMP
  2  WHERE EMPNO LIKE '%4' OR EMPNO LIKE'%7';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

230.       List all employee whose manager is either blake or king

 SELECT * FROM EMP
 WHERE MGR LIKE'7698' OR MGR LIKE'7839';

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
  7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
  7566 JONES      MANAGER         7839 02-APR-81       2975                    20
  7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
  7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
  7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
  7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
  7900 JAMES      CLERK           7698 03-DEC-81        950                    30

231.       List all employee whose date of joining is before 82 and salary should be more then 2000.
 SELECT * FROM EMP
 WHERE SAL>2000
 AND HIREDATE<'01-JAN-82';

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7566 JONES      MANAGER         7839 02-APR-81       2975                    20
  7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
  7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
  7839 KING       PRESIDENT            17-NOV-81       5000                    10
  7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

232.       List all employee whose name start with A and has A in between

SELECT * FROM EMP
WHERE ENAME LIKE'A%A%';

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20

233.       List all employee whose manager is king and have salary more then 1500.

SELECT * FROM EMP
WHERE MGR LIKE'7839'
AND SAL>1500;

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7566 JONES      MANAGER         7839 02-APR-81       2975                    20
 7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
 7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10

234.       Display all the employees in department 10 whose salaries are lesser than 1000.

SQL> SELECT * FROM EMP
  2  WHERE DEPTNO=10
  3  AND SAL<1000;

no rows selected

235.       Display all the employees who are getting some commission with their designation is neither manager nor clerk.

SELECT * FROM EMP
WHERE JOB NOT IN('MANAGER','CLERK')
AND COMM IS NOT NULL;

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
 7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
 7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
 7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

236.       Select * from emp where COMM IS not null And JOB NOT IN ('MANAGER','CLERK');

SELECT * FROM EMP
WHERE COMM IS NOT NULL
AND JOB NOT IN('MANAGER','CLERK');

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
 7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
 7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
 7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

237.       Display all the employees who have joined in the month of December.

SELECT * FROM EMP
WHERE HIREDATE LIKE'%DEC%';

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7369 SMITH      CLERK           7902 17-DEC-80        800                    20
 7900 JAMES      CLERK           7698 03-DEC-81        950                    30
 7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

238.       Display all the employees whose name is having two consecutive L's .

 SELECT * FROM EMP
 WHERE ENAME LIKE'%L%L%';

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
  7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

239.       Display all the employees whose salary is not in the range 2000 and 5000 in department 10 and 20
SELECT * FROM EMP
WHERE SAL NOT BETWEEN 2000 AND 5000
AND DEPTNO IN(10,20);

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7369 SMITH      CLERK           7902 17-DEC-80        800                    20
 7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
 7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

240.       List all the employees whose job is neither clerk nor salesman in dept 10
 SELECT * FROM EMP
 WHERE JOB NOT IN('CLERK','SALESMAN')
 AND DEPTNO=10;

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
  7839 KING       PRESIDENT            17-NOV-81       5000                    10

241.       List all the location name whose name  has atleast one o  in department 30
          and 40
   
 SELECT * FROM DEPT 
 WHERE DNAME LIKE'%O%'
  AND DEPTNO IN(30,40);

DEPTNO DNAME          LOC
------ -------------- -------------
    40 OPERATIONS     BOSTON

242.       List all the employees whose job is not clerk and annual salary is more than 1000

 SELECT * FROM EMP
 WHERE JOB ='CLERK'
 AND SAL*12>1000;

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7369 SMITH      CLERK           7902 17-DEC-80        800                    20
  7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
  7900 JAMES      CLERK           7698 03-DEC-81        950                    30
  7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

243.       Select the employees whose names has 2 consecutive l's
SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'%L%L%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

244.       Select all the employees whose emp number end with 9

 SELECT * FROM EMP
 WHERE EMPNO LIKE'%9';

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7369 SMITH      CLERK           7902 17-DEC-80        800                    20
  7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
  7839 KING       PRESIDENT            17-NOV-81       5000                    10

245.       List all the employees who have joined except on apr and nov an sal more than 2500

SELECT * FROM EMP
WHERE SAL>2500
AND HIREDATE NOT LIKE'%APR%' AND HIREDATE NOT LIKE'%NOV%';

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
 7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

246.       List all the employees whose annual salary is equal to or more than 10000.
  
SQL> SELECT  ENAME,JOB,SAL*12 AS ANNUAL_SAL
  2  FROM EMP
  3  WHERE SAL*12>=10000;

ENAME      JOB       ANNUAL_SAL
---------- --------- ----------
ALLEN      SALESMAN       19200
WARD       SALESMAN       15000
JONES      MANAGER        35700
MARTIN     SALESMAN       15000
BLAKE      MANAGER        34200
CLARK      MANAGER        29400
SCOTT      ANALYST        36000
KING       PRESIDENT      60000
TURNER     SALESMAN       18000
ADAMS      CLERK          13200
JAMES      CLERK          11400
FORD       ANALYST        36000
MILLER     CLERK          15600

247.       Display only ename whose name has two consecutive T's .

SQL> SELECT ENAME FROM EMP
  2  WHERE ENAME LIKE'%T%T%';

ENAME
----------
SCOTT

248.       List ename, job and deptno who does have reporting manager.

SQL> SELECT ENAME,JOB,DEPTNO
  2  FROM EMP
  3  WHERE MGR IS NOT NULL;

ENAME      JOB           DEPTNO
---------- --------- ----------
SMITH      CLERK             20
ALLEN      SALESMAN          30
WARD       SALESMAN          30
JONES      MANAGER           20
MARTIN     SALESMAN          30
BLAKE      MANAGER           30
CLARK      MANAGER           10
SCOTT      ANALYST           20
TURNER     SALESMAN          30
ADAMS      CLERK             20
JAMES      CLERK             30
FORD       ANALYST           20
MILLER     CLERK             10

13 rows selected.

249.       Display all the employees whose salary is less than 1000 in dept 10 and 30.
SELECT * FROM EMP
WHERE SAL<1000
AND DEPTNO NOT IN(10,30);

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7369 SMITH      CLERK           7902 17-DEC-80        800                    20

250.       list all the employees whose salary not in range of 1000 and 2000 in dept 10,20 except manager
SELECT * FROM EMP
WHERE SAL NOT BETWEEN 1000 AND 2000
AND DEPTNO IN(10,20)
AND JOB!='MANAGER';

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7369 SMITH      CLERK           7902 17-DEC-80        800                    20
 7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
 7839 KING       PRESIDENT            17-NOV-81       5000                    10
 7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

251.       list all the employees whose salary between 1000 and 1500 working in dept 20,30 except clerk and salesman

SQL> SELECT * FROM EMP
  2  WHERE SAL BETWEEN 1000 AND 1500
  3  AND DEPTNO IN(20,30)
  4  AND JOB NOT IN('CLERK','SALESMAN');

no rows selected

252.       list the department names which are having letter 'A' in their locations as well as  department name

 SELECT * FROM DEPT
 WHERE DNAME LIKE'%A%' 
 AND LOC LIKE '%A%';

DEPTNO DNAME          LOC
------ -------------- -------------
    20 RESEARCH       DALLAS
    30 SALES          CHICAGO

253.       Display all the employees who are 'manager' having 's' in their last character in ename
 SELECT * FROM EMP
 WHERE JOB='MANAGER'
 AND ENAME LIKE'%S';

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7566 JONES      MANAGER         7839 02-APR-81       2975                    20

254.       Display all the employees who have joined after 02-feb-80 except salesman

 SELECT * FROM EMP
 WHERE JOB !='SALESMAN'
 AND HIREDATE>'02-FEB-80';

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7369 SMITH      CLERK           7902 17-DEC-80        800                    20
  7566 JONES      MANAGER         7839 02-APR-81       2975                    20
  7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
  7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
  7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
  7839 KING       PRESIDENT            17-NOV-81       5000                    10
  7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
  7900 JAMES      CLERK           7698 03-DEC-81        950                    30
  7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
  7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

255.       What is an Operator in SQL?
Operators are the symbols used to perform some specific operation. The input required for operator are called operands.

256.       What is the purpose of the condition operators BETWEEN and IN?

257.       display all the students who are ME or CIVIL with percentage greater
         than 75%.
258.       what are the operators in SQL? and list  the presidense of operators?

259.       list all employees except those who are not working in dept 10,20 & 30.
SQL> SELECT * FROM EMP
  2  WHERE DEPTNO NOT IN(10,20,30);

no rows selected

260.       Display all the manager whose annual Salary is ending with one ?

SQL> SELECT * FROM EMP
  2  WHERE JOB='MANAGER'
  3  AND SAL*12 LIKE '%1';

no rows selected


261.       Select all the salesman whose salary not between 500 and 1000 in
         department 20 ?

SQL> SELECT * FROM EMP
  2  WHERE JOB='SALESMAN'
  3  AND SAL NOT BETWEEN 500 AND 1000
  4  AND DEPTNO =20;

no rows selected


262.       Display all the employee who are getting some commission with their designation is  MANAGER and CLERK ?

SQL> SELECT * FROM EMP
  2  WHERE JOB IN('MANAGER','CLERK')
  3  AND COMM IS NOT NULL;

no rows selected

263.       List all the salesmen in dept number 10 and having salary greater than 2500 ?

SQL> SELECT * FROM EMP
  2  WHERE JOB='SALESMAN'
  3  AND DEPTNO='10'
  4  AND SAL>2500;

264.       List all the employees whose name starts with ‘k’ or ‘p’ ?

SELECT * FROM EMP
WHERE ENAME LIKE'K%' OR ENAME LIKE'P%';

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7839 KING       PRESIDENT            17-NOV-81       5000                    10

265.       Display employees from whose name is having letter ‘R’ in it?

SQL> SELECT * FROM EMP
  2  WHERE ENAME LIKE'%R%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

266.       List all the employees whose name starts with ‘M’ or ‘K’ or 'N' or  'N'?

SQL>  SELECT * FROM EMP
  2   WHERE ENAME LIKE'M%' OR ENAME LIKE'K%' OR ENAME LIKE'N%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

267.       Display all the employee who are ‘SALESMAN’s having R as the last character in ename but salary having exactly 4 character

 SELECT * FROM EMP
 WHERE JOB='SALESMAN'
 AND ENAME LIKE'%R'
 AND SAL LIKE'____';

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

268.       Display all the employees whose job has string ‘LES’ in it.

SQL> SELECT * FROM EMP
  2  WHERE JOB LIKE'%LES%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

269.       Select all the clerk whose name 4th character start with 'L' and earning salary less than 2000
SQL> SELECT * FROM EMP
  2  WHERE JOB='CLERK'
  3  AND ENAME LIKE'L%'
  4  AND SAL<2000;

no rows selected

270.       List the employees whose name doesn't have letter S in it?
SQL> SELECT * FROM EMP
  2  WHERE ENAME NOT LIKE'%S%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

271.       List the employees whose salary is not in range from 1000 to 2000 in dept 20 and 30 except all clerk and analyst?

SELECT * FROM EMP
WHERE JOB NOT IN('CLERK','ANALYST')
AND DEPTNO IN(20,30)
AND SAL NOT BETWEEN 1000 AND 2000;

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7566 JONES      MANAGER         7839 02-APR-81       2975                    20
 7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30

272.       List the employees whose name start with S and ends with H
SELECT * FROM EMP
WHERE ENAME LIKE'S%H';

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7369 SMITH      CLERK           7902 17-DEC-80        800                    20

273.       List the employees whose salary is >1500 and <2500
      
SELECT * FROM EMP
WHERE SAL>1500
AND SAL<2500;

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
 7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
274.       List the salesman whose ename 2nd char is M and salary in range from 500 to 1500 in it?
SELECT * FROM EMP
WHERE ENAME LIKE'_M%'
AND SAL BETWEEN 500 AND 1500;

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7369 SMITH      CLERK           7902 17-DEC-80        800                    20

275.       List all the employee's names,jobs,salary, who has at least one 's' in their name, earn more than 2000 but not getting any commission in dept 10 and 20. 

 SELECT * FROM EMP
 WHERE ENAME LIKE'%S%'
 AND SAL>2000
AND COMM IS NULL
AND  DEPTNO IN(10,20);

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7566 JONES      MANAGER         7839 02-APR-81       2975                    20
 7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20

276.       List out all the managers and clerks who joined in year 81 and earns more than 2000 but not getting any commission.

SELECT * FROM EMP
WHERE JOB IN ('MANAGER','CLERK')
AND HIREDATE LIKE'%81'
AND SAL>2000
AND COMM IS NULL;

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7566 JONES      MANAGER         7839 02-APR-81       2975                    20
 7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
 7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10

277.       list all the departments which has at least one 'o' in it's location,which has department number exactly of 2 digits and department name doesn't have any '%' character

SQL> SELECT * FROM DEPT
  2  WHERE LOC LIKE'%O%'
  3  AND DEPTNO LIKE'__'
  4  AND DNAME NOT LIKE'%';

no rows selected

278.       list all the employees whose employee number doesn't end with 2, name doesn't end with 'N'or 'k', hired before 81 and earns more than 800 and salary contains at least one zero digit.

SELECT * FROM EMP
WHERE EMPNO NOT LIKE'%2'
AND ENAME NOT  LIKE'%N' OR ENAME NOT LIKE'%K'
AND HIREDATE<'01-JAN-81'
AND SAL>800
AND SAL LIKE'%0%';

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7369 SMITH      CLERK           7902 17-DEC-80        800                    20
 7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
 7566 JONES      MANAGER         7839 02-APR-81       2975                    20
 7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
 7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
 7839 KING       PRESIDENT            17-NOV-81       5000                    10
 7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
 7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
 7900 JAMES      CLERK           7698 03-DEC-81        950                    30
 7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

279.       List all the employees who has reporting manager, whose name doesn't have any R or A character, who earns between 2000 and 3000, who joined after 80 and before 83, works in department 10,20,30.

SELECT * FROM EMP
WHERE MGR IS NOT NULL
AND ENAME NOT LIKE'%R%' AND ENAME NOT LIKE'%A%'
AND SAL BETWEEN 2000  AND 3000
AND HIREDATE>'31-DEC-80'
AND HIREDATE<'01-JAN-83'
AND DEPTNO IN (10,20,30);

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7566 JONES      MANAGER         7839 02-APR-81       2975                    20


280.       Display all the employee who has a joining date on JANUARY, NOVEMBER and  APRIL in department 20,10 except 30, also having salary more than 2500.


 SELECT *
 FROM EMP
 WHERE SAL>2500
 AND DEPTNO IN(20,10)
 AND  HIREDATE LIKE'%JAN%' OR HIREDATE LIKE'%NOV%' OR HIREDATE LIKE'%APR%';

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7566 JONES      MANAGER         7839 02-APR-81       2975                    20
  7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
  7839 KING       PRESIDENT            17-NOV-81       5000                    10

281.       Display employee name who has their name starting with letters A, J and K also having salary in the range 800 to 2500 with not getting any commission.
SQL> SELECT ENAME,SAL,COMM
  2   FROM EMP
  3  WHERE COMM IS NULL
  4  AND SAL BETWEEN 800 AND 2500
  5  AND ENAME LIKE'A%' OR ENAME LIKE'J%' OR ENAME LIKE'K%';

ENAME             SAL       COMM
---------- ---------- ----------
JONES            2975
KING             5000
ADAMS            1100
JAMES             950

282.       Display the employee's name whose gross salary is more than 1500.
SQL> SELECT ENAME 
  2  FROM EMP
  3  WHERE SAL>1500;

ENAME
----------
ALLEN
JONES
BLAKE
CLARK
SCOTT
KING
FORD

283.       Display employee name who has their employee number between 7521 to 7782.
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE EMPNO BETWEEN 7521 AND 7782;

ENAME
----------
WARD
JONES
MARTIN
BLAKE
CLARK

284.       Display employee number who doesn't get any commission in department 30 but getting salary exactly 1600.
SQL> SELECT EMPNO
  2  FROM EMP
  3  WHERE COMM IS NULL
  4  AND DEPTNO=30
  5  AND SAL=1600;

no rows selected

285.       List the manager in employee table with yearly bonus of Rs5000 who salary lesser than Rs2500.show annual salary along with employee table.

SQL> SELECT ENAME,(SAL*12)+5000 AS ANNUAL_SALARY
  2  FROM EMP
  3  WHERE SAL<2500;

ENAME      ANNUAL_SALARY
---------- -------------
SMITH              14600
ALLEN              24200
WARD               20000
MARTIN             20000
CLARK              34400
TURNER             23000
ADAMS              18200
JAMES              16400
MILLER             20600

286.       List all the employees data whose name having  2 L's and matching at least 1 L's  in their job's whose  deportment number 10.
SQL> SELECT ENAME,JOB,DEPTNO
  2  FROM EMP
  3  WHERE ENAME LIKE'%L%L%'
  4  AND JOB LIKE'%L%'
  5  AND DEPTNO=10;

ENAME      JOB           DEPTNO
---------- --------- ----------
MILLER     CLERK             10

287.       List all the employees whose are all joining from 30-DEC-81 to 30--DEC-87 and their deportment 20,30 whose Annual salary are Rs 1000 bones of half-off the year . list their Annual salary along with employee data . 

SQL> SELECT ENAME,(SAL*6)+500 AS ANNUAL_SALARY
  2  FROM EMP
  3  WHERE HIREDATE BETWEEN'30-DEC-81' AND 
  4  '30-DEC-87' AND DEPTNO IN(20,30);

ENAME      ANNUAL_SALARY
---------- -------------
SCOTT              18500
ADAMS               7100

288.       List all the employees annual salary who earn the monthly salary Rs 1000 to Rs 5000 .Their  deportment number not in 20 . Also date of joining after 01-JAN-82 and before 01-JAN-88.

SQL> SELECT ENAME,HIREDATE,(SAL*12) AS ANNUAL_SALARY
  2  FROM EMP
  3  WHERE SAL BETWEEN 1000 AND 5000 
  4  AND DEPTNO !=20
  5  AND HIREDATE BETWEEN '01-JAN-82' AND '01-JAN-88';

ENAME      HIREDATE  ANNUAL_SALARY
---------- --------- -------------
MILLER     23-JAN-82         15600

289.       List all the employees where reporting manager not having NULL Value and deportment number is either 20 or 30 whose employee name start with S's .

SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE MGR IS NOT NULL
  4  AND DEPTNO IN(20,30)
  5  AND ENAME LIKE'S%';

ENAME
----------
SMITH
SCOTT

290.       LIST ALL DEPT WHICH DO NOT HAVE LETTER 'T' IN LOCATION AS WELL AS DEPARTMENT NAME ?
SQL> SELECT DNAME,LOC
  2  FROM DEPT
  3  WHERE DNAME NOT LIKE'%T%'
  4  AND LOC NOT LIKE'%T%';

DNAME          LOC
-------------- -------------
ENGINEER       BANGLORE
HR             DELHI
RESEARCH       DALLAS
SALES          CHICAGO

291.       LIST ALL EMP HIRED BEFORE 83 EARNING SALARY IN RANGE 500 TO 1500 AND GETTING NO COMM?

 SELECT *
 FROM EMP
 WHERE HIREDATE <'01-JAN-83'
AND SAL BETWEEN 500 AND 1500
AND COMM IS NULL;

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7369 SMITH      CLERK           7902 17-DEC-80        800                    20
 7900 JAMES      CLERK           7698 03-DEC-81        950                    30
 7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

292.       LIST ALL SALESMAN IN DEPT 30 HIRED IN THE YEAR 81 WHO GET  SOME COMM?
 SELECT *
 FROM EMP
 WHERE JOB='SALESMAN'
 AND DEPTNO=30
 AND HIREDATE LIKE'%81';

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
  7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
  7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
  7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

293.       LIST ALL EMP IN DEPT 20 AND 30 WHOSE EPMNO ENDS WITH 8 OR 9 EARNING SAL BELOW 5000?

SELECT *
FROM EMP
WHERE DEPTNO IN(20,30)
AND EMPNO LIKE'%8' OR EMPNO LIKE'%9'
AND SAL<5000;

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7369 SMITH      CLERK           7902 17-DEC-80        800                    20
 7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
 7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
 7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20

294.       LIST ALL CLERKS AND SALESMAN IN DEPT 10,20,30 WHOSE NAME STARTS WITH LETTER A?

SELECT *
FROM EMP
WHERE JOB IN('CLERK','SALESMAN')
AND DEPTNO IN(10,20,30)
AND ENAME LIKE'A%';

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
 7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20

295.       Display employee who work as manager, salesman or analyst and getting sal  3000 or more.
 SELECT  *
 FROM EMP
 WHERE JOB IN('MANAGER','SALESMAN','ANALYST')
 AND SAL>=3000;

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
  7902 FORD       ANALYST         7566 03-DEC-81       3000                    20


296.       Select * from emp where (job like 'MANAGER' or job like 'SALESMAN' or job like 'ANALYST') and sal >=3000;
297.       Display all Analyst whose name doesn't end with 'S'

SELECT *
FROM EMP
WHERE JOB='ANALYST'
AND ENAME NOT LIKE'%S';

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
 7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

298.       Select * from emp where job like 'ANALYST' and Job not like '%S';

299.       Display all employees whose total salary is more than 2000
SELECT *
FROM EMP
WHERE SAL>2000;

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7566 JONES      MANAGER         7839 02-APR-81       2975                    20
 7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
 7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
 7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
 7839 KING       PRESIDENT            17-NOV-81       5000                    10
 7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

300.       select * from emp where (sal + comm) > 2000;

301.       Display employees whose department between 10 ,20 and salary within 1000 and 4000

SELECT *
FROM EMP
WHERE DEPTNO BETWEEN 10 AND 20
AND SAL BETWEEN 1000 AND 4000;

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7566 JONES      MANAGER         7839 02-APR-81       2975                    20
 7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
 7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
 7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
 7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
 7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

302.       Select * from emp where deptno between 10 and 20 and sal between 1000
           and 4000;

303.       Display employees having salary of 4 digits and start with 2 and end with 0

 SELECT *
 FROM EMP
 WHERE SAL LIKE'2__0';

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
  7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10

304.       Select * from emp where sal like '2%0';

305.       List all the employees who earn 3000 in department no 20
SELECT *
FROM EMP
WHERE SAL=3000
AND DEPTNO=20;

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
 7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

306.       List all the employees whose job  does not ends with T
SELECT *
FROM EMP
WHERE JOB NOT LIKE'%T';

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7369 SMITH      CLERK           7902 17-DEC-80        800                    20
 7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
 7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
 7566 JONES      MANAGER         7839 02-APR-81       2975                    20
 7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
 7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
 7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
 7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
 7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
 7900 JAMES      CLERK           7698 03-DEC-81        950                    30
 7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

307.       List all the manager and analyst using IN operator
SELECT *
FROM EMP
WHERE JOB IN('MANAGER','ANALYST');

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7566 JONES      MANAGER         7839 02-APR-81       2975                    20
 7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
 7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
 7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
 7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

308.       Display all the employees who works salary between 2500 and 5000 in department no 10 &  20

 SELECT *
 FROM EMP
 WHERE SAL BETWEEN 2500 AND 5000
 AND DEPTNO IN(10,20);

 EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
------ ---------- --------- ---------- --------- ---------- ---------- ----------
  7566 JONES      MANAGER         7839 02-APR-81       2975                    20
  7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
  7839 KING       PRESIDENT            17-NOV-81       5000                    10
  7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

309.       List all employees except president and clerk
SELECT *
FROM EMP
WHERE JOB NOT IN('PRESIDENT','CLERK');

EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
----- ---------- --------- ---------- --------- ---------- ---------- ----------
 7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
 7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
 7566 JONES      MANAGER         7839 02-APR-81       2975                    20
 7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
 7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
 7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
 7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
 7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
 7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

