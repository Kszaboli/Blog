-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Okt 21. 08:59
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `bloggers`
--

CREATE TABLE `bloggers` (
  `Id` char(36) NOT NULL,
  `Name` longtext NOT NULL,
  `Sex` longtext NOT NULL,
  `Status` longtext NOT NULL,
  `RegistrationTime` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `bloggers`
--

INSERT INTO `bloggers` (`Id`, `Name`, `Sex`, `Status`, `RegistrationTime`) VALUES
('046ffc3e-fcd0-4e1e-b0ff-fcf39a6aec80', 'fpirreyi', 'Female', 'Sher-Wood Airport', '0000-00-00 00:00:00.000000'),
('0c3c3a61-7ee0-49a5-9720-14bb6564a731', 'cpaulilloy', 'Male', 'Ghadames East Airport', '0000-00-00 00:00:00.000000'),
('0e199809-fb7f-442f-8b40-01f8ae724212', 'gdanet4', 'Female', 'Malta International Airport', '0000-00-00 00:00:00.000000'),
('17fbd450-cca7-4767-b30f-ae0f43f30c67', 'fstollmeierj', 'Female', 'Alzintan Airport', '0000-00-00 00:00:00.000000'),
('24dbd21d-244c-40ed-a313-c6dd5dec766c', 'mforteye', 'Female', 'Amarais Airport', '0000-00-00 00:00:00.000000'),
('28e535f0-414a-4435-9299-9fec0ecb73d6', 'pliccardof', 'Male', 'Adnan Menderes International Airport', '0000-00-00 00:00:00.000000'),
('2bb191cc-52f2-4b27-93ae-3d5a0544d30f', 'mdallemore12', 'Male', 'Little Rock Air Force Base', '0000-00-00 00:00:00.000000'),
('2c446ace-42f6-4309-b98d-f60f545fde7a', 'pterrans18', 'Male', 'Strother Field', '0000-00-00 00:00:00.000000'),
('36f74356-012f-4d0f-a1da-1cc63b601d82', 'nburnsidesr', 'Female', 'Okaba Airport', '0000-00-00 00:00:00.000000'),
('3e256937-0b2c-45ef-bbf3-c48abcb53c5b', 'ecandlin5', 'Female', 'Al Qaisumah/Hafr Al Batin Airport', '0000-00-00 00:00:00.000000'),
('3ec809a5-78d0-4962-9466-ce129895bcf1', 'orobbie16', 'Male', 'Sardar Vallabhbhai Patel International Airport', '0000-00-00 00:00:00.000000'),
('43d99a17-a740-4639-bdd0-a2ffde7d5874', 'egreguols', 'Female', 'Cenej Airport', '0000-00-00 00:00:00.000000'),
('4973c146-07b3-46b2-884a-33186288a4a8', 'bguittetz', 'Female', 'Dease Lake Airport', '0000-00-00 00:00:00.000000'),
('4bc2b733-a8ca-4c65-be37-228582ae94c6', 'wfenimorem', 'Male', 'Georgetown County Airport', '0000-00-00 00:00:00.000000'),
('4e554254-3de0-4a06-bd4c-5f44d1919e8c', 'cblonfieldv', 'Female', 'Kao Airport', '0000-00-00 00:00:00.000000'),
('5028e55a-100d-41b9-a426-5695fbdca578', 'raulettag', 'Male', 'Michael AAF (Dugway Proving Ground) Airport', '0000-00-00 00:00:00.000000'),
('5a204398-4212-40d3-955e-a7f2325da7ee', 'kalessandone0', 'Male', 'John Murtha Johnstown Cambria County Airport', '0000-00-00 00:00:00.000000'),
('61626d4d-7d1d-4355-8fef-5f0ac94a57a6', 'jjahn13', 'Male', 'Furnace Creek Airport', '0000-00-00 00:00:00.000000'),
('61a92895-2dcc-4e60-bee1-1ab9393de833', 'aguised', 'Male', 'Yakutsk Airport', '0000-00-00 00:00:00.000000'),
('61fcfd20-7512-4f3c-a2f6-299789773cdd', 'llazar10', 'Female', 'La Crosse Municipal Airport', '0000-00-00 00:00:00.000000'),
('65b3a341-df2f-4faf-b0c1-38972dbe3ef9', 'hhedlingk', 'Male', 'Grissom Air Reserve Base', '0000-00-00 00:00:00.000000'),
('6753e6e5-bcd3-4299-b21e-6ed932d4e342', 'smaughan1b', 'Male', 'South Galway Airport', '0000-00-00 00:00:00.000000'),
('6a319e03-1559-4c95-90d8-09bf28387b8b', 'rwilloughway1c', 'Male', 'Kabwum', '0000-00-00 00:00:00.000000'),
('6b845702-f6ef-4bfd-a926-3f94a6254094', 'ajirickao', 'Female', 'Wagga Wagga City Airport', '0000-00-00 00:00:00.000000'),
('6c13995a-d034-454e-b113-abc3646a6597', 'bmccritichieb', 'Male', 'Yantai Laishan Airport', '0000-00-00 00:00:00.000000'),
('725676a1-4423-4543-8d0b-aaa9aaad2ec2', 'mfolkerdn', 'Female', 'Ileg Airport', '0000-00-00 00:00:00.000000'),
('7bfaf577-8969-484c-8d96-c7ae780abb4f', 'jprandoni19', 'Female', 'Tivat Airport', '0000-00-00 00:00:00.000000'),
('7f67b192-3458-4cdb-97cd-4450cbc5f694', 'hvermerq', 'Female', 'Ngjiva Pereira Airport', '0000-00-00 00:00:00.000000'),
('8143ab94-b2ae-4312-8bc1-ee91e954f712', 'vrispinp', 'Male', 'Osijek Airport', '0000-00-00 00:00:00.000000'),
('83aea10c-fee9-4580-9c7c-aa44ba939ea3', 'bbrechin17', 'Female', 'San Fernando De Apure Airport', '0000-00-00 00:00:00.000000'),
('83f3e4f3-e938-41e6-8a5d-784e5772fca9', 'kmacgilmartint', 'Female', 'Mananara Nord Airport', '0000-00-00 00:00:00.000000'),
('90856244-44c9-4f1a-ab21-49e701873d75', 'astrattonc', 'Female', 'Fréjus Airport', '0000-00-00 00:00:00.000000'),
('916c2dde-f892-4cb9-b0a8-455d8a15dfc9', 'mgaskin1a', 'Female', 'Taskul Airport', '0000-00-00 00:00:00.000000'),
('94dc4d73-573f-442a-bea9-f353b47ee161', 'lrobertet14', 'Male', 'Fallon Naval Air Station', '0000-00-00 00:00:00.000000'),
('96d04bfd-b14f-4d91-879a-2251387bbdb4', 'jtanslyh', 'Male', 'Montrose Regional Airport', '0000-00-00 00:00:00.000000'),
('9dbc6f84-fbd5-4225-9067-9751fad37026', 'jpatron15', 'Male', 'Monseñor Óscar Arnulfo Romero International Airport', '0000-00-00 00:00:00.000000'),
('a098464c-3b5d-41a6-921a-33be904182ab', 'ldebellisw', 'Male', 'Ölgii Airport', '0000-00-00 00:00:00.000000'),
('a3a2a20c-b2f6-4e21-ada4-fcd68ac160ce', 'lapplewhaite6', 'Female', 'Kelila Airport', '0000-00-00 00:00:00.000000'),
('a670fa12-ac7c-4e28-b855-ea192de7cf52', 'lgerckensl', 'Female', 'Kzyl-Orda Southwest Airport', '0000-00-00 00:00:00.000000'),
('d0743fea-550a-4b80-ae5b-78065a0ffce3', 'apittet1', 'Male', 'Zhijiang Airport', '0000-00-00 00:00:00.000000'),
('d7450537-81ca-4047-88b2-3ba2edb1e3fa', 'cbluett7', 'Male', 'Akure Airport', '0000-00-00 00:00:00.000000'),
('df166592-e366-4f3e-968c-40ec44a19df7', 'oiacovielloa', 'Male', 'Buttonville Municipal Airport', '0000-00-00 00:00:00.000000'),
('e04fb662-31a0-4631-b932-e750062c640a', 'lsutcliff1d', 'Male', 'Prospect Creek Airport', '0000-00-00 00:00:00.000000'),
('e74ee9ee-0739-441f-95e9-e640cb17ae1d', 'cmarsters2', 'Male', 'Langimar Airport', '0000-00-00 00:00:00.000000'),
('e792deac-53e6-4d1a-b6e5-b36eb1129a2d', 'fhacket9', 'Female', 'Fremont Municipal Airport', '0000-00-00 00:00:00.000000'),
('ec61d803-3eda-45a7-bc19-92ab11d6e4a2', 'mdegoey3', 'Female', 'Martin Miguel De Guemes International Airport', '0000-00-00 00:00:00.000000'),
('edfd4cf8-8dec-4c2c-ae09-78132eebfe00', 'fkonzelmann8', 'Female', 'Bremerton National Airport', '0000-00-00 00:00:00.000000'),
('ef05ab19-92bd-4e9e-9d57-aaad61665c65', 'aharyngton11', 'Male', 'Gambell Airport', '0000-00-00 00:00:00.000000'),
('f7a1e787-4a86-43b7-9808-251114b40a19', 'anevetx', 'Female', 'Downtown-Manhattan/Wall St Heliport', '0000-00-00 00:00:00.000000'),
('fbb79d35-0dbd-4b4b-b90a-5625aeabb364', 'mroubayu', 'Female', 'Phnom Penh International Airport', '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20241021064101_CreateBlogDb', '8.0.10');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `bloggers`
--
ALTER TABLE `bloggers`
  ADD PRIMARY KEY (`Id`);

--
-- A tábla indexei `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
