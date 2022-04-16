-- Employeeテーブルには、マネージャーを含むすべての従業員が含まれます。
-- すべての従業員にはIDがあり、マネージャーIDの列もあります。
-- +----+-------+--------+-----------+
-- | Id | Name  | Salary | ManagerId |
-- +----+-------+--------+-----------+
-- | 1  | Joe   | 70000  | 3         |
-- | 2  | Henry | 80000  | 4         |
-- | 3  | Sam   | 60000  | NULL      |
-- | 4  | Max   | 90000  | NULL      |
-- +----+-------+--------+-----------+
-- Employeeテーブルを指定して、マネージャーよりも多くの収入を得ている従業員を見つけるSQLクエリを記述します。
-- 上記の表では、ジョーはマネージャーよりも多く稼いでいる唯一の従業員です。
-- +----------+
-- | Employee |
-- +----------+
-- | Joe      |
-- +----------+

Create table If Not Exists Employee (Id int, Name varchar(255), Salary int, ManagerId int);
Truncate table Employee;
insert into Employee (Id, Name, Salary, ManagerId) values ('1', 'Joe', '70000', '3');
insert into Employee (Id, Name, Salary, ManagerId) values ('2', 'Henry', '80000', '4');
insert into Employee (Id, Name, Salary, ManagerId) values ('3', 'Sam', '60000', '0');
insert into Employee (Id, Name, Salary, ManagerId) values ('4', 'Max', '90000', '0');

select employee.Name as Employee
from Employee as employee
left join Employee as manager
on employee.ManagerId = manager.Id
where employee.Salary > manager.Salary;