-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 19, 2023 at 10:34 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eparasol`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `aktorzy`
--

CREATE TABLE `aktorzy` (
  `id` int(11) NOT NULL,
  `imieinazwisko` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aktorzy`
--

INSERT INTO `aktorzy` (`id`, `imieinazwisko`) VALUES
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Michael Johnson'),
(4, 'Emily Williams'),
(5, 'Daniel Brown'),
(6, 'Olivia Jones'),
(7, 'James Miller'),
(8, 'Sophia Davis'),
(9, 'Matthew Garcia'),
(10, 'Emma Rodriguez');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gatunki`
--

CREATE TABLE `gatunki` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gatunki`
--

INSERT INTO `gatunki` (`id`, `nazwa`) VALUES
(1, 'Action'),
(2, 'Drama'),
(3, 'Comedy'),
(4, 'Sci-Fi'),
(5, 'Thriller'),
(6, 'Horror'),
(7, 'Romance'),
(8, 'Adventure'),
(9, 'Fantasy'),
(10, 'Mystery'),
(11, 'Anime'),
(12, 'Crime');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezyserowie`
--

CREATE TABLE `rezyserowie` (
  `id` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rezyserowie`
--

INSERT INTO `rezyserowie` (`id`, `imie`, `nazwisko`) VALUES
(1, 'Christopher', 'Anderson'),
(2, 'Ava', 'Thomas'),
(3, 'Ethan', 'Taylor'),
(4, 'Isabella', 'Moore'),
(5, 'William', 'Jackson'),
(6, 'Mia', 'White'),
(7, 'Alexander', 'Harris'),
(8, 'Charlotte', 'Martinez'),
(9, 'Benjamin', 'Lee'),
(10, 'Amelia', 'Walker');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `serialeifilmy`
--

