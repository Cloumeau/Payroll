/*Search for all employees hourly */
Select fname, minit, lastn From employee where salarytype = 'Hourly';


/*search for all employees anually */
Select fname, minit, lastn From employee where salarytype = 'Annual';

/*search for all male employees */
Select fname, minit, lastn From employee where gender = 'M';

/*search for all females */
Select fname, minit, lastn From employee where gender = 'F';


/*search for evryone makking less than 60k*/
Select fname, minit, lastn From employee where salary < 65000;

/*Give a 20000 raise to Chris Loumeau*/
Update employee Set salary = 100000 where ssn = 888264555;

/*Fire Nicholas Nucero*/
DELETE FROM employee WHERE ssn = 985121307;

/*Find Highest wage*/
SELECT MAX(salary) FROM employee;

/*Find Avg Salary*/
Select AVG(salary) From employee;

/*add(hire) new employee*/
INSERT INTO employee VALUES
('Jim','T','Frank',1231096543,'Annual','HR Rep','M','Dental',30,2,50000,null,106);
--

/*get salary of Kathy Oates*/
select salary
from employee
where fname = 'Kathy';

/*get the benefits of Rohan Gohel*/
select Benefits
from employee
where lastn = 'Gohel';

/*get all employees with salary <= 60000*/
select fname, lastn
from employee
where salary <= 60000;


/*Select bank accounts of workers at this company */
Select bankname from bank, employee, company1 where bankid =1000;
Select bankname from bank, employee, company1 where bankid =2000;
Select bankname from bank, employee, company1 where bankid =3000;
Select bankname from bank, employee, company1 where bankid =4000;
Select bankname from bank, employee, company1 where bankid =5000;
Select bankname from bank, employee, company1 where bankid =6000;

/* Add a new bank */
Update bank Set bankname = 'AmericanBank' where bankid = 3000;

/* Leave a bank */
DELETE FROM bank WHERE bankid = 1000;
