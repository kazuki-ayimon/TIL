-- 各人のアドレスがあるかどうかに関係なく、
-- Personテーブルの各人に次の情報を提供するレポートのSQLクエリを記述します。
-- FirstName, LastName, City, State
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | PersonId    | int     |
-- | FirstName   | varchar |
-- | LastName    | varchar |
-- +-------------+---------+
-- PersonIdは、このテーブルの主キー列です。
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | AddressId   | int     |
-- | PersonId    | int     |
-- | City        | varchar |
-- | State       | varchar |
-- +-------------+---------+
-- AddressIdは、このテーブルの主キー列です。

Create table Person (PersonId int, FirstName varchar(255), LastName varchar(255));
Create table Address (AddressId int, PersonId int, City varchar(255), State varchar(255));
Truncate table Person;
insert into Person (PersonId, LastName, FirstName) values ('1', 'Wang', 'Allen');
insert into Person (PersonId, LastName, FirstName) values ('2', 'Wang2', 'Allen2');
Truncate table Address;
insert into Address (AddressId, PersonId, City, State) values ('1', '2', 'New York City', 'New York');

select FirstName, LastName, City, State
from Person left join Address
on Person.PersonId = Address.PersonId;