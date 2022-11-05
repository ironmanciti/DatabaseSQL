-- Query 1------
select F_NAME , L_NAME
from EMPLOYEES
where ADDRESS LIKE '%Elgin,IL%' ;

--Query 2--
select F_NAME , L_NAME
from EMPLOYEES
where B_DATE LIKE '197%' ;

---Query3--
select *
from EMPLOYEES
where (SALARY BETWEEN 60000 and 70000)  and DEP_ID = 5 ;

--Query4--
select F_NAME, L_NAME, DEP_ID 
from EMPLOYEES
order by DEP_ID;

--Query5--
select F_NAME, L_NAME, DEP_ID 
from EMPLOYEES
order by DEP_ID desc, L_NAME desc;

--Query6--
select DEP_ID, COUNT(*)
from EMPLOYEES
group by DEP_ID;

--Query7--
select DEP_ID, COUNT(*), AVG(SALARY)
from EMPLOYEES
group by DEP_ID;


--Query7A--
select DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
from EMPLOYEES
group by DEP_ID;

--Query7B--
select DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
from EMPLOYEES
group by DEP_ID
order by AVG_SALARY;

--Query7C--
select DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
from EMPLOYEES
group by DEP_ID
having count(*) < 4
order by AVG_SALARY;
