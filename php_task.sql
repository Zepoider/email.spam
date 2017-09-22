-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Вер 23 2017 р., 01:01
-- Версія сервера: 5.6.37
-- Версія PHP: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `php_task`
--

-- --------------------------------------------------------

--
-- Структура таблиці `chat_user`
--

CREATE TABLE `chat_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `chat_user`
--

INSERT INTO `chat_user` (`id`, `name`, `status`) VALUES
(17, 'Zepa', 1),
(18, 'zepoider@gmail.com', 0),
(21, 'Троглодит', 0),
(22, 'Мизантроп', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `message`
--

INSERT INTO `message` (`id`, `message`, `user_id`, `time`) VALUES
(7, 'Ура, я допилил чат :)', 17, '2017-09-22 21:40:04'),
(8, 'Та не гони. Как ты так смог?', 18, '2017-09-22 21:40:37'),
(9, 'Было трудно, много глюков и все дела, но справился :)', 21, '2017-09-22 21:42:07'),
(10, 'Да, я молодец :)', 17, '2017-09-22 21:51:49'),
(11, 'Сам себя не похвалишь, никто не похвалит :)', 17, '2017-09-22 21:52:09'),
(12, 'Ага, ты такой :)', 18, '2017-09-22 21:52:38'),
(13, 'Шо у вас тут блять за общество педрил самохвалов?', 22, '2017-09-22 21:53:21'),
(14, 'Мизантропчик подошел...пошел нахер, мудило тупое', 18, '2017-09-22 21:54:28');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `chat_user`
--
ALTER TABLE `chat_user`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `chat_user`
--
ALTER TABLE `chat_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблиці `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
