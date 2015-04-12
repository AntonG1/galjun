-- phpMyAdmin SQL Dump
-- version 4.0.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 12, 2015 at 11:54 PM
-- Server version: 5.6.11-log
-- PHP Version: 5.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `galjun`
--
CREATE DATABASE IF NOT EXISTS `galjun` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `galjun`;

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE IF NOT EXISTS `drinks` (
  `IDdrink` int(11) NOT NULL AUTO_INCREMENT,
  `drink` varchar(32) NOT NULL,
  `drinkPrice` varchar(16) NOT NULL,
  PRIMARY KEY (`IDdrink`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `drinks`
--

INSERT INTO `drinks` (`IDdrink`, `drink`, `drinkPrice`) VALUES
(1, 'Espresso coffee', '6,00 Kuna'),
(2, 'Capppuccino', '9,00 Kuna'),
(3, 'Mineral water', '10,00 Kuna'),
(4, 'Water', '8,00 Kuna'),
(5, 'Apple juice', '12,00 Kuna'),
(6, 'Apricot juice ', '15,00 Kuna'),
(7, 'Coca cola', '12,00 Kuna'),
(8, 'Beer', '13,00 Kuna'),
(9, 'Wine', '18,00 Kuna'),
(10, 'Brandy', '20,00 Kuna');

-- --------------------------------------------------------

--
-- Table structure for table `listajela`
--

CREATE TABLE IF NOT EXISTS `listajela` (
  `IDmeal` int(11) NOT NULL AUTO_INCREMENT,
  `mealName` varchar(32) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`IDmeal`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `listajela`
--

INSERT INTO `listajela` (`IDmeal`, `mealName`) VALUES
(1, 'Kontinentalni'),
(2, 'Topli sendviči'),
(3, 'Juha i sendvič'),
(4, 'Čili'),
(5, 'Talijanska kobasica'),
(6, 'Alfredo piletina'),
(7, 'Ma Butlers mesna štruca'),
(8, 'Pirjana govedina'),
(9, 'Goveđi gulaš'),
(10, 'Morska juha');

-- --------------------------------------------------------

--
-- Table structure for table `mealdescription`
--

CREATE TABLE IF NOT EXISTS `mealdescription` (
  `IDmeal` int(11) NOT NULL AUTO_INCREMENT,
  `mealName` varchar(32) NOT NULL,
  `mealPrice` varchar(32) NOT NULL,
  `mealDescr` text NOT NULL,
  `slika` varchar(16) NOT NULL,
  PRIMARY KEY (`IDmeal`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `mealdescription`
--

INSERT INTO `mealdescription` (`IDmeal`, `mealName`, `mealPrice`, `mealDescr`, `slika`) VALUES
(1, 'Continental', 'Price: 30,00 Kuna', 'Enjoy this traditional favorite, granola, yogurt, fresh fruit, seasonal berries, and a bagel.', 'img/jelo1.jpg'),
(2, 'Hot breakfast sandwiches', 'Price: 25,00 Kuna', 'Eggs, Sausage/Bacon, & Cheese on a toasted muffin.', 'img/jelo2.jpg'),
(3, 'Soup -N- Sandwich', 'Price: 45,00 Kuna', 'Full-flavored tuna salad, with iceberg lettuce and tomato slices, served on whole wheat bread. Complemented by chicken noodle soup.', 'img/jelo3.jpg'),
(4, 'Chili', 'Price: 50,00 Kuna', 'Served with good bread. Seasoned ground beef, kidney beans, chopped onions & peppers, pureed & diced tomatoes, flavored with a variety of spices. Topped with shredded cheddar cheese and sour cream.', 'img/jelo4.jpg'),
(5, 'Italian sausage', 'Price: 40,00 Kuna', 'This spicy sandwich is served with grilled onions and peppers on a submarine roll. Condiments are of your choosing. Served with potato salad.', 'img/jelo5.jpg'),
(6, 'Blackened Chicken Alfredo', 'Price: 55,00 Kuna', 'Spicy strips of chicken in a delicious sauce consisting of cream, garlic, pepper, butter, and Parmesan cheese. Served on a bed of fettuccine, with a side salad.', 'img/jelo6.jpg'),
(7, 'Ma Butlers Meatloaf', 'Price: 35,00 Kuna', 'Ground beef seasoned with diced onion and secret spices, and baked to completion in the oven. Served with garlic mashers and a side salad.', 'img/jelo7.jpg'),
(8, 'Pot roast', 'Price: 60,00 Kuna', 'Baked with carrots and potatoes. Topped with gravy made from the drippings, accompanied by a side salad.', 'img/jelo8.jpg'),
(9, 'Beef stew', 'Price: 40,00 Kuna', 'Chunks of seasoned beef, browned, and then cooked with potatoes, carrots, corn, onion, and peas in a full-flavored brown sauce.', 'img/jelo9.jpg'),
(10, 'Sea Chowder', 'Price: 55,00 Kuna', 'Chunks of seafood, cooked with corn, potatoes, and carrots, and stewed in a rich, creamy broth. Seasoned with garlic, salt, pepper, and more.', 'img/jelo10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `meallist`
--

CREATE TABLE IF NOT EXISTS `meallist` (
  `IDmeal` int(11) NOT NULL AUTO_INCREMENT,
  `mealName` varchar(32) NOT NULL,
  PRIMARY KEY (`IDmeal`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `meallist`
--

INSERT INTO `meallist` (`IDmeal`, `mealName`) VALUES
(1, 'Continental'),
(2, 'Hot breakfast sandwiches'),
(3, 'Soup -N- Sandwich'),
(4, 'Chili'),
(5, 'Italian Sausage'),
(6, 'Blackened Chicken Alfredo'),
(7, 'Ma Butlers Meatloaf'),
(8, 'Pot Roast'),
(9, 'Beef Stew'),
(10, 'Sea Chowder');

-- --------------------------------------------------------

--
-- Table structure for table `opisjela`
--

CREATE TABLE IF NOT EXISTS `opisjela` (
  `IDmeal` int(11) NOT NULL AUTO_INCREMENT,
  `mealName` varchar(32) CHARACTER SET utf8 NOT NULL,
  `mealPrice` varchar(32) NOT NULL,
  `mealDescr` text CHARACTER SET utf8 NOT NULL,
  `slika` varchar(16) NOT NULL,
  PRIMARY KEY (`IDmeal`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `opisjela`
--

INSERT INTO `opisjela` (`IDmeal`, `mealName`, `mealPrice`, `mealDescr`, `slika`) VALUES
(1, 'Kontinentalni', 'Cijena: 30,00 Kuna', 'Uživajte u ovom omiljenom tradicionalnom jelu. Granola, jogurt, svježe voće, bobičasto voće, sezonske i pecivo.', 'img/jelo1.jpg'),
(2, 'Topli sendviči', 'Cijena: 25,00 Kuna', 'Jaja, kobasice/slanina i sir na tostiranom mufinu.', 'img/jelo2.jpg'),
(3, 'Juha i sendvič', 'Cijena: 45,00 Kuna', 'Punog okusa salata od tune, sa zelenom salatom i kriškama rajčica, služi se na integralnom kruhu. Dopunjena pilećom juhom s rezancima.', 'img/jelo3.jpg'),
(4, 'Čili', 'Cijena: 50,00 Kuna', 'Poslužen sa dobrim kruhom. Zrela govedina, grah, sjeckani luk i paprika, pire i na kockice sjeckane rajčice, začinjen s različitim začinima. Preliven isjeckanim cheddar sirom i vrhnjem.', 'img/jelo4.jpg'),
(5, 'Talijanska kobasica', 'Cijena: 40,00 Kuna', 'Ovaj ljuto yačinjen sendvič se posluslužuje s lukom na žaru i paprikom. Začini su po vašem izboru. Poslužen sa salatom od krumpira.', 'img/jelo5.jpg'),
(6, 'Alfredo piletina', 'Cijena: 55,00 Kuna', 'Začinjena trake piletine u ukusnom umaku koji se sastoji od vrhnja, češnjaka, papra, maslaca i parmezana. Poslužuje se na podlozi od fettuccine, sa salatom.', 'img/jelo6.jpg'),
(7, 'Ma Butlers mesna štruca', 'Cijena: 35,00 Kuna', 'Začinjena kockice govedine lukom i tajnim začinima i pečena do završetka u pećnici. Jede se s gnječenim češnjakom i salatom.', 'img/jelo7.jpg'),
(8, 'Pirjana govedina', 'Cijena: 60,00 Kuna', 'Pečena s mrkvom i krumpirom. Prelivena umakom napravljenim od soka od pečenja , uz salatu.', 'img/jelo8.jpg'),
(9, 'Goveđi gulaš', 'Cijena: 40,00 Kuna', 'Komadi začinjene govedine, porumenjena, a zatim kuhana s krumpirom, mrkvom, kukuruzom, lukom i grašakom u punom okusu smeđeg umaka.', 'img/jelo9.jpg'),
(10, 'Morska juha', 'Cijena: 55,00 Kuna', 'Komadi plodova mora, kuhanih s kukuruzom, krumpirom i mrkvom, a pirjano u bogatoj, kremastoj juhi. Začinjena češnjakom, soli, paprom, i još mnogo toga.', 'img/jelo10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pica`
--

CREATE TABLE IF NOT EXISTS `pica` (
  `IDdrink` int(11) NOT NULL AUTO_INCREMENT,
  `drink` varchar(32) NOT NULL,
  `drinkPrice` varchar(16) NOT NULL,
  PRIMARY KEY (`IDdrink`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `pica`
--

INSERT INTO `pica` (`IDdrink`, `drink`, `drinkPrice`) VALUES
(1, 'Kava espresso', '6,00 Kuna'),
(2, 'Capppuccino', '9,00 Kuna'),
(3, 'Mineralna voda', '10,00 Kuna'),
(4, 'Negazirana voda', '8,00 Kuna'),
(5, 'Sok od jabuke', '12,00 Kuna'),
(6, 'Sok od marelice', '15,00 Kuna'),
(7, 'Coca cola', '12,00 Kuna'),
(8, 'Pivo', '13,00 Kuna'),
(9, 'Vino', '18,00 Kuna'),
(10, 'Rakija', '20,00 Kuna');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
