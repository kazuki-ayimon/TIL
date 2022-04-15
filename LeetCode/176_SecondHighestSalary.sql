-- SQLクエリを記述して、Employeeテーブルから2番目に高い給与を取得します。
-- たとえば、下記のEmployeeテーブルが与えられた場合、
-- クエリは2番目に高い給与として200を返す必要があります。 
-- 2番目に高い給与がない場合、クエリはnullを返す必要があります。
-- +----+--------+
-- | Id | Salary |
-- +----+--------+
-- | 1  | 100    |
-- | 2  | 200    |
-- | 3  | 300    |
-- +----+--------+
-- +---------------------+
-- | SecondHighestSalary |
-- +---------------------+
-- | 200                 |
-- +---------------------+

Create table If Not Exists Employee (Id int, Salary int);
Truncate table Employee;
insert into Employee (Id, Salary) values ('1', '100');
insert into Employee (Id, Salary) values ('2', '200');
insert into Employee (Id, Salary) values ('3', '300');

select max(Salary) as SecondHighestSalary from Employee
where Salary < (select max(Salary) from Employee);