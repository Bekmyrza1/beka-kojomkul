-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 28 2019 г., 18:19
-- Версия сервера: 5.6.22-log
-- Версия PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `admin_aiti2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ex_file`
--

CREATE TABLE IF NOT EXISTS `ex_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(255) DEFAULT NULL,
  `fail` varchar(255) DEFAULT NULL,
  `vrem` datetime DEFAULT NULL,
  `name_kg` varchar(255) NOT NULL,
  `name_ru` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `fail_thumb` varchar(200) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `ex_file`
--

INSERT INTO `ex_file` (`id`, `id_user`, `fail`, `vrem`, `name_kg`, `name_ru`, `name_en`, `fail_thumb`, `type`) VALUES
(1, 1, 'image1.jpg', NULL, '', '', '', 'image1.jpg', 0),
(2, 1, 'image2.jpg', NULL, '', '', '', 'image2.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ex_file_page`
--

CREATE TABLE IF NOT EXISTS `ex_file_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_page` int(11) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `vrem` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `ex_file_page`
--

INSERT INTO `ex_file_page` (`id`, `id_page`, `id_file`, `vrem`) VALUES
(1, 4, 6, '2018-12-20 13:06:26');

-- --------------------------------------------------------

--
-- Структура таблицы `ex_menu`
--

CREATE TABLE IF NOT EXISTS `ex_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(11) DEFAULT '0',
  `id_parent` int(11) DEFAULT '0',
  `id_page` int(11) DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `target` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `name_kg` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name_ru` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=49 ;

--
-- Дамп данных таблицы `ex_menu`
--

INSERT INTO `ex_menu` (`id`, `sort`, `id_parent`, `id_page`, `url`, `target`, `name_kg`, `name_ru`, `name_en`) VALUES
(48, 3, 3, NULL, NULL, NULL, 'Кыргыз филологиясы жана журналистика факультети\n', 'Знание', 'Knowelege'),
(45, 4, 2, 1, NULL, NULL, 'Окуу процесси', 'Процесс обучения', 'Process education'),
(46, 5, 2, NULL, NULL, NULL, 'Жанылыктар', 'Новости', 'News'),
(41, 0, 2, NULL, NULL, NULL, 'Негизги меню', 'Главный меню', 'Main menu'),
(42, 1, 2, NULL, NULL, NULL, 'Университет', 'Университет', 'University'),
(43, 2, 2, 1, NULL, NULL, 'Билим беруу', 'Билим беруу', 'Education'),
(44, 3, 2, 0, NULL, NULL, 'Илими', 'Знание', 'Knowelege');

-- --------------------------------------------------------

--
-- Структура таблицы `ex_page`
--

CREATE TABLE IF NOT EXISTS `ex_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_type_page` int(11) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `user` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(250) CHARACTER SET utf8 NOT NULL,
  `vrem_ot` datetime DEFAULT NULL,
  `vrem_do` datetime DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `foto_thumb` varchar(250) CHARACTER SET utf8 NOT NULL,
  `video` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `audio` varchar(250) CHARACTER SET utf8 NOT NULL,
  `url` varchar(250) CHARACTER SET utf8 NOT NULL,
  `log` int(11) DEFAULT '1',
  `stat` int(11) DEFAULT '0',
  `vrem` datetime DEFAULT NULL,
  `tema_kg` varchar(255) CHARACTER SET utf8 NOT NULL,
  `tema_ru` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tema_en` varchar(250) CHARACTER SET utf8 NOT NULL,
  `page_text_kg` text CHARACTER SET utf8 NOT NULL,
  `page_text_ru` text CHARACTER SET utf8 NOT NULL,
  `page_text_en` text CHARACTER SET utf8,
  `key_text_kg` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `key_text_ru` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `key_text_en` varchar(250) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=23 ;

--
-- Дамп данных таблицы `ex_page`
--

INSERT INTO `ex_page` (`id`, `id_type_page`, `id_user`, `user`, `address`, `vrem_ot`, `vrem_do`, `foto`, `foto_thumb`, `video`, `audio`, `url`, `log`, `stat`, `vrem`, `tema_kg`, `tema_ru`, `tema_en`, `page_text_kg`, `page_text_ru`, `page_text_en`, `key_text_kg`, `key_text_ru`, `key_text_en`) VALUES
(22, 1, 0, '', '3', NULL, NULL, NULL, '', NULL, '', '', 1, 0, NULL, '', NULL, '', '', '', NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `ex_type_menu`
--

CREATE TABLE IF NOT EXISTS `ex_type_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_kg` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name_ru` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `ex_type_menu`
--

INSERT INTO `ex_type_menu` (`id`, `name_kg`, `name_ru`, `name_en`) VALUES
(1, 'Главный меню', 'Главный меню', 'Главный меню'),
(2, 'Фуутер 1 меню', 'Фуутер 1 меню', 'Фуутер 1 меню'),
(3, 'Фуутер 2 меню', 'Фуутер 2 меню', 'Фуутер 2 меню'),
(4, 'Верхный меню', 'Верхный меню', 'Верхный меню'),
(12, 'Жогорку меню', 'Жогорку меню', 'Жогорку меню');

-- --------------------------------------------------------

--
-- Структура таблицы `ex_type_page`
--

CREATE TABLE IF NOT EXISTS `ex_type_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `style` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `name_kg` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `name_ru` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `ex_type_page`
--

INSERT INTO `ex_type_page` (`id`, `style`, `name_kg`, `name_ru`, `name_en`) VALUES
(1, 'label-primary', 'Жаңылык', 'Новости', 'News'),
(2, 'label-default', 'Баракча', 'Страница', 'Page'),
(3, 'label-danger', 'Жарыя', 'Объявление', 'Announcement'),
(4, 'label-success', 'Окуя', 'События', 'Events'),
(5, 'label-warning', 'Фотогалерея', 'Фотогалерея', 'Photo Gallery'),
(6, 'label-warning', 'Видеогалерея', 'Видеогалерея', 'Video Gallery'),
(7, 'label-info', 'Слайдер', 'Слайдер', 'Slider');

-- --------------------------------------------------------

--
-- Структура таблицы `ex_type_user`
--

CREATE TABLE IF NOT EXISTS `ex_type_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `style` varchar(50) NOT NULL,
  `name_ru` varchar(50) NOT NULL,
  `name_kg` varchar(50) NOT NULL,
  `name_en` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `ex_type_user`
--

INSERT INTO `ex_type_user` (`id`, `style`, `name_ru`, `name_kg`, `name_en`) VALUES
(1, 'label-danger', 'Администратор', 'Администратор', 'Администратор'),
(2, 'label-success', 'Редактор', 'Редактор', 'Редактор');

-- --------------------------------------------------------

--
-- Структура таблицы `ex_user`
--

CREATE TABLE IF NOT EXISTS `ex_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `fio` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `type_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `ex_user`
--

INSERT INTO `ex_user` (`id`, `login`, `pass`, `fio`, `name`, `tel`, `type_user`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'Абдирасулов А.', NULL, '35646540', 1),
(2, 'argfan', '202cb962ac59075b964b07152d234b70', 'Эгешов А.', NULL, '56678567', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `massage`
--

CREATE TABLE IF NOT EXISTS `massage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `e_mail` varchar(50) NOT NULL,
  `massange` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
