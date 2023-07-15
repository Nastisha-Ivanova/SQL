# **SQL**

В данном репозитории находятся файлы по моему обучению SQL

### Содержимое репозитория
- **sTunes.db** - учебная база данных sTunes
- **SQL-запросы.sql** - мои выполненные запросы с комментариями в базе данных sTunes
- **SQL.HW.docx** - выполненные задания на английском
- **SQL_HW_1.sql** - запросы в базе данных qa students 1
```sql
select
  FamilyMembers.status,
  FamilyMembers.member_name,
  SUM(Payments.unit_price * amount) as costs
from FamilyMembers
	join Payments ON FamilyMembers.member_id = Payments.family_member
	join Goods ON Payments.good = Goods.good_id
	join GoodTypes ON Goods.type = GoodTypes.good_type_id
where GoodTypes.good_type_name = 'entertainment'
group by FamilyMembers.status, FamilyMembers.member_name


