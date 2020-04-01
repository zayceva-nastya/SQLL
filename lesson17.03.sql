--добавление новой строки в табл
Insert Into (name)
VALUES ('болгарка');

--добавление нескольких строк в табл
Insert Into tab (name,price)
VALUES ('болгарка','730');

--поменять данные в табл
update tab set price=2;

--меняем только в строке с id=5
update tab set price=22
where id=5;

--меняет в нескольких строках,по указанным id
update tab set price=22
where id=5 or id=3;

--удаляет строку из столбца
delete from tab
where id=7;

--цена для лобзика -20руб
update tab set=price
where name='лобзик';

--с зп между 600 и 800 руб через оператор between
SELECT *
FROM people
where zp between 600 and 800

--находит людей из отдела рекламы и бухгалтерии
SELECT *
FROM people
where dep in('реклама,бухгалтерия');

--находит сотрудника
SELECT *
FROM people
where name  like ('Ива%');

--функции агрегирования
SELECT max(zp), min(zp), avg(zp), sum(zp)
FROM people;

SELECT count(name);
FROM people;

SELECT count(zp)
FROM people;

--считает сколько строк в табл всего
SELECT count(*)
FROM people;

--считает всех у кого зп выше средней
SELECT *
FROM people
where zp>(SELECT avg(zp)from people)



---------------------------
 phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 17 2020 г., 19:53
-- Версия сервера: 8.0.12
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `gorokhovskiipd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `Name`, `Price`) VALUES(1, 'Milk', 6);
INSERT INTO `goods` (`id`, `Name`, `Price`) VALUES(3, 'Bread', 8);
INSERT INTO `goods` (`id`, `Name`, `Price`) VALUES(4, 'Oil', 2);
INSERT INTO `goods` (`id`, `Name`, `Price`) VALUES(5, 'Water', 5);
INSERT INTO `goods` (`id`, `Name`, `Price`) VALUES(6, 'beer', 2);
INSERT INTO `goods` (`id`, `Name`, `Price`) VALUES(7, 'meat', 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


----------
-- Добавляем новый элемент
Insert into Goods
    (Name)
values
    ('beer');

Insert into Goods
    (Name, price)
values
    ('meat', 5.67);

-- update
Update Goods set price = 2;
Update Goods set price = 22 where id = 5;
Update Goods set price = 38 where id = 1 OR id = 3;
Update Goods set price = null where price > 20;
Update Goods set price = 6 where Name = 'Milk';
Update Goods set price = 8 where Name = 'Bread';
Update Goods set price = 5 where Name = 'Water';

-- delete
Delete From Goods where id = 2;

-- Between
SELECT *
FROM people
WHERE salary >= 1000 AND salary <= 2000;

SELECT *
FROM people
WHERE salary Between 1000 AND 1500;

-- IN
SELECT *
FROM people
WHERE Department = 'WEB-Development' OR Department = 'QA-Ingeneer';

SELECT *
FROM people
WHERE Department IN ('WEB-Development', 'Team_Lead');

-- Like
SELECT *
FROM people
WHERE Name LIKE 'Ив%';

-- % - любые символы
-- _ - один любой символ

-- вывести всех сотрудников, которые работают в отделе, название которого содержит ровно девять символов
SELECT *
FROM people
WHERE Department LIKE '_________';

-- Функции агрегирования
-- Функции агрегирования вычисляют групповые характеристики полей таблицы

-- min - миниму
-- max - максимум
-- sum - сумма
-- count - количество
-- avg - среднее

SELECT max(salary), min(salary), sum(salary), avg(salary)
from people;

SELECT count(Name)
from people;

Update people set salary = null where id = 5;
SELECT count(salary)
from people;

SELECT count(*)
from people;

-- Вложенные запросы
Update people set salary = 2500 where id = 5;
SELECT *
FROM people
WHERE salary > (SELECT avg(salary)
FROM people);

-- Найти работника с самой большой зарплатой
SELECT Name
FROM people
WHERE salary = (SELECT max(salary)
FROM people);

SELECT Name
FROM people
WHERE salary = (SELECT min(salary)
FROM people);

-- Вывести инфлормацию о сотрудниках, имеющих зарплату больше средней зарплаты WEB-Developments
SELECT Name
FROM people
WHERE salary > (SELECT avg(salary)
from people
where Department = 'WEB-Development');