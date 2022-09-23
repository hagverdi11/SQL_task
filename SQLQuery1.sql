create database Haqverdi
use Haqverdi
create table Course(
[Id] int primary key identity(1,1),
[Name] nvarchar(50) not null,
[Surname] nvarchar(50) default 'XXX',
[Email] nvarchar (100) unique,
[Age] int check (Age>17),
[Salary] decimal
) 

UPDATE Course
SET [Age] = 45 where id=3

insert into Course([Name], [Surname], [Email], [Age], [Salary])
values ('Toghrul', 'Guluzade', 'deliwka@mail.ru',18,4000), ('Aykhan', 'Nabatov', 'uselessquestion@gmail.com',18,2000), ('Elvin', 'Elvinov', 'hijab_woman@mail.ru',18,2500), ('Lev', 'Tolstoy', 'author@mail.ru',18,6000)

select * from Course

SELECT AVG([Age])
FROM Course;



select * FROM Course where [Age] > (SELECT AVG([Age])
FROM Course)