CREATE TABLE `serialeifilmy` (
  `id` int(11) NOT NULL,
  `tytul` varchar(100) NOT NULL,
  `rok_produkcji` int(11) DEFAULT NULL,
  `rezyser_id` int(11) DEFAULT NULL,
  `opis` text DEFAULT NULL,
  `obrazki` varchar(255) DEFAULT NULL,
  `serial_albo_film` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `serialeifilmy`
--

INSERT INTO `serialeifilmy` (`id`, `tytul`, `rok_produkcji`, `rezyser_id`, `opis`, `obrazki`, `serial_albo_film`) VALUES
(11, 'Attack on Titan', 2013, 1, 'Eren postanawia przeciwstawić się Tytanom, którzy napadli na jego miasto i zabili matkę.', 'web/AOT.jpg', 2),
(12, 'Death Note', 2006, 2, 'Yagami Light znajduje notatnik Boga Śmierci. Osoba, której imię i nazwisko tam wpisze, umiera.', 'web/DeathNote.jpg', 2),
(13, 'One Punch Man', 2015, 3, 'Ponadprzeciętnie silny Saitama potrafi jednym ciosem pokonać każdego wroga. Znudzony obecnym stanem rzeczy wyrusza na poszukiwania godnych siebie przeciwników.', 'web/OnePunchMan.jpg', 2),
(14, 'Fullmetal Alchemist: Brotherhood', 2009, 4, 'Edward i Alphonse poszukują kamienia filozoficznego, by odzyskać utracone ciała.', 'web/Brotherhood.jpg', 2),
(15, 'My Hero Academia', 2016, 5, 'Zbieg okoliczności sprawia, że Izuku Midoriya przejmuje moc największego superbohatera na świecie - All Mighta.', 'web/MyHeroAcademia.jpg', 2),
(16, 'Naruto', 2002, 6, 'Opowieść o przygodach ninja Naruto Uzumakiego - chłopca, w którym żyje legendarny lisi demon.', 'web/Naruto.jpg', 2),
(17, 'Cowboy Bebop', 1998, 7, 'Rok 2071. Łowcy nagród przemierzają kosmos w poszukiwaniu przestępców ściganych listami gończymi.', 'web/CowboyBebop.jpg', 2),
(18, 'Spirited Away', 2001, 8, 'Mała Chihiro wyrusza w pełną niebezpieczeństw podróż, aby ocalić swoich rodziców.', 'web/SpiritedAway.jpg', 1),
(19, 'Dragon Ball Z', 1989, 9, 'Pięć lat po odzyskaniu spokoju na Ziemi Son Goku i jego przyjaciele raz jeszcze muszą stawić czoło wrogowi - potężnemu rodowi Saiyan.', 'web/Dragon.jpg', 2),
(20, 'One Piece', 1999, 10, 'Monkey D. Luffy, pragnąc zostać królem piratów, zbiera załogę, którą łączy jeden cel - marzenia.', 'web/OnePiece.jpg', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sif`
--

CREATE TABLE `sif` (
  `id` int(11) NOT NULL,
  `Nazwa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sif`
--

INSERT INTO `sif` (`id`, `Nazwa`) VALUES
(1, 'Film'),
(2, 'Serial');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sifaktorzy`
--

CREATE TABLE `sifaktorzy` (
  `id` int(11) NOT NULL,
  `film_id` int(11) DEFAULT NULL,
  `aktor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sifaktorzy`
--

INSERT INTO `sifaktorzy` (`id`, `film_id`, `aktor_id`) VALUES
(21, 11, 3),
(22, 11, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sifgatunki`
--

CREATE TABLE `sifgatunki` (
  `id` int(11) NOT NULL,
  `film_id` int(11) DEFAULT NULL,
  `gatunek_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sifgatunki`
--

INSERT INTO `sifgatunki` (`id`, `film_id`, `gatunek_id`) VALUES
(21, 11, 1),
(22, 11, 9),
(23, 11, 11),
(24, 17, 11),
(25, 17, 8),
(26, 17, 4),
(27, 12, 9),
(28, 12, 11),
(30, 12, 12);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sifoceny`
--

CREATE TABLE `sifoceny` (
  `id` int(11) NOT NULL,
  `film_id` int(11) DEFAULT NULL,
  `ocena` decimal(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sifoceny`
--

INSERT INTO `sifoceny` (`id`, `film_id`, `ocena`) VALUES
(1, 11, 8.0),
(2, 11, 7.0),
(3, 11, 8.0),
(5, 11, 8.0),
(6, 11, 7.0),
(7, 17, 7.0),
(8, 19, 8.0),
(9, 15, 9.0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `aktorzy`
--
ALTER TABLE `aktorzy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `gatunki`
--
ALTER TABLE `gatunki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rezyserowie`
--
ALTER TABLE `rezyserowie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `serialeifilmy`
--
ALTER TABLE `serialeifilmy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rezyser_id` (`rezyser_id`),
  ADD KEY `xD` (`serial_albo_film`);

--
-- Indeksy dla tabeli `sif`
--
ALTER TABLE `sif`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sifaktorzy`
--
ALTER TABLE `sifaktorzy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_id` (`film_id`),
  ADD KEY `aktor_id` (`aktor_id`);

--
-- Indeksy dla tabeli `sifgatunki`
--
ALTER TABLE `sifgatunki`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_id` (`film_id`),
  ADD KEY `gatunek_id` (`gatunek_id`);

--
-- Indeksy dla tabeli `sifoceny`
--
ALTER TABLE `sifoceny`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_id` (`film_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktorzy`
--
ALTER TABLE `aktorzy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gatunki`
--
ALTER TABLE `gatunki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rezyserowie`
--
ALTER TABLE `rezyserowie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `serialeifilmy`
--
ALTER TABLE `serialeifilmy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sif`
--
ALTER TABLE `sif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sifaktorzy`
--
ALTER TABLE `sifaktorzy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sifgatunki`
--
ALTER TABLE `sifgatunki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sifoceny`
--
ALTER TABLE `sifoceny`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `serialeifilmy`
--
ALTER TABLE `serialeifilmy`
  ADD CONSTRAINT `serialeifilmy_ibfk_1` FOREIGN KEY (`rezyser_id`) REFERENCES `rezyserowie` (`id`),
  ADD CONSTRAINT `xD` FOREIGN KEY (`serial_albo_film`) REFERENCES `sif` (`id`);

--
-- Constraints for table `sifaktorzy`
--
ALTER TABLE `sifaktorzy`
  ADD CONSTRAINT `sifaktorzy_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `serialeifilmy` (`id`),
  ADD CONSTRAINT `sifaktorzy_ibfk_2` FOREIGN KEY (`aktor_id`) REFERENCES `aktorzy` (`id`);

--
-- Constraints for table `sifgatunki`
--
ALTER TABLE `sifgatunki`
  ADD CONSTRAINT `sifgatunki_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `serialeifilmy` (`id`),
  ADD CONSTRAINT `sifgatunki_ibfk_2` FOREIGN KEY (`gatunek_id`) REFERENCES `gatunki` (`id`);

--
-- Constraints for table `sifoceny`
--
ALTER TABLE `sifoceny`
  ADD CONSTRAINT `sifoceny_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `serialeifilmy` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
