-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 24 2020 г., 20:59
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
-- База данных: `shop222`
--
CREATE DATABASE IF NOT EXISTS `shop222` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `shop222`;

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE `customers` (
  `CNUM` int(11) NOT NULL,
  `CNAME` varchar(45) DEFAULT NULL,
  `CITY` varchar(45) DEFAULT NULL,
  `RATING` int(11) DEFAULT NULL,
  `SNUM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `customers`
--

INSERT INTO `customers` VALUES(1030, 'Sara', 'New Jercy', 0, 1001);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `ONUM` int(11) NOT NULL,
  `AMT` float DEFAULT NULL,
  `ODATE` date DEFAULT NULL,
  `SNUM` int(11) NOT NULL,
  `CNUM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` VALUES(1001, 12.36, '2020-03-01', 1001, 1030);

-- --------------------------------------------------------

--
-- Структура таблицы `salespeople`
--

CREATE TABLE `salespeople` (
  `SNUM` int(11) NOT NULL,
  `SNAME` varchar(45) DEFAULT NULL,
  `CITY` varchar(45) DEFAULT NULL,
  `COMM` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `salespeople`
--

INSERT INTO `salespeople` VALUES(1001, 'Jonn', 'London', 0.15);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CNUM`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ONUM`),
  ADD KEY `fk_ORDERS_salespeople_idx` (`SNUM`),
  ADD KEY `fk_ORDERS_CUSTOMERS1_idx` (`CNUM`);

--
-- Индексы таблицы `salespeople`
--
ALTER TABLE `salespeople`
  ADD PRIMARY KEY (`SNUM`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `customers`
--
ALTER TABLE `customers`
  MODIFY `CNUM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1031;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `ONUM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT для таблицы `salespeople`
--
ALTER TABLE `salespeople`
  MODIFY `SNUM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_ORDERS_CUSTOMERS1` FOREIGN KEY (`CNUM`) REFERENCES `customers` (`cnum`),
  ADD CONSTRAINT `fk_ORDERS_salespeople` FOREIGN KEY (`SNUM`) REFERENCES `salespeople` (`snum`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

