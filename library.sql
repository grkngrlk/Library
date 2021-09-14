-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 20 May 2018, 05:40:13
-- Sunucu sürümü: 10.1.31-MariaDB
-- PHP Sürümü: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `library`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `books`
--

CREATE TABLE `books` (
  `book_ID` int(11) NOT NULL,
  `ISBN` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `wName` varchar(50) NOT NULL,
  `wSurname` varchar(50) NOT NULL,
  `publisher` varchar(25) NOT NULL,
  `pub_Year` varchar(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `stock` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `operations`
--

CREATE TABLE `operations` (
  `OpID` int(11) NOT NULL,
  `TCID` varchar(11) NOT NULL,
  `bookID` int(11) NOT NULL,
  `GivenDate` date NOT NULL,
  `LastDate` date NOT NULL,
  `takenDate` date NOT NULL,
  `extentions` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `person`
--

CREATE TABLE `person` (
  `TCno` varchar(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `surname` varchar(25) NOT NULL,
  `NofBooks` int(11) NOT NULL,
  `Title` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `password_Admin` varchar(10) NOT NULL,
  `password_LibAtt` varchar(10) NOT NULL,
  `Max_Book_Number_S` int(11) NOT NULL,
  `Max_Book_Number_I` int(11) NOT NULL,
  `Max_Extend_Date_S` int(11) NOT NULL,
  `Max_Extend_Date_I` int(11) NOT NULL,
  `Max_Extend_Time_S` int(11) NOT NULL,
  `Max_Extend_Time_I` int(11) NOT NULL,
  `Delay_Fee` int(11) NOT NULL,
  `Address` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`password_Admin`, `password_LibAtt`, `Max_Book_Number_S`, `Max_Book_Number_I`, `Max_Extend_Date_S`, `Max_Extend_Date_I`, `Max_Extend_Time_S`, `Max_Extend_Time_I`, `Delay_Fee`, `Address`) VALUES
('1234', '1234', 5, 10, 30, 60, 3, 3, 5, 1);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_ID`);

--
-- Tablo için indeksler `operations`
--
ALTER TABLE `operations`
  ADD PRIMARY KEY (`OpID`),
  ADD KEY `TCID` (`TCID`),
  ADD KEY `bookID` (`bookID`);

--
-- Tablo için indeksler `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`TCno`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`Address`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `books`
--
ALTER TABLE `books`
  MODIFY `book_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `operations`
--
ALTER TABLE `operations`
  MODIFY `OpID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
