-- 1.Creating a Table;

create table Employee(
  Employee_id int AUTO_INCREMENT primary key,
  Name varchar(30),
  Age int,
  Department varchar(25)
);


-- 2.Insert values into Table;

insert into Employee(Employee_id,Name,Age,Department)
values(201,'Maajid',22,'IT Cell'),
(202,'Nithin',23,'Software');

-- 3.Selecting Data from Tables;
-- a.Selecting whole Data
select * from Employee;

-- b.selecting particular columns from Table
select Employee_id,Name from Employee;


-- 4.Updating feilds(cell) in Table
update Employee set age=21 where Employee_id=201;

-- 5.Deleting data from Table
delete from Employee where Employee_id=201;

-- 6.Inserting more Records.
insert into Employee(Employee_id,Name,Age,Department)
values(203,'Fazil',26,'MainStream'),
	  (204,'Yaswanth',22,'IT Cell'),
      (205,'Aftab',21,'IT Cell'),
      (206,'Uzzair',20,'IT Cell'),
      (207,'Abdullah',21,'IT Cell'),
      (208,'Prazwal',22,'MianStream');


-- 7.Filtering Data with Where Clause.
select * from Employee where Department='IT Cell';


-- 8.Sorting Data with Order By clause.
select * from Employee order by Age;


-- 9.Using Aggregate Functions.
select Department, count(*) as Total_Employees from Employee group by Department;


-- 10.Grouping data with Group By Clause.
select Department,avg(age) as Average_Age from Employee group by Department;


-- 11.Insering new Records into Employee Table.
insert into Employee(Employee_id,Name,Age,Department)
values(209,'Alice Johnson',28,'Engineering'),
	  (210,'Bob Martin',35,'Marketing'),
      (211,'Chris Lee',22,'Sales'),
      (212,'Diana Carter',40,'Engineering'),
      (213,'Ethan White',29,'HR'),
      (214,'Fiona Brown',31,'HR'),
      (215,'George Wilson',45,'Finance'),
      (216,'Hannah Adams',27,'Marketing'),
      (217,'Ivan Young',33,'Finance'),
      (218,'Jack Black',38,'Engineering');


-- 12.Filtering Data with the Where Clause.
--a.Filter by single condition../
select * from Employee where Department='Sales';
--b.Filtering with multiple conditions using And/Or../
select * from Employee where Department='Marketing' and Age>30;
select * from Employee where Department='IT Cell' and Age>21;
select * from Employee where Department='Sales' or Age>35;
--c.Using Comparision operator(=,!=,<,>,<=,>=)../
select * from Employee where Age>=37;
--d.Using pattern Matching with LIKE../
select * from Employee where Name like 'M%';
--e.Using Range with Between../
select * from Employee where age between 25 and 34;


-- 13.Sorting data with the Order By clause.
--a.Sort by one Column.
select * from Employee order by Age;
--b.sort by Multiple Columns.
select * from Employee order by Department,Age desc;
