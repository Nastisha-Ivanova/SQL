-- Вывести все поля и все строки
select *
from students s;

--  Вывести всех студентов в таблице
select *
from students s;

-- Вывести только ID пользователей
select s.id as id_user
from students s;

-- Вывести только имя пользователей
select s.name 
from students s;

-- Вывести только email пользователей
select s.email 
from students s;

-- Вывести имя и email пользователей
select s.name, s.email 
from students s;

-- Вывести ID, имя, email и дату создания пользователей
select s.id, s.name, s.email, s.created_on 
from students s;

-- Вывести пользователей, где пароль 12333
select *
from students s 
where s.password = '12333';

-- Вывести пользователей, которые были созданы 2021-03-26 00:00:00
select *
from students s
where s.created_on = '2021-03-26 00:00:00';

-- Вывести пользователей, где в имени есть слово Анна
select *
from students s
where s.name like 'Anna%';

-- Вывести пользователей, где в имени в конце есть 8
select *
from students s
where s.name like '%8';

-- Вывести пользователей,  где в имени есть буква а
select *
from students s
where s.name like '%a%';

-- Вывести пользователей, которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
select *
from students s
where s.created_on = '2021-07-12 00:00:00' and s.password = '1m313';

-- Вывести пользователей, которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Андрей
select *
from students s
where s.created_on = '2021-07-12 00:00:00' and s."name" like 'Andrey%';

-- Вывести пользователей, которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
select *
from students s
where s.created_on = '2021-07-12 00:00:00' and s.name like '%8%';

-- Вывести пользователей у которых ID равен 110
select *
from students s
where s.id = 110;

-- Вывести пользователей у которых ID равен 153
select *
from students s
where s.id = 153;

-- Вывести пользователей у которых ID больше 140
select *
from students s
where s.id > 140;

-- Вывести пользователей у которых ID меньше 130
select *
from students s
where s.id < 130;

-- Вывести пользователей у которых ID меньше 127 или больше 188
select *
from students s
where s.id < 127 or s.id > 188;

-- Вывести пользователей у которых ID меньше либо равно 137
select *
from students s
where s.id <= 137;

-- Вывести пользователей у которых ID больше либо равно 137
select *
from students s
where s.id >= 137;

-- Вывести пользователей у которых ID больше 180, но меньше 190
select *
from students s
where s.id > 180 and s.id < 190;

-- Вывести пользователей у которых ID между 180 и 190
select *
from students s
where s.id  between 180 and 190;

-- Вывести пользователей, где пароль равен 12333, 1m333, 123313
select *
from students s
where s.password in ('12333', '1m333', '123313');

-- Вывести пользователей, где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select *
from students s
where s.created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

-- Вывести минимальный ID
select min (s.id) as min_id
from students s;

-- Вывести максимальный ID
select max (s.id) as max_id
from students s;

-- Вывести количество пользователей
select count (*) as count_user
from students s;

-- Вывести ID пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользователя
select s.id, s.name, s.created_on
from students s
order by s.created_on;

-- Вывести ID пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользователя
select s.id, s.name, s.created_on
from students s
order by s.created_on desc;
