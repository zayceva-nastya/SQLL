--найти фамилию продовца из лондона с мин коммиссионными
SELECT
    sname
FROM
    salespeople
WHERE
    city = 'london' And comm =(
    SELECT
        min(comm)
    FROM
        salespeople
    WHERE
        city = 'london'
)

--объединение трех таблиц
SELECT * FROM customers, orders, salespeople 
WHERE salespeople.snum = orders.snum AND customers.cnum = orders.cnum

--cр рейтинг покупателей для каждого продaвца
SELECT sname, AVG(rating)
 FROM customers, orders, salespeople 
 WHERE salespeople.snum = orders.snum AND customers.cnum = orders.cnum 
 GROUP BY sname;

--найти ср сумму заказов для каждого продавца на каждую дату
select sname, odate, avg(amt), count(*) 
from salespeople, orders 
where salespeople.snum=orders.snum 
GROUP by sname, odate

--ср сумму заказов на каждое число
select odate, avg(amt)
from orders
GROUP by odate