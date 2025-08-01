-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2025 at 03:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project-moviesbox`
--
CREATE DATABASE IF NOT EXISTS `project-moviesbox` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project-moviesbox`;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `sinopsis` text NOT NULL,
  `release_year` int(4) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `genres` varchar(255) NOT NULL,
  `average_rating` float DEFAULT NULL,
  `posters_url` varchar(255) NOT NULL,
  `background_url` varchar(255) NOT NULL,
  `trailer_url` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `title`, `logo_url`, `sinopsis`, `release_year`, `duration`, `genres`, `average_rating`, `posters_url`, `background_url`, `trailer_url`, `created_at`, `updated_at`) VALUES
(1, 'Your Name', 'https://image.tmdb.org/t/p/original/zKI7UKmsB5ywy6Rjs3wWvBfhafJ.png', 'Seorang anak laki-laki di Tokyo dan seorang gadis di pedesaan menemukan diri mereka bertukar tubuh secara berkala. Mereka mulai berkomunikasi dan mencoba untuk menemukan satu sama lain.', 2016, 107, 'Animation, Drama, Fantasy, Romance', 8.4, 'https://image.tmdb.org/t/p/original/q719jXXEzOoYaps6babgKnONONX.jpg', 'https://image.tmdb.org/t/p/original/q3tBZ7azR72XVmYU3fSmj2kwlaC.jpg', 'https://www.youtube.com/watch?v=xU47nhruN-Q', '2025-07-31 15:25:55', '2025-07-31 15:25:55'),
(2, 'Sore Istri dari masa depan', 'https://lh6.googleusercontent.com/JFpbSkEaP_JRvUFiIF9MFN740DIjJMQ7-ebvISQmb0HK5CDFG3V7W0lImZQzHri0e5bQb-XaJp8-yCTxHjDswI86Zj26PAGv8ufQem4CI6W0HVX_iw2svk-FgOxOt6qD5gOpKtHjD_5es3dCDFou-yztZcY0A7xNdt1iulU5U859Et7wHnT1cA=w1280', 'Kisah seorang pria yang secara tak terduga bertemu dengan seorang wanita yang mengaku sebagai istrinya dari masa depan, membawa serangkaian kejadian lucu dan romantis.', 2024, 95, 'Comedy, Romance, Sci-Fi', 7.8, 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhpBdIKcoGTnEBaxeC603tRmEPBnjCluHxWYkWFya6yyKEIDLQrMxpQXfYu11xVPiUb364rRR020678cqPQBq4J_6B237c50WNnekIF71dszPuzIIHBALm4xjXPr09ID7ZSzfnvNmqAQBgO5RsHc658ivh0YufzG__0iFYy5nRYsvtHwDo7pixQZW8oYalp/s1430', 'https://lh4.googleusercontent.com/1XNDFJe9HgPMSXu1RJZb_8jEpHI5HJhyNnXOqu6yLqNoFs52i3YRW1JQKwYBBqPP0iUswvSvXFaR72E4GVNX9N3K7c3mqXqLwM6i0s-1at5ggDYhVlvpokIxcV-nsQ0ekVb8cuqzLwVeDWY3YwIqLt2MoqG_xmh4BAxReboI__TKj21Dzk5L9Q=w1280', 'https://www.youtube.com/watch?v=HiVzpboRpR0&t=2s', '2025-07-31 15:25:55', '2025-07-31 15:25:55'),
(3, 'Shutter Island', 'https://media.themoviedb.org/t/p/w500/hRtb8ju7S4xNP3s6RtDqyR1wn8j.png', 'Pada tahun 1954, seorang Marsekal AS menyelidiki hilangnya seorang pembunuh dari rumah sakit jiwa di sebuah pulau terpencil.', 2010, 138, 'Mystery, Thriller, Drama', 8.2, 'https://media.themoviedb.org/t/p/w220_and_h330_face/nrmXQ0zcZUL8jFLrakWc90IR8z9.jpg', 'https://image.tmdb.org/t/p/original/8xt8AMb1OKC63AdhNSaYBWxB4Iq.jpg', 'https://www.youtube.com/watch?v=v8yrZSkKxTA', '2025-07-31 15:25:55', '2025-07-31 15:25:55'),
(4, 'Batman v Superman', 'https://lh6.googleusercontent.com/IfIn2E9sRr0gdEyqCcL67JKFs9EdFKJNHcebTiM-dvA9WWDraEK9anvI2cUBhXhRSC7lLG5r2hb5y6NFEIbUeRJoqdvsJPMJSkqn6TBnrYnuc5hukqlyO1uRTHwNya1RitN3OluZzzrG2-tBgZ-gTLWLle6nXJdfarAYoI3GkgN8wn1caC85Tg=w1280', 'Khawatir dengan tindakan pahlawan super dewa, Batman mengambil tindakan terhadap Superman, sementara ancaman baru muncul, menempatkan umat manusia dalam bahaya terbesar.', 2016, 153, 'Action, Adventure, Sci-Fi', 6.5, 'https://image.tmdb.org/t/p/original/5UsK3grJvtQrtzEgqNlDljJW96w.jpg', 'https://image.tmdb.org/t/p/original/doiUtOHzcxXFl0GVQ2n8Ay6Pirx.jpg', 'https://www.youtube.com/watch?v=0WWzgGyAH6Y', '2025-07-31 15:25:55', '2025-07-31 15:25:55'),
(5, 'Avengers Endgame', 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Avengers_endgame_logo.png', 'Seorang gadis muda yang pemalu bekerja di taman hiburan dan jatuh cinta dengan wahana baru yang disebut Jumbo.', 2020, 94, 'Action, Fantasy, Superhero', 6.8, 'https://media.themoviedb.org/t/p/w220_and_h330_face/ulzhLuWrPK07P1YkdWQLZnQh1JL.jpg', 'https://image.tmdb.org/t/p/original/7RyHsO4yDXtBv1zUU3mTpHeQ0d5.jpg', 'https://www.youtube.com/watch?v=TcMBFSGVi1c', '2025-07-31 15:25:55', '2025-07-31 15:25:55'),
(6, 'Inception', 'https://image.tmdb.org/t/p/original/8ThUfwQKqcNk6fTOVaWOts3kvku.png', 'Seorang pencuri yang mencuri informasi korporat melalui teknologi berbagi mimpi diberi tugas kebalikan dari pekerjaannya: menanamkan ide ke dalam pikiran bawah sadar seorang CEO.', 2010, 148, 'Action, Adventure, Sci-Fi', 8.8, 'https://image.tmdb.org/t/p/original/oYuLEt3zVCKq57qu2F8dT7NIa6f.jpg', 'https://image.tmdb.org/t/p/original/gqby0RhyehP3uRrzmdyUZ0CgPPe.jpg', 'https://www.youtube.com/watch?v=YoHD9XEInc0', '2025-07-31 15:25:55', '2025-07-31 15:25:55'),
(7, 'Interstellar', 'https://lh5.googleusercontent.com/a1qEMwjRKxFB5b91jbE04FoQwTLjQZSviSfWTu7IxY6plDNUaN4G4lWJJF-oDuw7Z_J64MmgPFo_ksZMi8IHFRwAvtb0U0izzYet_GBc-Hp9MKLoDDUO9K9IKMeAE8jxLaAYk6fcrTN6Qq8mPVgqf_qJ4AcBEoSjgKR9cGhkgcrFodMDTYoogA=w1280', 'Sebuah tim penjelajah melakukan perjalanan melalui lubang cacing di luar angkasa dalam upaya untuk memastikan kelangsungan hidup umat manusia.', 2014, 169, 'Adventure, Drama, Sci-Fi', 8.6, 'https://media.themoviedb.org/t/p/w220_and_h330_face/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg', 'https://image.tmdb.org/t/p/original/2ssWTSVklAEc98frZUQhgtGHx7s.jpg', 'https://www.youtube.com/watch?v=zSWdZVtXT7E', '2025-07-31 15:25:55', '2025-07-31 15:25:55'),
(8, 'Parasite', 'https://media.themoviedb.org/t/p/w500/eEGZWCv0OYbMLCaNsDl1cgrvnWR.png', 'Keluarga miskin Ki-taek sangat tertarik pada keluarga Park yang kaya dan glamor untuk layanan mereka yang unik.', 2019, 132, 'Comedy, Drama, Thriller', 8.5, 'https://image.tmdb.org/t/p/original/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg', 'https://image.tmdb.org/t/p/original/tv2gjDxaxyhVNDESFLJ6oGT10sL.jpg', 'https://www.youtube.com/watch?v=SEUXfv87Wpk', '2025-07-31 15:25:55', '2025-07-31 15:25:55'),
(9, 'Spirited Away', 'https://media.themoviedb.org/t/p/w500/hkUi1Z15Ymj9GNamWQkzUhehLuy.png', 'Selama pindah ke pinggir kota, seorang gadis muda yang cemberut memasuki dunia yang dihuni oleh dewa, penyihir, dan roh, dan di mana manusia diubah menjadi binatang.', 2001, 125, 'Animation, Adventure, Family', 8.6, 'https://image.tmdb.org/t/p/original/39wmItIWsg5sZMyRUHLkWBcuVCM.jpg', 'https://image.tmdb.org/t/p/original/m4TUa2ciEWSlk37rOsjiSIvZDXE.jpg', 'https://www.youtube.com/watch?v=ByXuk9QqQkk', '2025-07-31 15:25:55', '2025-07-31 15:25:55'),
(10, 'The Dark Knight', 'https://media.themoviedb.org/t/p/w500/nO5Uix3Qr4WjOyU1BMPv0okyNWm.png', 'Ketika ancaman yang dikenal sebagai Joker mendatangkan malapetaka dan kekacauan pada penduduk Gotham, Batman harus menerima salah satu ujian psikologis dan fisik terbesar untuk melawan ketidakadilan.', 2008, 152, 'Action, Crime, Drama', 9, 'https://image.tmdb.org/t/p/original/qJ2tW6WMUDux911r6m7haRef0WH.jpg', 'https://image.tmdb.org/t/p/original/cfT29Im5VDvjE0RpyKOSdCKZal7.jpg', 'https://www.youtube.com/watch?v=EXeTwQWrcwY', '2025-07-31 15:25:55', '2025-07-31 15:25:55'),
(11, 'Forrest Gump', 'Forrest Gump', 'Kehidupan seorang pria Alabama yang berhati baik dan sederhana yang secara tidak sengaja menyaksikan dan memengaruhi beberapa peristiwa penting dalam sejarah abad ke-20.', 1994, 142, 'Drama, Romance', 8.8, 'https://placehold.co/600x900/000000/FFFFFF?text=Forrest+Gump+Poster', 'https://placehold.co/300x169/000000/FFFFFF?text=Forrest+Gump+Thumb', 'https://www.youtube.com/watch?v=bT_sQGf0_Kk', '2025-07-31 15:25:55', '2025-07-31 15:25:55'),
(12, 'The Matrix', 'The Matrix', 'Seorang peretas komputer menemukan bahwa realitas adalah simulasi yang diciptakan oleh mesin.', 1999, 136, 'Action, Sci-Fi', 8.7, 'https://placehold.co/600x900/000000/FFFFFF?text=The+Matrix+Poster', 'https://placehold.co/300x169/000000/FFFFFF?text=The+Matrix+Thumb', 'https://www.youtube.com/watch?v=vKQi3bBA1y8', '2025-07-31 15:25:55', '2025-07-31 15:25:55'),
(13, 'Pulp Fiction', 'Pulp Fiction', 'Kehidupan dua pembunuh bayaran, seorang petinju, seorang gangster dan istrinya, dan sepasang perampok restoran terjalin dalam empat kisah kekerasan dan penebusan.', 1994, 154, 'Crime, Drama', 8.9, 'https://placehold.co/600x900/000000/FFFFFF?text=Pulp+Fiction+Poster', 'https://placehold.co/300x169/000000/FFFFFF?text=Pulp+Fiction+Thumb', 'https://www.youtube.com/watch?v=s7EdQ4FqbhY', '2025-07-31 15:25:55', '2025-07-31 15:25:55'),
(14, 'Whiplash', 'Whiplash', 'Seorang drummer jazz muda mendaftar di konservatori musik elit di mana pendekatannya yang tidak konvensional terhadap seorang instruktur yang kejam mengancam untuk mendorongnya hingga batas kemampuannya.', 2014, 0, 'Drama, Music', 8.5, 'https://placehold.co/600x900/000000/FFFFFF?text=Whiplash+Poster', 'https://placehold.co/300x169/000000/FFFFFF?text=Whiplash+Thumb', 'https://www.youtube.com/watch?v=7d_jQycdQGo', '2025-07-31 15:25:55', '2025-07-31 15:25:55'),
(15, '', 'La La Land', 'Seorang pianis jazz dan seorang aktris bercita-cita tinggi jatuh cinta di Los Angeles.', 2016, 0, 'Comedy, Drama, Music, Romance', 7.9, 'https://placehold.co/600x900/000000/FFFFFF?text=La+La+Land+Poster', 'https://placehold.co/300x169/000000/FFFFFF?text=La+La+Land+Thumb', 'https://www.youtube.com/watch?v=0pdqf4P9GB8', '2025-07-31 15:25:55', '2025-07-31 15:25:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
