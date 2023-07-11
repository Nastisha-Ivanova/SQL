-- Вывести все записи из таблицы albums
select * 
from albums;

-- Вывести все записи из таблицы tracks
select * 
from tracks;

-- Вывести все записи из таблицы playlists
select * 
from playlists;

-- Вывести имена, фамилии, адреса электронных почт пользователей из таблицы customers
select FirstName, LastName, Email
from customers;

-- Вывести в дополнение город и страну
select FirstName, LastName, Email, City, Country
from customers;

-- Вывести имена, фамилии, адреса электронных почт и номера телефонов из таблицы customers, присвоив полям псевдонимы
select FirstName as 'Name', LastName as 'Last name', Email as 'EMAIL', Phone as 'Number phone'
from customers;

-- Добавить еще одно поле на выбор
select FirstName as 'Name', LastName as 'Last name', Email as 'EMAIL', Phone as 'Number phone', Address as 'Home'
from customers;

-- Вывести имена, фамилии, адреса электронных почт пользователей из таблицы customers, отсортированных по фамилии
select FirstName as 'Name', LastName, Email
from customers
order by LastName; 

-- Вывести имена, фамилии, адреса электронных почт пользователей из таблицы customers, отсортированных по имени с применением ASC (по возрастанию)
select FirstName as 'Name', LastName, Email
from customers
order by FirstName ASC;

-- Вывести имена, фамилии, адреса электронных почт пользователей из таблицы customers, отсортированных по фамилии с применением DESC (по убыванию)
select FirstName as 'Name', LastName, Email
from customers
order by LastName DESC;

-- Вывести имена, фамилии, адреса электронных почт пользователей из таблицы customers, отсортированных сначала по имени (по возрастанию), а затем по фамилии (по убыванию)
select FirstName, LastName, Email
from customers
order by
FirstName ASC, LastName DESC;

-- Осуществить выборку первых 10 записей из таблицы customers
select *
from customers
LIMIT 10;

-- Осуществить выборку первых 10 записей из таблицы customers, отсортированных сначала по имени (по возрастанию), а затем по фамилии (по убыванию)
select *
from customers
order by FirstName ASC, LastName DESC 
LIMIT 10;

-- Вывести все записи из таблицы invoices
select *
from invoices;

-- Использование в запросе арифмитеческие операторы
select 
Total as 'Original Amount',
Total +10 as 'Addition Operator',
Total -10 as 'Subtraction Operator',
Total /10 as 'Division Operator',
Total *10 as 'Multiplication Operator',
Total %10 as 'Modulo Operator'
from invoices;

-- Осуществить выборку всех счетов, которые равны 1.98$
select *
from invoices
WHERE Total = 1.98;

-- Осуществить выборку всех счетов, которые равны 1.98$. Отсортировать страну по возрастанию
select *
from invoices
WHERE Total = 1.98
order by BillingCountry; 

-- Осуществить выборку всех счетов, превышающие значение 1.98$
select *
from invoices
WHERE Total > 1.98;

-- Осуществить выборку всех счетов, которые больше или равны 1.98$
select *
from invoices
WHERE Total >= 1.98;

-- Осуществить выборку всех счетов, кроме 1.98$
select *
from invoices
WHERE Total <> 1.98;

-- Осуществить выборку всех счетов, находящихся в диапозоне от 1.98$ до 5.00$
select *
from invoices
WHERE Total BETWEEN 1.98 AND 5.00;

-- Осуществить выборку всех счетов, находящихся в диапозоне от 1.98$ до 5.00$, отсортированных по дате
select *
from invoices
WHERE Total BETWEEN 1.98 AND 5.00
ORDER BY InvoiceDate; 

-- Осуществить выборку всех счетов, выяснив какая сумма максимальная
select *
from invoices
order by Total DESC; 

-- Осуществить выборку всех счетов, выяснив какая сумма минимальная
select *
from invoices
order by Total; 

-- Осуществить выборку всех счетов, сумма которых равна 1.98$ и 3.96$ с применением IN 
select *
from invoices
where Total IN (1.98, 3.96);

-- Осуществить выборку всех счетов, сумма которых равна 1.98$, 3.96$, 13.86$, 18.86$, 21.86$
select *
from invoices
where Total in (1.98, 3.96, 13.86, 18.86, 21.86);

-- Вывести все счета, выставленные в городе Тусон
select *
from invoices
where BillingCity = 'Tucson';

-- Вывести все счета, выставленные в городе Тусон. Отсортировать счета по убыванию
select *
from invoices
where BillingCity = 'Tucson'
order by Total DESC; 

-- Вывести все счета, выставленные в городах Тусон, Париж, Лондон
select *
from invoices
where BillingCity in ('Tucson', 'Paris', 'London');

-- Вывести все счета, выставленные в городах на букву Т, с применением LIKE 
select *
from invoices
where BillingCity LIKE 'T%';

-- Вывести все счета, выставленные в городах, содержащих букву Т
select *
from invoices
where BillingCity like '%t%';

-- Вывести все счета, выставленные в городах, заканчивающихся на букву N
select *
from invoices
where BillingCity like '%n';

-- Вывести все счета, выставленные в городах, не содержащих букву Т
select *
from invoices
where BillingCity NOT LIKE '%t%';

-- Вывести счета, которые были выставлены 1 марта 2009 года
select *
from invoices
where InvoiceDate = '2009-01-03 00:00:00';

-- Вывести счета, которые были выставлены в период с 1 января 2009 года по 31 декабря 2009
select *
from invoices
where InvoiceDate between '2009-01-01 00:00:00' and '2009-31-12 00:00:00';

-- Найти 10 самых крупных счетов, полученных после 5 июля 2009 года
select *
from invoices
where InvoiceDate > '2009-05-07 00:00:00'
order by Total DESC 
limit 10;

-- Вывести счета, которые были выставлены 1 марта 2009 года, с применением DATE
select *
from invoices
where DATE (InvoiceDate) = '2009-01-03';

