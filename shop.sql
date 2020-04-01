-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 24 2020 г., 19:48
-- Версия сервера: 5.6.41
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
-- База данных: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE `customers` (
  `CNUM` int(50) NOT NULL,
  `CNAME` varchar(50) NOT NULL,
  `CITY` varchar(50) NOT NULL,
  `RATING` int(50) NOT NULL,
  `SNUM` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `customers`
--

INSERT INTO `customers` VALUES(2001, 'Hoffman', 'London', 100, 1001);
INSERT INTO `customers` VALUES(2002, 'Giovanni', 'Rome', 200, 1003);
INSERT INTO `customers` VALUES(2003, 'Liu', 'SanJose', 200, 1003);
INSERT INTO `customers` VALUES(2004, 'Grass', 'Berlin', 300, 1002);
INSERT INTO `customers` VALUES(2006, 'Clemens', 'London', 100, 1001);
INSERT INTO `customers` VALUES(2008, 'Clismeros', 'SanJose', 300, 1007);
INSERT INTO `customers` VALUES(2007, 'Pereira', 'Rome', 100, 1004);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `ONUM` int(11) NOT NULL,
  `AMT` float NOT NULL,
  `ODATE` date NOT NULL,
  `CNUM` int(11) NOT NULL,
  `SNUM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` VALUES(3001, 18.69, '1990-03-10', 2008, 1007);
INSERT INTO `orders` VALUES(3003, 767.19, '1990-03-10', 2001, 1001);
INSERT INTO `orders` VALUES(3002, 1900.1, '1990-03-10', 2007, 1004);
INSERT INTO `orders` VALUES(3005, 5160.45, '1990-03-10', 2003, 1002);
INSERT INTO `orders` VALUES(3006, 1098.16, '1990-03-10', 2008, 1007);
INSERT INTO `orders` VALUES(3009, 1713.23, '1990-04-10', 2002, 1003);
INSERT INTO `orders` VALUES(3007, 75.75, '1990-04-10', 2004, 1002);
INSERT INTO `orders` VALUES(3008, 4723, '1990-05-10', 2006, 1001);
INSERT INTO `orders` VALUES(3010, 1309.95, '1990-06-10', 2004, 1002);
INSERT INTO `orders` VALUES(3011, 9891.88, '1990-06-10', 2006, 1001);

-- --------------------------------------------------------

--
-- Структура таблицы `salespeople`
--

CREATE TABLE `salespeople` (
  `SNUM` int(50) NOT NULL,
  `SNAME` varchar(50) NOT NULL,
  `CITY` varchar(50) NOT NULL,
  `COMM` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `salespeople`
--

INSERT INTO `salespeople` VALUES(1001, 'Peel', 'London', 0.12);
INSERT INTO `salespeople` VALUES(1002, 'Serres', 'San Jose', 0.13);
INSERT INTO `salespeople` VALUES(1004, 'Motika', 'London', 0.11);
INSERT INTO `salespeople` VALUES(1007, 'Rifkin', 'Barcelona', 0.15);
INSERT INTO `salespeople` VALUES(1003, 'Axelrod', 'New-York', 0.12);
INSERT INTO `salespeople` VALUES(1002, 'peel2', 'london', 0.11);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
