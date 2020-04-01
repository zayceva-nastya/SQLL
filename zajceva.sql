-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 13 2020 г., 19:51
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
-- База данных: `zajceva`
--
CREATE DATABASE IF NOT EXISTS `zajceva` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `zajceva`;

-- --------------------------------------------------------

--
-- Структура таблицы `zp`
--

CREATE TABLE `zp` (
  `№` int(11) NOT NULL,
  `FIO` varchar(50) NOT NULL,
  `ZP` int(11) NOT NULL,
  `Dep` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `zp`
--

INSERT INTO `zp` (`№`, `FIO`, `ZP`, `Dep`) VALUES
(1, 'Иванов', 550, 'Производство'),
(2, 'Петров', 600, 'Производство'),
(3, 'Смирнов', 1000, 'Бухгалтерия'),
(4, 'Соболев', 1100, 'Бухгалтерия'),
(5, 'Сидоров', 600, 'Планово-экономический'),
(6, 'Козлов', 1000, 'Бухгалтерия'),
(7, 'Собакин', 600, 'Производство'),
(8, 'Васюта', 1500, 'Администрация'),
(9, 'Кошкина', 1000, 'Бухгалтерия'),
(10, 'Смолин', 100, 'Производство');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
