--найти сотрудника у которого вторая буква б
Select *
FROM zp
where fio like '_б%';

--найти всех у кого последние 2 буквы в фамилии ов(это когда фамилия с инициалами, когда только фамилия where fio like '%ов')
Select *
FROM zp
where fio like '%ов %'


--GROUP BY
--сгруппировать по подразделениям и вывести ср зп
Select Dep, avg(zp)
FROM zp
GROUP BY dep;

--найти средний размер комиссионых продавцов в каждом городе
Select City, avg(comm)
FROM salespeople
GROUP BY city;


--HAVING
--вывести список городов,в к-х ср раз-р комисионыых продавцов больше 0,14
Select City avg(comm)
FROM salespeople
GROUP BY city
HAVING avg(comm)> .14;


--средний рейтинг покупателей в каждом городе
Select City, avg(RATING)
 FROM customers 
 GROUP BY city

 --вывести список городов в к-х мин рейтинг покупателей выше среднего рейтинга всех покупателей
 Select City,min(RATING)
 FROM customers 
 GROUP BY city
 HAVING min(RATING)>(SELECT avg(RATING)from customers);

--вложенные запросы, возвращающие не единственные значения
--ALL,ANY,SOME-можно использовать при сравнении некоторого числа 

--найти покупателей у к-х рейтинг выше рейтинга любого покупателя из лондона

SELECT *
FROM customers
where RATING > ALL(SELECT rating from customers where city='london');

SELECT *
FROM orders;

--вывести список заказов на сумму более 1000
SELECT *
FROM orders
where AMT>1000;

--вывести список городов в к-х живут покупатели совершившие покупку на сумму более 5000
SELECT city
FROM customers
where cnum in (Select cnum from orders where AMT>5000);

--написать запрос к-й выводит список городов в к-х проживают клиенты, из результатов запроса удалить дублирующие города
SELECT distinct city
from customers

--ПОЛНОЕ ИМЯ ОБЪЕКТОВ В БД (shop.customers.snum)
--объединение табл через справочную  целостность 
Select * from salespeople,orders
 where salespeople.snum = orders.snum;


--объединение табл customers и salespeople
 Select * 
 from customers,salespeople 
 where customers.snum = salespeople.snum 

 --найти общую сумму заказов каждого продавца
SELECT
    sname,
    SUM(amt)
FROM
    salespeople,
    orders
WHERE
    salespeople.snum = orders.snum
GROUP BY
    sname

    --посчитать колличество заказов у каждого продавца 
    SELECT sname, COUNT(*) 
    FROM salespeople, orders 
    WHERE salespeople.snum = orders.snum GROUP BY sname;


--к-во и сумма заказов по каждому продавцу
SELECT
    sname,
    SUM(amt)
    COUNT(*)
 FROM salespeople, orders 
    WHERE salespeople.snum = orders.snum 
    GROUP BY sname;



SELECT
    sname as "имя",
    SUM(amt) as "сумма заказов",
    COUNT(*) as "колличество заказов"
FROM
    salespeople,
    orders 
WHERE
    salespeople.snum = orders.snum, 
GROUP BY
    sname



