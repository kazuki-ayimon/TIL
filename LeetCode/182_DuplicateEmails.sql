-- SQLクエリを記述して、Personという名前のテーブル内の重複するすべての電子メールを検索します。
-- +----+---------+
-- | Id | Email   |
-- +----+---------+
-- | 1  | a@b.com |
-- | 2  | c@d.com |
-- | 3  | a@b.com |
-- +----+---------+
-- たとえば、クエリは上記の表に対して次を返す必要があります。
-- +---------+
-- | Email   |
-- +---------+
-- | a@b.com |
-- +---------+
-- 注：すべてのメールは小文字です。

Create table If Not Exists Person (Id int, Email varchar(255));
Truncate table Person;
insert into Person (Id, Email) values ('1', 'a@b.com');
insert into Person (Id, Email) values ('2', 'c@d.com');
insert into Person (Id, Email) values ('3', 'a@b.com');

select Email from Person group by Email having count(Email) > 1;