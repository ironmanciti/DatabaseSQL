-- Query1 department number 5 의 모든 employee 의 name 과 job start date 를 조회
SELECT E.f_name, JH.start_date
FROM employees as E
INNER JOIN job_history AS JH 
ON E.emp_id = JH.empl_id
WHERE E.dep_id = '5';

-- Query2 department number 5 의 모든 employee 의 name, job start date, Job Title 을 조회
SELECT E.f_name, JH.start_date, J.job_title 
FROM employees as E
INNER JOIN job_history AS JH ON E.emp_id = JH.empl_id
INNER JOIN jobs as J ON E.job_id=J.job_ident 
WHERE E.dep_id = '5';

/*Query3 EMPLOYEES 와 DEPARTMENT TABLE 을 Left Outer Join 하여  모든 employee 의 employee id, last name, department id, department name 를 조회*/
SELECT E.emp_id, E.l_name, E.dep_id, D.dep_name
FROM employees as E
LEFT OUTER JOIN departments as D ON E.dep_id=D.dept_id_dep;

-- Query4  Query 3 에서 1980 년 이전 태어난 employee 만 조회하는 조건 추가
SELECT E.emp_id, E.l_name, E.dep_id, D.dep_name
FROM employees as E
LEFT OUTER JOIN departments as D ON E.dep_id=D.dept_id_dep 
WHERE YEAR(E.B_DATE) < 1980;