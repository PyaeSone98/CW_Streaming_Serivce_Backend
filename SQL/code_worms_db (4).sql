-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2023 at 12:01 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `code_worms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Action & Adventure'),
(2, 'Comedy'),
(3, 'Drama'),
(4, 'Horror'),
(5, 'Romance'),
(6, 'Thriller'),
(7, 'Sci-Fi & Fantasy'),
(8, 'Animation'),
(9, 'Music'),
(10, 'Crime/Mytsery'),
(11, 'Documentary'),
(12, 'Fantasy');

-- --------------------------------------------------------

--
-- Table structure for table `entity`
--

CREATE TABLE `entity` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `is_movie` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `entity`
--

INSERT INTO `entity` (`id`, `title`, `cover`, `category_id`, `date_added`, `is_movie`) VALUES
(1, 'Avatar: The Way Of Water ', 'entities/Avatar_-_The_Way_Of_Water(2022).png', 7, '2023-03-30 09:00:46', 1),
(2, 'Black Panther: Wakanda Forever', 'entities/Black_Panther_-_Wakanda_Forever(2022).png', 7, '2023-03-30 09:08:53', 1),
(3, 'Balck Adam', 'entities/Black_Adam(2022).png', 1, '2023-03-30 09:16:14', 1),
(4, 'Avatar', 'entities/Avatar(2009).png', 7, '2023-03-30 09:20:03', 1),
(5, 'Fall', 'entities/Fall(2022).png', 6, '2023-03-30 09:24:21', 1),
(6, 'Avenger: Infinity War', 'entities/Avenger_-_Infinity_war(2018).png', 1, '2023-03-30 09:26:59', 1),
(7, 'Spider-Man: No Way Home', 'entities/Spider-Man_-_No_Way_Home(2021).png', 1, '2023-03-30 09:29:49', 1),
(8, 'PUSS IN BOOTS: The Last Wish', 'entities/PUSS_IN_BOOTS_-_THE_LAST_WISH(2022).png', 8, '2023-03-30 09:41:12', 1),
(9, 'Puss In Boots', 'entities/Puss_in_Boots(2011).png', 8, '2023-03-30 09:42:14', 1),
(10, 'Sonic the Hedgehog 2', 'entities/Sonic_the_Hedgehog2(2022).png', 2, '2023-03-30 09:45:06', 1),
(11, 'Ready Player One', 'entities/Ready_Player_One(2018).png', 7, '2023-03-30 12:07:43', 1),
(12, 'Glass Onion: A Knives Out Mystery', 'entities/Glass_Onion_-_A_Knives_Out_Mystery(2022).png', 10, '2023-03-30 12:07:43', 1),
(13, 'Knives Out', 'entities/Knives_Out.png', 10, '2023-03-30 12:12:09', 1),
(14, 'Doctor Strange in the Multiverse of Madness\r\n', 'entities/Doctor_Strange_in_the_Multiverse_of_Madness(2022).png', 1, '2023-03-30 12:12:09', 1),
(15, 'Lightyear\r\n', 'entities/Lightyear(2022).png', 8, '2023-03-30 12:13:53', 1),
(16, 'Jumanji: Welcome to the Jungle\r\n', 'entities/JumanJi_-_Welcome_to_the_Jungle(2017).png', 2, '2023-03-30 12:13:53', 1),
(17, 'Ant-Man and the Wasp\r\n', 'entities/Ant_man_and_the_Wasp(2018).png', 1, '2023-03-30 12:18:31', 1),
(18, 'Star Wars: The Last Jedi\r\n', 'entities/Star_Wars_-_The_Last_Jedi(2017).png', 1, '2023-03-30 12:18:31', 1),
(19, 'Soul\r\n', 'entities/Soul(2020).png', 8, '2023-03-30 12:18:31', 1),
(20, 'Doctor Strange\r\n', 'entities/Doctor_Strange(2016).png', 1, '2023-03-30 12:18:31', 1),
(21, 'Avengers: Age of Ultron', 'entities/Avenger_-_Age_of_Ultron(2015).png', 1, '2023-03-30 12:18:31', 1),
(22, 'John Wick: Chapter2\r\n', 'entities/John_Wick_-_Chapter2(2017).png', 10, '2023-03-30 20:37:24', 1),
(23, 'John Wick: Chapter3 - Parabellum\r\n', 'entities/John_Wick_-_Chapter3 _-_Parabellum(2019).png', 10, '2023-03-30 20:37:24', 1),
(24, 'Iron Man 2\r\n', 'entities/IronMan2(2010).png', 1, '2023-03-30 20:37:24', 1),
(25, 'Jumanji: The Next Level\r\n', 'entities/Jumanji_-_The_Next_Level(2019).png', 2, '2023-03-30 20:37:24', 1),
(26, 'Black Widow\r\n', 'entities/Black_Widow(2021).png', 1, '2023-03-30 20:37:24', 1),
(27, 'Fantastic Beasts: The Secrets of Dumbledore\r\n', 'entities/Fantastic_Beasts_-_The_Secrets_of_Dumbledore(2022).png', 12, '2023-03-30 20:40:01', 1),
(28, 'Frozen\r\n', 'entities/Frozen(2013).png', 8, '2023-03-30 20:40:01', 1),
(29, 'Frozen II\r\n', 'entities/Frozen2(2019).png', 8, '2023-03-30 20:40:01', 1),
(30, 'Moana\r\n', 'entities/Moana(2016).png', 8, '2023-03-30 20:40:01', 1),
(31, 'Spider-Man: Homecoming\r\n', 'entities/Spider-Man_-_Homecoming(2017).png', 1, '2023-03-30 20:40:01', 1),
(32, 'Godzila vs. Kong\r\n', 'entities/Godzila_VS_Kong(2021).png', 7, '2023-03-30 20:43:37', 1),
(33, 'The Boss Baby\r\n', 'entities/The_Boss_Baby(2017).png', 8, '2023-03-30 20:43:37', 1),
(34, 'Brave\r\n', 'entities/Brave(2012).png', 8, '2023-03-30 20:43:37', 1),
(35, 'Ralph Breaks the Internet\r\n', 'entities/.png', 8, '2023-03-30 20:43:37', 1),
(36, 'Pokemon: Detective Pikachu', 'entities/Pokemon Detective Pikachu(2019).png', 1, '2023-03-30 20:43:37', 1),
(37, 'Thor: Love and Thunder\r\n', 'entities/Thor_Love_and_Thunder(2022).png', 2, '2023-03-30 20:46:51', 1),
(38, 'Red Notice\r\n', 'entities/Red_Notice(2021).png', 10, '2023-03-30 20:46:51', 1),
(39, 'Inside Out\r\n', 'entities/Inside Out(2015).png', 8, '2023-03-30 20:46:51', 1),
(40, 'Real Steel\r\n', 'entities/Real_ Steel(2011).png', 1, '2023-03-30 20:46:51', 1),
(41, 'Ciao Aberto\r\n', 'entities/Ciao_Aberto(2021).png', 8, '2023-03-30 20:46:51', 1),
(42, 'Purple Hearts\r\n', 'entities/Putple-Hearts(2022).png', 5, '2023-03-30 20:51:56', 1),
(43, 'After We Collided\r\n', 'entities/After_We_Collided(2020).png', 5, '2023-03-30 20:51:56', 1),
(44, 'After We fell\r\n', 'entities/After_we_Fell(2021).png', 5, '2023-03-30 20:51:56', 1),
(45, 'After Ever Happy\r\n', 'entities/After_Ever_Happy(2022).png', 5, '2023-03-30 20:51:56', 1),
(46, 'After\r\n', 'entities/After(2019).png', 5, '2023-03-30 20:51:56', 1),
(47, 'All The Bright Places\r\n', 'entities/All_The_Bright_Places(2020).png', 3, '2023-03-30 20:51:56', 1),
(48, 'Every Day\r\n', 'entities/Every_Day(2018).png', 12, '2023-03-30 20:51:56', 1),
(49, 'One Day\r\n', 'entities/One_Day(2016).png', 3, '2023-03-30 20:51:56', 1),
(50, 'Joker\r\n', 'entities/.png', 6, '2023-03-30 20:51:56', 1),
(51, 'Bullet Train\r\n', 'entities/Bullet_Train(2022).png', 2, '2023-03-30 20:51:56', 1),
(52, 'M3GAN\r\n', 'entities/M3GAN(2022).png', 4, '2023-03-30 20:57:10', 1),
(53, 'Day Shift\r\n', 'entities/Day_Shift(2022).png', 4, '2023-03-30 20:57:10', 1),
(54, 'Beast\r\n', 'entities/Beast(2022).png', 6, '2023-03-30 20:57:10', 1),
(55, 'The Offering \r\n', 'entities/The_Offering(2023).png', 4, '2023-03-30 20:57:10', 1),
(56, 'The New Mutants\r\n', 'entities/The_New_Mutants(2020).png', 1, '2023-03-30 20:57:10', 1),
(57, 'GooseBumps\r\n', 'entities/GooseBumps(2015).png', 4, '2023-03-30 20:57:10', 1),
(58, 'The Batman\r\n', 'entities/The_Batman(2022).png', 10, '2023-03-30 20:57:10', 1),
(59, 'The King\'s Man\r\n', 'entities/The_King\'s_Man(2021).png', 1, '2023-03-30 20:57:10', 1),
(60, 'Rise of the Planet of the Apes\r\n', 'entities/Rise_of_the_Planet_of_the_Apes(2011).png', 6, '2023-03-30 20:57:10', 1),
(61, 'Bird Box\r\n', 'entities/Bird_Box(2018).png', 6, '2023-03-30 20:57:10', 1),
(62, 'Orphan: First Kill\r\n', 'entities/Orphan_-_First_Kill(2022).png', 4, '2023-03-30 21:01:55', 1),
(63, 'The Conjuring\r\n', 'entities/The_Conjuring(2013).png', 4, '2023-03-30 21:01:55', 1),
(64, 'The Nun\r\n', 'entities/The_Num(2018).png', 9, '2023-03-30 21:01:55', 1),
(65, 'Annabelle: Comes Home\r\n', 'entities/Annabelle_Comes_Home(2018).png', 6, '2023-03-30 21:01:55', 1),
(66, 'The Maze Runner\r\n', 'entities/The_Maze_Runner(2014).png', 6, '2023-03-30 21:01:55', 1),
(67, 'COCO\r\n', 'entities/CoCo(2017).png', 8, '2023-03-30 21:01:55', 1),
(68, 'The Croods: The New Age\r\n', 'entities/The_Croods_-_The_New_Age(2020).png', 8, '2023-03-30 21:01:55', 1),
(69, 'Legion of Super-Heros\r\n', 'entities/Legion_of_SuperHeros(2023).png', 8, '2023-03-30 21:01:55', 1),
(70, 'The Menu\r\n', 'entities/The_Menu(2022).png', 6, '2023-03-30 21:01:55', 1),
(71, 'Trolls: World Tour\r\n', 'entities/Trolls_World_Tour(2020).png', 8, '2023-03-30 21:01:55', 1),
(72, 'Trolls\r\n', 'entities/Trolls(2016).png', 9, '2023-03-30 21:09:42', 1),
(73, 'Alvin and the Chipmunks: Chipwrecked\r\n', 'entities/Alvin_and_the_Chipmunks_-_Chipwrecked(2011).png', 9, '2023-03-30 21:09:42', 1),
(74, 'CODA\r\n', 'entities/CODA(2021).png', 9, '2023-03-30 21:09:42', 1),
(75, 'A Star Is Born\r\n', 'entities/A_Star_Is_Born(2018).png', 9, '2023-03-30 21:09:42', 1),
(76, 'Forever My Girl\r\n', 'entities/Forever_My_Girl(2018).png', 3, '2023-03-30 21:09:42', 1),
(77, 'Sniper : The White Raven\r\n', 'entities/Sniper_-_The_White_Raven(2020).png', 3, '2023-03-30 21:09:42', 1),
(78, 'Hacksaw Ridge\r\n', 'entities/Hacksaw_Ridge(2016).png', 3, '2023-03-30 21:09:42', 1),
(79, 'FURY\r\n', 'entities/FURY(2014).png', 3, '2023-03-30 21:09:42', 1),
(80, 'The Boy in the Striped Pajamas\r\n', 'entities/The-Boy_in_the_Striped_Pajamas(2008).png', 3, '2023-03-30 21:09:42', 1),
(81, 'Snowden\r\n', 'entities/Snowden(2016).png', 3, '2023-03-30 21:09:42', 1),
(82, 'The Locksmith\r\n', 'entities/TheLocksmith(2023).png', 3, '2023-03-30 21:09:42', 1),
(83, 'Everything Everywhere All at Once\r\n', 'entities/Everything_Everywhere_All_at_Once(2022).png', 7, '2023-03-30 21:09:42', 1),
(84, 'Selena Gomaz : My Mind & Me\r\n', 'entities/Selena_Gomaz_-_My_Mind&Me(2022).png', 11, '2023-03-30 21:09:42', 1),
(85, 'Green Book\r\n', 'entities/Green_Book(2018).png', 2, '2023-03-30 21:09:42', 1),
(86, 'Megalodon\r\n', 'entities/Megalodon(2018).png', 4, '2023-03-30 21:09:42', 1),
(87, 'Spider-Man: Into the Spider-Verse\r\n', 'entities/Spider_man_Into_the_Spider_Verse(2018).png', 1, '2023-03-30 21:16:14', 1),
(88, 'BUMBLEBEE\r\n', 'entities/Bumblebee.png', 1, '2023-03-30 21:16:14', 1),
(89, 'Captain America: The Winter Soldier\r\n', 'entities/captain_america_winter_solider.png', 1, '2023-03-30 21:16:14', 1),
(90, 'Jurassic World\r\n', 'entities/Jurassic_Worl.png', 7, '2023-03-30 21:16:14', 1),
(91, 'Big Hero 6\r\n', 'entities/big_hero_ 6.png', 7, '2023-03-30 21:16:14', 1),
(92, 'X-Men: Apocalypse\r\n', 'entities/x-men_Apocalypse.png', 1, '2023-03-30 21:16:14', 1),
(93, 'In Time\r\n', 'entities/In_Time.png', 7, '2023-03-30 21:16:14', 1),
(94, 'Transformers\r\n', 'entities/Transformers.png', 7, '2023-03-30 21:16:14', 1),
(95, 'Pacific Rim\r\n', 'entities/Pacific_Rim.png', 7, '2023-03-30 21:16:14', 1),
(96, 'Star Trek: Into Darkness\r\n', 'entities/star_trek_into_darkness.png', 7, '2023-03-30 21:16:14', 1),
(97, 'Suicide Squad\r\n', 'entities/suicide_squad.png', 1, '2023-03-30 21:16:14', 1),
(98, 'Valerian and the City of a Thousand Planets\r\n', 'entities/Valerian.png', 12, '2023-03-30 21:16:14', 1),
(99, 'Glass\r\n', 'entities/Glass.png', 12, '2023-03-30 21:16:14', 1),
(100, 'Kong: Skull Island\r\n', 'entities/kong_skull_island.png', 12, '2023-03-30 21:16:14', 1),
(101, 'The Heavy idol\r\n', 'entities/Tv_Shows/the_heavy_idol.png', 7, '2023-03-30 23:10:52', 0),
(102, 'Our Blooming Youth\r\n', 'entities/Tv_Shows/Our_blooming_youth.png', 3, '2023-03-30 23:14:50', 0),
(103, 'The Glory\r\n', 'entities/Tv_Shows/The_glory.png', 3, '2023-03-30 23:16:25', 0),
(104, 'The Interest of Love (2022)\r\n', 'entities/Tv_Shows/.png', 3, '2023-03-30 23:22:11', 0),
(105, 'The Fabulous\r\n', 'entities/Tv_Shows/The_fabulous.png', 2, '2023-03-30 23:22:11', 0),
(106, 'Work Later, Drink Now\r\n', 'entities/Tv_Shows/Work_later,Drink_now.png', 3, '2023-03-30 23:26:16', 0),
(107, 'Kokdu: Season of Deity (2023)\r\n', 'entities/Tv_Shows/Kokdu_Seaasons_of_Deitypng.png', 3, '2023-03-30 23:26:16', 0),
(108, 'Pandora: Beneath the Paradise \r\n', 'entities/Tv_Shows/Pandora_Beneath_the_paradise.png', 3, '2023-03-30 23:26:16', 0),
(109, 'Brain Work\r\n', 'entities/Tv_Shows/Brain_Work.png', 2, '2023-03-30 23:26:16', 0),
(110, 'Poong, the Joseon Psychiatrist\r\n', 'entities/Tv_Shows/Poong,_the_joseon_psychiatrist(2023).png', 3, '2023-03-30 23:26:16', 0),
(111, 'Curtain Call\r\n', 'entities/Tv_Shows/Curtain_call.png', 3, '2023-03-30 23:29:33', 0),
(112, 'Cheer Up\r\n', 'entities/Tv_Shows/Cheer_up.png', 3, '2023-03-30 23:29:33', 0),
(113, 'Bad Prosecutor\r\n', 'entities/Tv_Shows/Bad_prosecuter.png', 1, '2023-03-30 23:29:33', 0),
(114, 'The Law Café\r\n', 'entities/Tv_Shows/The_law_cafe.png', 3, '2023-03-30 23:29:33', 0),
(115, 'Blind\r\n', 'entities/Tv_Shows/Blind.png', 3, '2023-03-30 23:29:33', 0),
(116, 'The Empire of law\r\n', 'entities/Tv_Shows/The_empire_of_law.png', 3, '2023-03-30 23:29:33', 0),
(117, 'Nikita\r\n', 'entities/Tv_Shows/Nikita.png', 3, '2023-03-31 18:16:56', 0),
(118, 'The Law According to ladia Poet\r\n', 'entities/Tv_Shows/The_Law_According_to_Ladia_poet.png', 10, '2023-03-31 18:16:56', 0),
(119, 'Little Fire Everywhere\r\n', 'entities/Tv_Shows/Little_fire_everywhere.png', 3, '2023-03-31 18:16:56', 0),
(120, 'Home Before Dark\r\n', 'entities/Tv_Shows/home_before_dark.png', 3, '2023-03-31 18:16:56', 0),
(121, 'Anne Rice\'s Mayfair Witches\r\n', 'entities/Tv_Shows/.png', 7, '2023-03-31 18:16:56', 0),
(122, 'The End of Love\r\n', 'entities/Tv_Shows/The_end_of_love.png', 3, '2023-03-31 18:21:53', 0),
(123, 'The Snow Girl\r\n', 'entities/Tv_Shows/The_snow_girl.png', 10, '2023-03-31 18:21:53', 0),
(124, 'Lockwood & Co\r\n', 'entities/Tv_Shows/.png', 7, '2023-03-31 18:21:53', 0),
(125, 'Copenhagen Cowboy\r\n', 'entities/Tv_Shows/Copenhagen_Cowboy.png', 3, '2023-03-31 18:21:53', 0),
(126, 'A Spy Among Friends\r\n', 'entities/Tv_Shows/A spy Among Friends.png', 3, '2023-03-31 18:21:53', 0),
(127, 'Gangs of London\r\n', 'entities/Tv_Shows/.png', 3, '2023-03-31 18:21:53', 0),
(128, 'La Brea\r\n', 'entities/Tv_Shows/La_brea.png', 7, '2023-03-31 18:21:53', 0),
(129, 'Ginny & Georgia\r\n', 'entities/Tv_Shows/Ginny_and_Gerogia.png', 3, '2023-03-31 18:21:53', 0),
(130, 'Women of the moment\r\n', 'entities/Tv_Shows/Women_of_the_moment.png', 3, '2023-03-31 18:21:53', 0),
(131, 'Lucky Hank\r\n', 'entities/Tv_Shows/Lucky_hank.png', 3, '2023-03-31 18:21:53', 0),
(132, 'The Untamed\r\n', 'entities/Tv_Shows/the_untamed.png', 7, '2023-03-31 18:26:51', 0),
(133, 'Nothing But Thirty\r\n', 'entities/Tv_Shows/Nothng_but_thirty.png', 3, '2023-03-31 18:26:51', 0),
(134, 'The Legends\r\n', 'entities/Tv_Shows/The_legends.png', 1, '2023-03-31 18:26:51', 0),
(135, 'Be My Cats\r\n', 'entities/Tv_Shows/Be_my_Cats.png', 7, '2023-03-31 18:26:51', 0),
(136, 'A Tale of Twin Cities\r\n', 'entities/Tv_Shows/A _tale_of_twin_Cities.png', 7, '2023-03-31 18:26:51', 0),
(137, 'The Justice\r\n', 'entities/Tv_Shows/The_justice.png', 3, '2023-03-31 18:26:51', 0),
(138, 'Reset\r\n', 'entities/Tv_Shows/Reset.png', 10, '2023-03-31 18:26:51', 0),
(139, 'Castle and Castle\r\n', 'entities/Tv_Shows/Castle_and_castle.png', 3, '2023-03-31 18:26:51', 0),
(140, 'Naked and afraid : Solo\r\n', 'entities/Tv_Shows/Naked_and_afraid_Solo.png', 11, '2023-03-31 18:26:51', 0),
(141, 'Rise and Fall\r\n', 'entities/Tv_Shows/Rise_and_fall.png', 11, '2023-03-31 18:26:51', 0),
(142, 'Payback : Money and Power\r\n', 'entities/Tv_Shows/Payback_Money_and_power.png', 3, '2023-03-31 18:29:09', 0),
(143, 'Extraordinary You\r\n', 'entities/Tv_Shows/Extraordinary_you.png', 7, '2023-03-31 18:29:09', 0),
(144, 'You & Me\r\n', 'entities/Tv_Shows/You_and_Me.png', 2, '2023-03-31 18:29:09', 0),
(145, 'Cops who kill with will Millor\r\n', 'entities/Tv_Shows/Cops_who_kill_with_will_Millor.png', 11, '2023-03-31 18:29:09', 0),
(146, 'Secret Sauce with Todd Graves\r\n', 'entities/Tv_Shows/Secret_Sauce_with_Todd_Graves.png', 11, '2023-03-31 18:29:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `release_year` year(4) NOT NULL,
  `category_id` int(11) NOT NULL,
  `runtime` int(3) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `season_number` int(11) NOT NULL,
  `episode_number` int(11) NOT NULL,
  `file_path` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `entity_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `episodes`
--

INSERT INTO `episodes` (`id`, `title`, `cover`, `release_year`, `category_id`, `runtime`, `rating`, `description`, `season_number`, `episode_number`, `file_path`, `view`, `entity_ID`) VALUES
(1, 'The Heavy idol\r\n', 'entities/Tv_Shows/the_heavy_idol.png', 2023, 7, NULL, NULL, '\"Pontifex Lembrary fights against a devil, he gets transferred to a \r\ndifferent world possessing the body of Woo Yeon-woo who is a member of an unpopular idol group called Wild Animal. In an entertainment business where overwhelming social skills, trendin', 1, 8, 0, 0, 101),
(2, 'Our Blooming Youth\r\n', 'entities/Tv_Shows/Our_blooming_youth.png', 2023, 3, NULL, NULL, '\"Prince Lee Hwan receives a cursed letter from a supernatural \r\nentity detailing several dark predictions for his future and is horrified to realize that the curses are indeed coming true one by one. Min Jae-yi, on the other hand, finds herself wanted by ', 1, 11, 0, 0, 102),
(3, 'The Glory\r\n', 'entities/Tv_Shows/The_glory.png', 2022, 3, NULL, NULL, '\"After a childhood marked by pain and violence, a woman puts\r\n a carefully planned revenge scheme in motion.\"\r\n', 1, 16, 0, 0, 103),
(4, 'The Interest of Love (2022)\r\n', 'entities/Tv_Shows/.png', 2022, 3, NULL, NULL, '\"Four men and women working at the same bank get entangled in \r\na complicated romance as they discover how far they’re willing to go for love.\"\r\n', 1, 16, 0, 0, 104),
(5, 'The Fabulous\r\n', 'entities/Tv_Shows/The_fabulous.png', 2022, 2, NULL, NULL, '\"Four best friends chase their dreams in the competitive world \r\nof fashion while juggling demanding jobs, romantic dilemmas and wild nights on the town.\"\r\n', 1, 16, 0, 0, 105),
(6, 'Work Later, Drink Now\r\n', 'entities/Tv_Shows/Work_later,Drink_now.png', 2021, 3, NULL, NULL, '\"Three single women in 30s gather and talk about everyday life\r\n from work to love. Nothing is more important to them than enjoying a drink after work.\"\r\n', 2, 24, 0, 0, 106),
(7, 'Kokdu: Season of Deity (2023)\r\n', 'entities/Tv_Shows/Kokdu_Seaasons_of_Deitypng.png', 2023, 3, NULL, NULL, '\"A fantasy medical drama about a high-ranking grim reaper named\r\n Kkok Du, who is the only being to exist in the underworld. Every 99 years, the cold and cruel Kkok Du must take a break from his job in the underworld and spend 49 days in the mortal realm—', 1, 13, 0, 0, 107),
(8, 'Pandora: Beneath the Paradise \r\n', 'entities/Tv_Shows/Pandora_Beneath_the_paradise.png', 2023, 3, NULL, NULL, '\"A woman must take the position of the country\'s first lady to \r\nprotect her beloved family.\"\r\n', 1, 0, 0, 0, 108),
(9, 'Brain Work\r\n', 'entities/Tv_Shows/Brain_Work.png', 2023, 2, NULL, NULL, '\"Two ill-fated men become a comic duo to investigate criminal \r\ncases involving a rare brain disease together.\"\r\n', 1, 16, 0, 0, 109),
(10, 'Poong, the Joseon Psychiatrist\r\n', 'entities/Tv_Shows/Poong,_the_joseon_psychiatrist(2023).png', 2022, 3, NULL, NULL, 'The successful doctor Yoo Sepoong becomes entangled in a conspiracy and is kicked out of the palace. He meets Jihan in Gyesu village and learns to treat those who suffer psychological illness. Finding the cause of their heartbroken feelings and writing a ', 1, 12, 0, 0, 110),
(11, 'Curtain Call\r\n', 'entities/Tv_Shows/Curtain_call.png', 2022, 3, NULL, NULL, '\"A drama about an elderly woman from North Korea who doesn’t\r\n have much time left to live and a theatre actor who acts as her grandson in order to fulfill her final wish.\"\r\n', 1, 16, 0, 0, 111),
(12, 'Cheer Up\r\n', 'entities/Tv_Shows/Cheer_up.png', 2022, 3, NULL, NULL, '\"Revolves around a once-leading university cheering squad. It will \r\nshowcase the story of the use of dance on our youth. Do Hae Yi is the newest member of the university\'s cheerleading squad. She was selected as the top 1% in appearance. Park Jung Woo is', 1, 16, 0, 0, 112),
(13, 'Bad Prosecutor\r\n', 'entities/Tv_Shows/Bad_prosecuter.png', 2022, 1, NULL, NULL, '\"A story about a prosecutor named Jin Jung who is armed with bad \r\nmanners and delinquency. He breaks down the sanctuaries created by wealth and power, and he even takes down the greedy people living in those sanctuaries. He uses expedient methods over co', 1, 12, 0, 0, 113),
(14, 'The Law Café\r\n', 'entities/Tv_Shows/The_law_cafe.png', 2022, 3, NULL, NULL, '\"It’s the romance between a former prosecutor turned landlord \r\nwho opens a coffee shop/law firm hybrid with a former Miss Korea.\"\r\n', 1, 16, 0, 0, 114),
(15, 'Blind\r\n', 'entities/Tv_Shows/Blind.png', 2022, 3, NULL, NULL, '\"A homicide squad detective, suspected of serial murder, \r\nsearches for the real culprit.\"\r\n', 1, 16, 0, 0, 115),
(16, 'The Empire of law\r\n', 'entities/Tv_Shows/The_empire_of_law.png', 2022, 3, NULL, NULL, '\"Depicts the vulgar scandals of Korea’s nobles of the robe (whose\r\n rank came from holding judicial or administrative posts) who dream of hereditary succession. Han Hye Ryul is the chief of the special division of the Seoul Central District Prosecutors’ O', 1, 16, 0, 0, 116),
(17, 'Nikita\r\n', 'entities/Tv_Shows/Nikita.png', 2010, 3, NULL, NULL, '\"Nikita will stop at nothing to expose and destroy Division, the \r\nsecret U.S. agency who trained her as a spy and assassin\"\r\n', 2, 45, 0, 0, 117),
(18, 'The Law According to ladia Poet\r\n', 'entities/Tv_Shows/The_Law_According_to_Ladia_poet.png', 2023, 10, NULL, NULL, '\"In late 19th-century Turin, the young Lidia Poët, fights against\r\n everything and everyone to get what is rightfully hers: to be enrolled in the official register of lawyers. A profession, at the time, reserved exclusively for men. Nevertheless, nothing ', 1, 6, 0, 0, 118),
(19, 'Little Fire Everywhere\r\n', 'entities/Tv_Shows/Little_fire_everywhere.png', 2020, 3, NULL, NULL, '\"The intertwined fates of the picture-perfect Richardson family\r\n and an enigmatic mother and daughter who upend their lives. Explore the weight of secrets, the nature of art and identity, the ferocious pull of motherhood – and the danger in believing tha', 1, 8, 0, 0, 119),
(20, 'Home Before Dark\r\n', 'entities/Tv_Shows/home_before_dark.png', 2020, 3, NULL, NULL, '\"A young girl moves from Brooklyn to the small lakeside town her \r\nfather left behind. While there, her dogged pursuit of the truth leads her to unearth a cold case that everyone in town, including her own father, tried hard to bury.\"\r\n', 2, 20, 0, 0, 120),
(21, 'Anne Rice\'s Mayfair Witches\r\n', 'entities/Tv_Shows/.png', 2023, 7, NULL, NULL, '\"An intuitive young neurosurgeon discovers that she is the\r\nunlikely heir to a family of witches. As she grapples with her newfound powers, she must contend with a sinister presence that has haunted her family for generations.\"\r\n', 1, 8, 0, 0, 121),
(22, 'The End of Love\r\n', 'entities/Tv_Shows/The_end_of_love.png', 2022, 3, NULL, NULL, '\"After a reunion with her past, Tamara - a Jewish ex-orthodox \r\nturned feminist rocker - separates from her boyfriend, rebelling against romantic love and monogamy to embark on a path of exploration in search of her own desire.\"\r\n', 1, 10, 0, 0, 122),
(23, 'The Snow Girl\r\n', 'entities/Tv_Shows/The_snow_girl.png', 2023, 10, NULL, NULL, '\"When a little girl goes missing during a parade in Málaga, a young \r\nnewspaper journalist becomes fiercely determined to help Amaya\'s parents find her.\"\r\n', 1, 6, 0, 0, 123),
(24, 'Lockwood & Co\r\n', 'entities/Tv_Shows/.png', 2023, 7, NULL, NULL, '\"A girl with extraordinary psychic abilities joins two gifted teen \r\nboys at a small ghost-hunting agency to fight the many deadly spirits haunting London.\"\r\n', 1, 8, 0, 0, 124),
(25, 'Copenhagen Cowboy\r\n', 'entities/Tv_Shows/Copenhagen_Cowboy.png', 2023, 3, NULL, NULL, '\"After a lifetime of being sold as a human good luck charm, \r\na woman with mysterious supernatural abilities seeks revenge against those who wronged her.\"\r\n', 1, 6, 0, 0, 125),
(26, 'A Spy Among Friends\r\n', 'entities/Tv_Shows/A spy Among Friends.png', 2022, 3, NULL, NULL, '\"Follow the defection of notorious British intelligence officer \r\nand KGB double agent, Kim Philby, through the lens of his complex relationship with MI6 colleague and close friend, Nicholas Elliott.\"\r\n', 1, 6, 0, 0, 126),
(27, 'Gangs of London\r\n', 'entities/Tv_Shows/.png', 2020, 3, NULL, NULL, '\"When the head of a criminal organisation, Finn Wallace is \r\nassassinated, the sudden power vacuum his death creates threatens the fragile peace between the intricate web of gangs operating on the streets of the city. Now it’s up to the grieving, volatile', 2, 17, 0, 0, 127),
(28, 'La Brea\r\n', 'entities/Tv_Shows/La_brea.png', 2021, 7, NULL, NULL, '\"When a massive sinkhole mysteriously opens in Los Angeles,\r\n it tears a family in half, separating mother and son from father and daughter. When part of the family finds themselves in an unexplainable primeval world, alongside a disparate group of strang', 2, 24, 0, 0, 128),
(29, 'Ginny & Georgia\r\n', 'entities/Tv_Shows/Ginny_and_Gerogia.png', 2021, 3, NULL, NULL, '\"Angsty and awkward fifteen year old Ginny Miller often feels \r\nmore mature than her thirty year old mother, the irresistible and dynamic Georgia Miller. After years on the run, Georgia desperately wants to put down roots in picturesque New England and gi', 2, 20, 0, 0, 129),
(30, 'Women of the moment\r\n', 'entities/Tv_Shows/Women_of_the_moment.png', 2022, 3, NULL, NULL, '\"A limited series focusing on Mamie Till Mobley, who devoted\r\n her life to seeking justice for her son Emmett Till following his brutal murder in the Jim Crow South.\"\r\n', 1, 6, 0, 0, 130),
(31, 'Lucky Hank\r\n', 'entities/Tv_Shows/Lucky_hank.png', 2023, 3, NULL, NULL, '\"A mid-life crisis tale about the unlikely chairman of the English\r\n department in a badly underfunded college in the Pennsylvania rust belt.\"\r\n', 1, 0, 0, 0, 131),
(32, 'The Untamed\r\n', 'entities/Tv_Shows/the_untamed.png', 2019, 7, NULL, NULL, '\"In a land dominated by the mighty Wen clan, a young man \r\nnamed Wei Wu Xian strikes up an unconventional friendship with justice-loving Lan Wang Ji. When the duo unexpectedly stumbles across evidence implicating the Wen clan’s chief in a plot to bring ma', 1, 50, 0, 0, 132),
(33, 'Nothing But Thirty', 'entities/Tv_Shows/Nothng_but_thirty.png', 2020, 3, NULL, NULL, '\"Wang Man Ni is a strong-spirited lady who prides herself for having both beauty and brains and believes that she deserves better than what she has. As she falls \r\nin love with a man, she marries him immediately, yet later finds out that their differences', 1, 43, 0, 0, 133),
(34, 'The Legends', 'entities/Tv_Shows/The_legends.png', 2019, 1, NULL, NULL, '\"While attempting to take her predecessor’s Wanjun Sword, \r\nLu Zhao Yao is ambushed by the ten immortal sects and mistakenly believes Li Chen Lan is related to the incident after he is revealed to be the previous cult leader’s son. Five years later, Li Ch', 1, 55, 0, 0, 134),
(35, 'Be My Cats', 'entities/Tv_Shows/Be_my_Cats.png', 2022, 7, NULL, NULL, '\"Ming Wei is a part-time translator who loves acting. She was\r\n unexpectedly selected to be the female lead of award winning actor Mu Tingzhou’s upcoming drama. There she enacts the love story between a princess and a master in Ming Dynasty with Mu Tingzh', 1, 16, 0, 0, 1356),
(36, 'A Tale of Twin Cities', 'entities/Tv_Shows/A _tale_of_twin_Cities.png', 2022, 7, NULL, NULL, '\"In a world populated by powerful gods and warring mortals, \r\ntwo enchanted beings meet in a peace-filled realm: They are Su Mo, a prince of sea gods, and Bai Ying, a princess and descendant of a mighty sword deity. They are immediately attracted to one a', 1, 43, 0, 0, 136),
(37, 'The Justice\r\n', 'entities/Tv_Shows/The_justice.png', 2021, 3, NULL, NULL, '\"Set in 1930s Shanghai, Cheng Yi Zhi who comes from a\r\n poor family meets Wu Ru Fu, a banker and his daughter Li Zi. Inspired by Wu, Cheng Yi Zhi quits his job as a businessman and enters the finance industry; and becomes bank owner Boss Huang\'s closest c', 1, 41, 0, 0, 137),
(38, 'Reset\r\n', 'entities/Tv_Shows/Reset.png', 2014, 10, NULL, NULL, '\"Prosecutor Cha Woo Jin lost his first love, Kim Seung Hee \r\n15 years ago. He then meets a high school girl, Jo Eun Bi, who looks like his first love. Their meeting unleashed secrets and chain of events between Cha Woo Jin, Seung Hee, Jo Eun Bi, and the c', 1, 10, 0, 0, 138),
(39, 'Castle and Castle', 'entities/Tv_Shows/Castle_and_castle.png', 2018, 3, NULL, NULL, '\"Castle & Castle is a law series that follows the story of \r\na married couple, ‘Remi Castle’ and her husband ‘Tega’ – two lawyers who run a successful practice in Lagos. They met 20 years ago when he taught her in law school.\"\r\n', 2, 19, 0, 0, 139),
(40, 'Naked and afraid : Solo', 'entities/Tv_Shows/Naked_and_afraid_Solo.png', 2023, 11, NULL, NULL, 'It follows eight of the Naked and Afraid franchise\'s most battle-tested survivalists as they attempt to endure 21 days completely alone.\r\n', 1, 0, 0, 0, 140),
(41, 'Rise and Fall\r\n', 'entities/Tv_Shows/Rise_and_fall.png', 2023, 11, NULL, NULL, '\"Greg James will oversee the action as the Grafters work hard \r\nto complete a series of gruelling games and challenges to build a cash prize fund only the Rulers can win. The Rulers must encourage the Grafters to work harder, but if they push them too har', 1, 0, 0, 0, 141),
(42, 'Payback : Money and Power\r\n', 'entities/Tv_Shows/Payback_Money_and_power.png', 2023, 3, NULL, NULL, '\"Follows the revenge story of a group of people — including \r\nEun-yong, a money trader — who refuse to remain silent in the face of unjust authorities and fight against a cartel conspiring with the law.\"\r\n', 1, 12, 0, 0, 142),
(43, 'Extraordinary You\r\n', 'entities/Tv_Shows/Extraordinary_you.png', 2019, 7, NULL, NULL, '\"Eun Dan Oh is a 17-year-old high-school student from\r\n a wealthy family who suffers from a lifelong heart condition that inevitably means she will not live past her teenage years. However, when Dan Oh realizes she is experiencing long gaps in her memory ', 1, 16, 0, 0, 143),
(44, 'You & Me\r\n', 'entities/Tv_Shows/You_and_Me.png', 2023, 2, NULL, NULL, '\"Three people experience tragedies they feel they will never \r\novercome. They attempt to find hope and love again in the future, but worry that the past always hold them back.\"\r\n', 1, 6, 0, 0, 144),
(45, 'Cops who kill with will Millor\r\n', 'entities/Tv_Shows/Cops_who_kill_with_will_Millor.png', 2023, 11, NULL, NULL, '\"In each episode, TV personality and actor Will Mellor is joined \r\nby a panel of experts, including ex-Detective Superintendent Julie McKay, psychologist Serena Simmons and ex-Murder Detective Howard Groves. They will try to unravel how and why a police o', 1, 0, 0, 0, 145),
(46, 'Secret Sauce with Todd Graves\r\n', 'entities/Tv_Shows/Secret_Sauce_with_Todd_Graves.png', 2023, 11, NULL, NULL, '\"Follows fry cook and cashier Todd Graves, as he meets \r\ndifferent people and learns about their paths to success, inspiring viewers to pursue their dreams.\"\r\n', 1, 6, 0, 0, 146);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `billing_plan` tinyint(1) NOT NULL DEFAULT 0,
  `last_billing_date` date DEFAULT NULL,
  `OTP` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `name`, `address`) VALUES
(1, 'Mr. Elliot', 'dunno');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `release_year` year(4) NOT NULL,
  `category_id` int(11) NOT NULL,
  `runtime` int(3) NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `view` int(11) NOT NULL,
  `entity_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `cover`, `release_year`, `category_id`, `runtime`, `rating`, `description`, `file_path`, `view`, `entity_ID`) VALUES
(1, 'Avatar: The Way Of Water', 'entities/Avatar_-_The_Way_Of_Water(2022).png\r\n', 2022, 7, 192, '4.0', 'Set more than a decade after the events of the first film, learn the story of the Sully family(Jake,Neytiri and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.', '', 0, 1),
(2, 'Black Panther: Wakanda Forever', 'entities/Black_Panther_-_Wakanda_Forever(2022).png', 2022, 7, 162, '4.0', 'Queen Ramonda, Shuri, M\'Baku,Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T\'Chella\'s deadth. As the Wakandas strive to embrace their next chapter, the heros must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.', '', 0, 2),
(3, 'Black Adam', 'entities/Black_Adam(2022).png', 2022, 1, 125, '3.5', 'Nearly 5,000 yeas after he was bestowed with the almighty powers of the Egyptian gods and imprisoned just as quicly. Black Adam is freed form his earthly tomb, ready to unleash his unique form of justice on the modern world.', '', 0, 3),
(4, 'Avatar', 'entities/Avatar(2009).png', 2009, 7, 162, '4.0', 'In the 22nd century, a paraplege Marine is dispatched to the moon Pandora on a unique mission, but becomes torn between following orders and protecting an aliean civilization.', '', 0, 4),
(5, 'Fall', 'entities/Fall(2022).png', 2022, 6, 107, '3.5', 'For best friends Becky and Hunter, life is all about conquering fears and pushing limits. But after they climb 2,000 feet to the top of a remote abandoned radio tower, they find themselves stranded with no way down. Now Becky and Hunter\'s expert climbing skills will be put to the ultimate test as they desperately fight to survive the elements, a lack of supplies, and vertigo-inducing heights.', '', 0, 5),
(6, 'Avenger: Infinity War', 'entities/Avenger_-_Infinity_war(2018).png', 2018, 1, 149, '4.0', 'As the Avengers and their allies have continued to protect the world form threats too large for any one hero to handle, anew danger has emerged from the cosmic shadows, Htanos. A despot of intergalatctic infamy, his goal is to collect all sic Infinity Stones, artifacts of the unimaginable power , and use them to infict his twisted will on all of reality. Everything the Advanture have fought for has led up to this moment- the fate of the Earth and existance itself has never been more uncertain.', '', 0, 6),
(7, 'Spider-Man: No Way Home', 'entities/Spider-Man_-_No_Way_Home(2021).png', 2021, 1, 148, '4.0', 'Peter Parker is unmaksed and no longer able to sperate his normal life form the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.', '', 0, 7),
(8, 'PUSS IN BOOTS: The Last Wish', 'entities/PUSS_IN_BOOTS_-_THE_LAST_WISH(2022).png', 2022, 8, 102, '4.0', 'Puss in boots discover that his passion for advanture has taken its troll: He has burnend through eight of his nine lives, leaving him with only one life left. Puss sets out an epic journey to find the mythical Last Wish and restore his nine lives', '', 0, 8),
(9, 'Puss In Boots', 'entities/Puss_in_Boots(2011).png', 2011, 8, 90, '3.0', 'Long before he even met Sherk, the notorious fighter, lover and outlaw Puss in Boots becomes a hero when he set off on an adventure with the tough and street smart Kitty Softpaws and the mastermind Humpty Dumpty to save his town. This is the true story of The Cat, The Myth, The Legend... The Boots. ', '', 0, 9),
(10, 'Sonic the Hedgehog 2', 'entities/Sonic_the_Hedgehog2(2022).png', 2022, 2, 122, '4.0', 'After settling in Green Hills, Sonic is eager to prove he has what it takes to be a true hero. His test comes when Dr. Robotnik returns, this time with a new partner, Knuckles, in search for an emerald that has the power to destroy civilizations. Sonic teams up with his own sidekick, Tails, and together they embark on a globe-trotting journey to find the emerakd before it falls into the wrong hands.\r\n', '', 0, 10),
(11, 'Ready Player One\r\n', 'entities/Ready_Player_One(2018).png', 2018, 7, 140, '4.0', 'When the creator of a popular game system dies, a virtual contest is created to compete for his fortune.\r\n', '', 0, 11),
(12, 'Glass Onion: A Knives Out Mystery\r\n', 'entities/Glass_Onion_-_A_Knives_Out_Mystery(2022).png', 2022, 10, 139, '4.0', 'World-famous detective Benoit Blanc heads to Greece to peel back the layers of a mystery surrounding a tech billionaire and his eclectic crew of friendds.\r\n', '', 0, 12),
(13, 'Knives Out\r\n', 'entities/Knives_Out.png', 2019, 10, 131, '4.0', 'When renowned crime novelist HarlanThrombey is found dead at his estate just after his 85th birthday, the inquisitive and debonair Detective Benoit Blanc is mysteriously enlisted to investigate. From Harlan\'s dysfunctional family to his devoted staff, Blanc sifts through a web if red herrings and self-serving lies to uncover the truth behind Harlan\'s untimely deadth.\r\n', '', 0, 13),
(14, 'Doctor Strange in the Multiverse of Madness\r\n', 'entities/Doctor_Strange_in_the_Multiverse_of_Madness(2022).png', 2022, 1, 126, '3.5', 'Doctor Strange with the help of mystical allies both old and new, travellers the mind-bending and dangerous alternate realaties of the Multiverse to confront a mysterious new adversary.\r\n', '', 0, 14),
(15, 'Lightyear\r\n', 'entities/Lightyear(2022).png', 2022, 8, 105, '3.5', 'Legendary Space Ranger Buzz Lightyear embarks on an intergalactic adventure alongside a group of ambitious recrutis and his robot companion Sox.\r\n', '', 0, 15),
(16, 'Jumanji: Welcome to the Jungle\r\n', 'entities/JumanJi_-_Welcome_to_the_Jungle(2017).png', 2017, 1, 119, '3.5', 'Fout teenagers in detention discover an old video game console with a game they\'ve never heard of. When they decide to play, they are immediately sucked into the jungle world of jumanji in the bodies of their avatars. They\'ll have to complete the adventure of their lives filled with fun, thrills and danger of be stuck in game forever!\r\n', '', 0, 16),
(17, 'Ant-Man and the Wasp\r\n', 'entities/Ant_man_and_the_Wasp(2018).png', 2018, 1, 119, '3.5', 'Just when his time under house arrest is about to end, scott Lang oncec again puts his freedom at risk to help Hope van Dyne and Dr.Hank Pym dive into the quantum realm and try to accomplish, against time and any chance of success, avery dangerous mission.\r\n', '', 0, 17),
(18, 'Star Wars: The Last Jedi\r\n', 'entities/Star_Wars_-_The_Last_Jedi(2017).png', 2017, 1, 152, '3.5', 'Rey develops her newly discovered abilities with the guidance of Luke Skywalker, who is unsettled by the strength of her powers. Meanwhile, the Resistance prepares to do battle with the First Order.\r\n', '', 0, 18),
(19, 'Soul', 'entities/Soul(2020).png', 2020, 8, 101, '4.0', 'Joe Gardner is a middle school teacher with a love for jazz music. After a successful audition at the Half Note Club, he suddenly gets into an accident that seprates his soul from his body and is transported to the You Seminar, a center in which souls develop adn gain passions before being transported to a newborn child. Joe must enlist help from the other souls-in-training, like 22, a soul has spent eons in the You Seminar, in order to get back to Earth.\r\n', '', 0, 19),
(20, 'Doctor Strange\r\n', 'entities/Doctor_Strange(2016).png', 2016, 1, 115, '3.5', 'After his career is destroyed, a brilliant but arrogant surgeon gets a new lease on life when a sorcerer takes him under her wing and trains him to defend the world against evil.\r\n', '', 0, 20),
(21, 'Avengers: Age of Ultron', 'entities/Avenger_-_Age_of_Ultron(2015).png', 2015, 1, 141, '3.5', 'When Tony Stark tries to jumpstart a dormant peacekeeping program, things go away and Earth\'s Mightiest Heros are put to the ultimate test as the fate of the planet hangs in the balance. As the villainous Ultron emerges, it is up to the Avengers to stop him from enacting his terrible plans, and soon uneasy alliance and unexpected action pave the way for an epic and unique global adventure.\r\n', '', 0, 21),
(22, 'John Wick: Chapter2\r\n', 'entities/John_Wick_-_Chapter2(2017).png', 2017, 10, 122, '3.5', 'John Wick is forced out of retirement by a former associate looking to seize cotrol of a shadowy international assassins\' guild. Bond by a blood oath to aid him, Wick travels to Rome and does battle against some of the world\'s most dangerous killers.\r\n', '', 0, 22),
(23, 'John Wick: Chapter3 - Parabellum\r\n', 'entities/John_Wick_-_Chapter3 _-_Parabellum(2019).png', 2019, 10, 130, '3.5', 'Super-assassin John Wick returns with a $14 million price tag on his head and an army of bounty-hunting killers on his trail. After killing a member of the shadowy international assassin\'s guild, the High Table, John Wick is excommunicado, but the world\'s most ruthless hit men adn women await his every turn.\r\n', '', 0, 23),
(24, 'Iron Man 2\r\n', 'entities/IronMan2(2010).png', 2010, 1, 124, '3.5', 'With the world now aware of his dual life as the armored superhero Iron Man, billionaire inventor Tony Stark faces pressure from the government, the press and the public to share his technology with the military. unwilling to let go of his invention, Stark, with Pepper Potts and James \'Rohdey\' Rhodes at his side, must forge new alliance- and confront powerful enemies.\r\n', '', 0, 24),
(25, 'Jumanji: The Next Level\r\n', 'entities/Jumanji_-_The_Next_Level(2019).png', 2019, 2, 123, '3.5', 'As the gang return to Jumanji to rescue one of their own, they discover that nothing is as they expect. The Players will have to brave parts unknown and unexplored in order to escape the world\'s most dangerous game.\r\n', '', 0, 25),
(26, 'Black Widow\r\n', 'entities/Black_Widow(2021).png', 2021, 1, 134, '3.5', 'Natasha Romanoff, also known as Black Widow, confronts the darker parts of her leder when a dangerous conspiracy with tues to her past arises. Pursued by force that will stop at nothing to bring her down, Natasha must deal with her history as a spy ad the broken relationships left in her wake long before she become an Avenger.\r\n', '', 0, 26),
(27, 'Fantastic Beasts: The Secrets of Dumbledore\r\n', 'entities/Fantastic_Beasts_-_The_Secrets_of_Dumbledore(2022).png', 2022, 12, 142, '3.5', 'Professor Albus Dumbledore knows the powerful, dark wizard Gellert Grindelwald is moving to seize control of the wizarding world. unable to stop him alone, he entrusts magizoologist Newt Scamander to lead an interpid team of wizards t=and witches. They soon encoubnter an array of old and new beasts as they clash with Grindlwald\'s growing legion of followers.\r\n', '', 0, 27),
(28, 'Frozen\r\n', 'entities/Frozen(2013).png', 2013, 8, 102, '3.5', 'Young princess Anna of Arendelle dreams about finding true love at her sister Elsa\'s coronation. Fate takes her on a dangerous journey in an attemp to end the eternal winter that has fallen over the kingdom. She\'s accompanied by ice delivery man Kristoff, his reindeer Seven, and snowman Olaf. On an adventure where she will find out what friendship, courage, family, and true love really means.\r\n', '', 0, 28),
(29, 'Frozen II\r\n', 'entities/Frozen2(2019).png', 2019, 8, 103, '3.5', 'Elsa, Anna, Krisoff and Olaf head far into the forest to learn the truth about an ancient mystery of their kingdom.\r\n', '', 0, 29),
(30, 'Moana\r\n', 'entities/Moana(2016).png', 2016, 8, 107, '4.0', 'In Ancient Polynesia, when a terrible curse incurred by Maui reaches an impetuous Chieftain\'s daughter\'s island, she answers the Ocean\'s ca;; to seek out the demigod to set things right.\r\n', '', 0, 30),
(31, 'Spider-Man: Homecoming\r\n', 'entities/Spider-Man_-_Homecoming(2017).png', 2017, 1, 133, '3.5', 'Following the events of Captain America: Civil War, Peter Parker, with the help of his mentor Tony Stark, tries to balance his life as an ordinary high school student in Queens, New York City, with fighting crime as his superhero alter ego Spider-Man as a new threat, the Vulture, emerges.\r\n', '', 0, 31),
(32, 'Godzila vs. Kong\r\n', 'entities/Godzila_VS_Kong(2021).png', 2021, 7, 114, '4.0', 'In a time when monsters walk the Earth, humanity\'s fight for its future sets Godzilla and Kong on a collision course that will see the two most powerful forces of nature on the planet collide in a spectacular battle for the ages.\r\n', '', 0, 32),
(33, 'The Boss Baby\r\n', 'entities/The_Boss_Baby(2017).png', 2017, 8, 97, '3.0', 'A story about how a new baby\'s arrival impacts a family, told from the poing of view of a delightfully unreliable narrator, a wildly imaginative 7 year old named Tim.\r\n', '', 0, 33),
(34, 'Brave\r\n', 'entities/Brave(2012).png', 2012, 8, 93, '3.5', 'Brave is set in the mystical scottish Highlands, where Merida is the princess of a kingdom ruled by King Fergus and Queen Elinor. An unrully daughter and an accomplished archer, Merida seeks out an eccentric old Wise Woman and is granted an ill-fated wish.Also figuring into Merida\'s quest and serving as comic relief are the kingdom;s three loards: the enormous Loard MacGuffin, the surly Loard Macintosh, and the disagreeable Loard Dingwall.\r\n', '', 0, 34),
(35, 'Ralph Breaks the Internet\r\n', 'entities/.png', 2018, 8, 112, '3.5', 'Video game bad guy Ralph and fellow misfit Vanellope von Schweetz must risk it all by travelling to the World Wide Wide Web in searcj pf a replacement parth to save Banellope\'s video game, Sugar Rush. In way over their heads, Ralph and Vanellope rely on the citizens of the internet, the netizens, to help navigate their way, including an entrepreneur named Yesss, who is the head algorithm and the heart and soul of trend-making site BuzzzTube.\r\n', '', 0, 35),
(36, 'Pokemon: Detective Pikachu', 'entities/Pokemon Detective Pikachu(2019).png', 2019, 1, 105, '3.5', 'In a world where people collectt pocket-size monsters (Pokemon) to do battle, a boy comes across an intelligent monster who seeks to be a detective.\r\n', '', 0, 36),
(37, 'Thor: Love and Thunder\r\n', 'entities/Thor_Love_and_Thunder(2022).png', 2022, 2, 119, '3.5', 'After his retirement is interrupted by Goor the God Butcher, a galactic killer who seeks the extinction of the fods, Thor Odinson enlists the help of King Balkyrie, Korg, and ex-girlfriend Jane Foster, who now wields MjoInir as the Mighty Thor. Together they embark upon a harrowing cosmic adventure to uncover the emystery of the God Butcher\'s vengeance and stop him before it\'s too late.\r\n', '', 0, 37),
(38, 'Red Notice\r\n', 'entities/Red_Notice(2021).png', 2022, 10, 118, '3.5', 'An Inter-issued Red Notice is a global alert to hunt and capture tje world\'s most wanted. But when a daring heist brings together the FBI\'s top profiler and two rival criminals, there\'s no telling what will happen.\r\n', '', 0, 38),
(39, 'Inside Out\r\n', 'entities/Inside Out(2015).png', 2015, 8, 95, '4.0', 'Growing up can be a bumpy road, and it\'s no exception for Riley, who is uprooted from her Midwest life when her fater starts a new job in San Francisco. Riley\'s guiding emotion, Joy,Fear,Anger,Disgust and Sadness , live in Headquarters, the control centre omsode Riley\'s mind, where they help advise her through everyday life and tries to keep things positive, but the emotions conflict on how best to navigate a new city, house and school.\r\n', '', 0, 39),
(40, 'Real Steel\r\n', 'entities/Real_ Steel(2011).png', 2011, 1, 127, '3.5', 'Charlie Kenton is washed-up fighter who retired from teh ring when robots took over the sport. After his robot is trashed, he relunctantly teams up with his estranged son to rebuild and train an unlikely contender.\r\n', '', 0, 40),
(41, 'Ciao Aberto\r\n', 'entities/Ciao_Aberto(2021).png', 2021, 8, 112, '3.5', 'With his best friend Luca away at school, Alberto is enjoying his new life in Portorosso working alongside Massimo- the imposing , tattoed, one armed fisherman of few words, who\'s quite possibly the coolest human in the entire world as far as Alberto is concerned. He wants more than anything to impress his mentor, but it\'s said than done.\r\n', '', 0, 41),
(42, 'Purple Hearts\r\n', 'entities/Putple-Hearts(2022).png', 2022, 5, 122, '4.0', 'An aspiring musician agrees to a marriage of convenience with a soon-to-deploy Marine, but a tragedy soon turns their fake relationship all too real.\r\n', '', 0, 42),
(43, 'After We Collided\r\n', 'entities/After_We_Collided(2020).png', 2020, 5, 105, '3.5', 'Tessa finds herself struggling with her complicated relationship Hardin, she faces a dilemma that could change their lives forever.\r\n', '', 0, 43),
(44, 'After We fell\r\n', 'entities/After_we_Fell(2021).png', 2021, 5, 99, '3.5', 'Just as Tessa\'s life begins to become unglued, nothing is what she thought it would be. Not her friends nor her family. The inly person that she should be able to rely on is Hardin, who is furious when he discovers the massive secret that she\'s neem keeping. Before Tessa makes the bigest decision of her life, everything changes because of revelations about her family.\r\n', '', 0, 44),
(45, 'After Ever Happy\r\n', 'entities/After_Ever_Happy(2022).png', 2022, 5, 95, '3.5', 'As a shoking truth about a couple\'s families emerges, the two lovers discover they are not so different from each other. Tessa is no longer the sweet, simple good girl she was when she met Hardim, any more than he is the cruel, moody boy she fell so hard for.\r\n', '', 0, 45),
(46, 'After\r\n', 'entities/After(2019).png', 2019, 5, 106, '3.5', 'Tessa Young is a dedicated student, dutiful daughter and loyal girlfriend to her high school sweetheart. Entering her first semester of college, Tessa\'s gaurded world opens up when she meets Hardin Scott, a mysterious and brooding rebel who makes her questuib all she thought she knew about herself and what she wants out of life.\r\n', '', 0, 46),
(47, 'All The Bright Places\r\n', 'entities/All_The_Bright_Places(2020).png', 2020, 3, 108, '4.0', 'Two teens facing personal struggles form a proweful bond as they embark on a cathartic journey chronicling the wonders of Indina.\r\n', '', 0, 47),
(48, 'Every Day\r\n', 'entities/Every_Day(2018).png', 2018, 12, 97, '3.5', '16-year old Rhiannon falls in love with a mysterious spirit named \"A\" that inhabits a different body every day. Feeling an unmatched connection, Rhiannon and \"A\" work each day to find each other, not knowing what the next day will bring.\r\n', '', 0, 48),
(49, 'One Day\r\n', 'entities/One_Day(2016).png', 2016, 3, 134, '4.0', ' A woman suffers from a rare form of temporary amnesia, lastingn for a day. Her shy colleague, who is secretly in love with her, tells her that they are a couple in order to experience being with her for just one day.\r\n', '', 0, 49),
(50, 'Joker\r\n', 'entities/.png', 2019, 6, 122, '4.0', 'During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in the Gotham City while becoming an infamous psychopathic crime figure.\r\n', '', 0, 50),
(51, 'Bullet Train\r\n', 'entities/Bullet_Train(2022).png', 2022, 2, 127, '4.0', 'Unlucky assassin Ladybug is determined to do his job peacefully after one too many gigs gone off the rails. Fate, however, may have other plans, as Ladybug\'s latest mission puts him on a collision course with leathal adversaries form around the globe- all with connected, yet conflicting, objectives- on the world\'s fastest train.\r\n', '', 0, 51),
(52, 'M3GAN\r\n', 'entities/M3GAN(2022).png', 2022, 4, 102, '3.5', 'A brilliant tou company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emmotionally bond with her newly orphaned niece. But when the doll\'s programming works too well, she becomes overprotective of her new friend with terrifying reults.\r\n', '', 0, 52),
(53, 'Day Shift\r\n', 'entities/Day_Shift(2022).png', 2022, 4, 113, '3.5', 'An LA vampire hunter has a week to come up with the cash to pay for his kid\'s tuition and braces. Trying to make a living these days just might kill him.\r\n', '', 0, 53),
(54, 'Beast\r\n', 'entities/Beast(2022).png', 2022, 6, 113, '3.5', 'A recently widowed man and his two teenage daughters travvel to a gmae reserve in south Africa. However, their journey of healing soon turns into a fight for survival when a bloodthirsty lion starts to stalk them.\r\n', '', 0, 54),
(55, 'The Offering \r\n', 'entities/The_Offering(2023).png', 2023, 4, 93, '3.0', 'In the wake of a young Jewish girl\'s disappearance, the son if a Hasidic funeral director returns home with his pregnant wife in hopes of reconcilling with his father. Little do they know that directly beneath them in the family morgue, an ancient evil with sinister plans fir the unbron child lurks inside a mysterious corpse. \r\n', '', 0, 55),
(56, 'The New Mutants\r\n', 'entities/The_New_Mutants(2020).png', 2020, 1, 94, '3.0', 'Five young mutants, just discovering their abilities while held in a secret facility agianst their will, fight to escape their past sins and save themselves.\r\n', '', 0, 56),
(57, 'GooseBumps\r\n', 'entities/GooseBumps(2015).png', 2015, 4, 103, '3.0', 'After moving to a small town, Zach Cooper finds a silver lining when he meets next door neighbour Hannah, the daughter of bestselling GoosBumps series author R.L Stine. When Zach unintentionally unleash real monster from their manuscripts and they begin to terrorize the town, it\'s suddenly up to Stine, Zach and Hannah to get all of them back in the books where they belong.\r\n', '', 0, 57),
(58, 'The Batman\r\n', 'entities/The_Batman(2022).png', 2022, 10, 177, '4.0', 'In his second year of fighting crime, Batman uncovers corruption in Gotham City that connects to his own family while facing a serial killer known as the Riddler.\r\n', '', 0, 58),
(59, 'The King\'s Man\r\n', 'entities/The_King\'s_Man(2021).png', 2021, 1, 131, '3.5', 'As a collection of history\'s worst tyrants and criminal mansterminds gather to plota war to wipe out millions, one man must race against time to stop them.\r\n', '', 0, 59),
(60, 'Rise of the Planet of the Apes\r\n', 'entities/Rise_of_the_Planet_of_the_Apes(2011).png', 2011, 6, 131, '3.5', 'A highly intelligent chimpanzee name Caeser has been living a peaceful surburban life ever since his was born. But when he gets taken to a cruel primate facility, Ceaser decides to revolt against thoes who have harmed him.\r\n', '', 0, 60),
(61, 'Bird Box\r\n', 'entities/Bird_Box(2018).png', 2018, 6, 124, '3.5', 'Five years after an ominous unseen presence drives most of the society to suicide, a survivor and her tow children make a desperate bid to reach safety.\r\n', '', 0, 61),
(62, 'Orphan: First Kill\r\n', 'entities/Orphan_-_First_Kill(2022).png', 2022, 4, 99, '3.5', 'After escaping from an Estonian psychiatric facility, Leena Klammer travels to America by impersonating Esther, the missing daughter of a wealthy family. but when her mask starts to slip, she is put against a mother who will protect her family from the murderous \"child\" at any cost.\r\n', '', 0, 62),
(63, 'The Conjuring\r\n', 'entities/The_Conjuring(2013).png', 2013, 4, 112, '4.0', 'Paranormal investigators Ed and Lorraine Warren work to help a family terrorized by a dark presence in their farmhouse. Forced to confront a powerful entity, the Warrens find themselves caught in the most terrifying case of their lives.\r\n', '', 0, 63),
(64, 'The Nun\r\n', 'entities/The_Num(2018).png', 2018, 9, 96, '3.0', 'When a young nun at a cloistered abbey in Romania takes her own life, a priest with with a haunted past and a novititate on the threashold of her final vows are sent by the Vatican to invvestigate. Together they uncover the order\'s inholy secret. Risking not only lives but their faith and their very soul, they confront a malevolent force in the form of the same demonic nun that first terrorized audiences in \"The Conjuring 2\" as the abbeyu becomes a horrifuc battleground between the living and the damned.\r\n', '', 0, 64),
(65, 'Annabelle: Comes Home\r\n', 'entities/Annabelle_Comes_Home(2018).png', 2019, 6, 106, '3.0', 'Determined to keep Annabelle from wreaking more hovoc, demonologists Ed and Looraine Warren bring the possessed doll to the locked artifacts room in their home, placing her \"safely\" behind scared glass and enlisting a priest\'s holy blessing. But an unholy night of horror awaits as Annabelle awakens the evil spirits in the room, who all set their sights on a new target- the Warrens\' ten-year-old daughter, Judy, and her friends.\r\n', '', 0, 65),
(66, 'The Maze Runner\r\n', 'entities/The_Maze_Runner(2014).png', 2014, 6, 113, '3.5', 'Set in a post-apocalypic world, young Thomas is depositioned in a community of boys after his memory is erased, soon learning they\'re al trapped in a maze that will require him to join forces with fellow \"runners\" for a shot a escape.\r\n', '', 0, 66),
(67, 'COCO\r\n', 'entities/CoCo(2017).png', 2017, 8, 105, '4.0', 'Despite his family\'s baffling generations-old ban on music, Muguel dreams of becinubg an accomplish musician like his idol, Ernesto de la Cruz. Desperate to prove his talent, Miguel finds himself in the stunning and colorful Land of the Dead following a mysterious chain of events. Along the way he meets charming trickster Hector, and together they set off on an extraordinary journey to unlock the reak story behind Miguel\'s family history.\r\n', '', 0, 67),
(68, 'The Croods: The New Age\r\n', 'entities/The_Croods_-_The_New_Age(2020).png', 2020, 8, 95, '4.0', 'Searching for a safer habitat, the prehistoric Crood family discovers an idyllic, walled-in paradise that meets all of its needs. unfortunately, they must also learn to live with the Bettermans -- a family that\'s a couple of steps above the Croods on teh evolutionary ladder. As tensions between the new neighbors starts to rise, a new threat soon propels both clans on an epic advanture that forces them to embrace their differencecs, draw strength form one another, and survive together.\r\n', '', 0, 68),
(69, 'Legion of Super-Heros\r\n', 'entities/Legion_of_SuperHeros(2023).png', 2023, 8, 84, '3.5', 'Kara, devastated by the Krypton, struggles to adjust to her new life on Earth. Her cousin, Superman, mentors her and suggests she leave thier space-time to attend the Kegion Academy in the 31st century, where she makes new friends and a new enemy: Brainiac 5. Meanwhile, she must content with a mysteryous group called the Dark Circle as it searches for a powerful wepon held in the Academy\'s vault.\r\n', '', 0, 69),
(70, 'The Menu\r\n', 'entities/The_Menu(2022).png', 2022, 107, 4, '0.0', 'A couple travels to a coastal island to eat at an exclusive restaurant where the chef has prepared a lavish menu, with some shoking surprises.\r\n', '', 0, 70),
(71, 'Trolls: World Tour\r\n', 'entities/Trolls_World_Tour(2020).png', 2020, 8, 90, '3.5', 'Queen Poppy and Branch make a surprising discovery - there are other Troll worlds beyound their own, and their distinct differences create big clashes between these various tribes. When a mysterious threat put al of the Trolls to unite them against certain doom.\r\n', '', 0, 71),
(72, 'Trolls\r\n', 'entities/Trolls(2016).png\r\n', 2016, 9, 92, '3.5', 'Lovabke and friendly, the trolls love to play around. but one day, a mysterious giant show up to end the party. Poppy, the optimistic leader of the Trolls, and her polar opposite, Branch, must embark on an adventure that takes them far beyound the only world they\'ve ever known.\r\n', '', 0, 72),
(73, 'Alvin and the Chipmunks: Chipwrecked\r\n', 'entities/Alvin_and_the_Chipmunks_-_Chipwrecked(2011).png', 2011, 9, 87, '3.0', 'Playing around while aboard a cruise ship, the Chipmunks and Chipettes accidentally go overboard and end up marooned in a tropical paradise. They discover their new turf is not as deserted as it seems.\r\n', '', 0, 73),
(74, 'CODA\r\n', 'entities/CODA(2021).png', 2021, 9, 112, '4.0', 'As a CODa(Child of Deaf Adults), Ruby is the only hearing person in her deaf family. When the family\'s fishing business is threatened, Ruby finds herself torn between pursuing her love of music and her fear of abandoning her parents.\r\n', '', 0, 74),
(75, 'A Star Is Born\r\n', 'entities/A_Star_Is_Born(2018).png', 2018, 9, 136, '4.0', 'Seasoned musician Jackson Maine discovers - and falls in love with - struggling artist Ally. She has just about given up on her dream to make it big as a singer - until Jack coaxes her into the spotlight. but even as Ally\'s career takes off, the personal side of their relationship is breakign down, as Jack fight an ongoing battle with his own internal demons.\r\n', '', 0, 75),
(76, 'Forever My Girl\r\n', 'entities/Forever_My_Girl(2018).png', 2018, 3, 104, '4.0', 'After being gone for a decade, a country star returns home to the love he left behind.\r\n', '', 0, 76),
(77, 'Sniper : The White Raven\r\n', 'entities/Sniper_-_The_White_Raven(2020).png', 2022, 3, 120, '3.5', 'Mykola is an eccentric pacifist who wants to be useful to humanity. When the war begins at Donbass, Mykola\'s naive world is collapsing as the militants kill his pregnant wife and burn his home to the ground. Recovere, he makes a cardiianl dision and gets enlisted in a sniper company. Having met his wife\'s killers, he emotionally breaks down and arranges \"sniper terror\" for the enemy. He\'s saved from a senseless death by his instructor who himself hets mortally wounded. The deadth of a friend leaves a \"scar\" and Mykola is ready to sacrifice his life.\r\n', '', 0, 77),
(78, 'Hacksaw Ridge\r\n', 'entities/Hacksaw_Ridge(2016).png', 2016, 3, 139, '4.0', 'WWII American Army Medic Desmond T.Doss, who served during the Battle of Okinawa, refuses to kill people and become the first Conscientious Objector in American history to recieve the Congressional Medal of Hornor.\r\n', '', 0, 78),
(79, 'FURY\r\n', 'entities/FURY(2014).png', 2014, 3, 135, '4.0', 'In the last months of World War II, as the Allies make their final push in the European theatre, a battle-hardened U.S Army sergeant named \'Wardaddy\' commands a Sherman tank called \'Fury\' and its five-man crew on a deadly mission behind ememy lines. Ournumbered and outgunned, Wardaddt and his men face overwhelming odds in their heroic attempts to strikes at the heart of Nazi Germany.\r\n', '', 0, 79),
(80, 'The Boy in the Striped Pajamas\r\n', 'entities/The-Boy_in_the_Striped_Pajamas(2008).png', 2008, 3, 94, '3.5', 'When his family moves form their home in Berlin to a strange new house in Poland, young bruno befriend Shmuel, aboy who lives on tht other side of the fence where everyone seems to be wearing striped pajamas. Unaware of Shmuek\'s fate as a Jewish prisoner or the role his own Nazi father plays in his imprisonments, Bruno embarks on a dangerous journey inside the camp\'s walls.\r\n', '', 0, 80),
(81, 'Snowden\r\n', 'entities/Snowden(2016).png', 2016, 3, 134, '3.5', 'CIA employee Edward Snowden leaks thousands of classified documents to the press.\r\n', '', 0, 81),
(82, 'The Locksmith\r\n', 'entities/TheLocksmith(2023).png', 2023, 3, 91, '3.5', 'A thied fresh out of prison, tries to work his way back into the life of his daughter an ex-fiance. Determined, he is forced to use the skills he has as a gifted locksmith. Things take a tumultuous turn after an unexpected disapperance.\r\n', '', 0, 82),
(83, 'Everything Everywhere All at Once\r\n', 'entities/Everything_Everywhere_All_at_Once(2022).png', 2022, 7, 140, '4.0', 'An aging Chinese immigrants is swept up in an insane adventure, where she alone cna save what\'s important to her by connecting with the lives she could have led in other universes.\r\n', '', 0, 83),
(84, 'Selena Gomaz : My Mind & Me\r\n', 'entities/Selena_Gomaz_-_My_Mind&Me(2022).png', 2022, 11, 95, '5.0', 'After years in the limelight, Selena Gomaz achieves unimaginable stardom. But just as she reaches a new peak, an unexpected tuen pulls her into darkness. This uniquely raw and intimate documentary spans her six-year journey into a new light.\r\n', '', 0, 84),
(85, 'Green Book\r\n', 'entities/Green_Book(2018).png', 2018, 2, 130, '4.0', 'Tony Lip, a bouncer in 1962, is hired to drive pianist Don Shirley on a tour through the Deep South in the days when Africans, forced to find alternate accommodations and services due to segregation laws below the Mason-Dixon Line, relied on a guide called The Negro Motorist Green book.\r\n', '', 0, 85),
(86, 'Megalodon\r\n', 'entities/Megalodon(2018).png', 2018, 4, 90, '3.0', 'A millitary vessel on the search for an unidentified submersible finds themselves face to face with a giant shark, force to use only what they have on board to defend themselves from the monstrous beast.\r\n', '', 0, 86),
(87, 'Spider-Man: Into the Spider-Verse\r\n', 'entities/Spider_man_Into_the_Spider_Verse(2018).png', 2018, 1, 117, '4.0', 'Miles Morales is juggling his life between being a high school student and being a spider-man. When wilson \"Kingping\" Fisk uses a super collider, other from across the Spider-Verse are transported to this dimension.\r\n', '', 0, 87),
(88, 'BUMBLEBEE\r\n', 'entities/Bumblebee.png', 2018, 1, 114, '3.5', 'On the run in the year1987, Bumblebee finds refuge in a junkyard in a small Californian beach town. Charlie, on the cusp of turning 18 and tryin to find her placec in the world, discovers Bumblebee, battle-scarred and broken.\r\n', '', 0, 88),
(89, 'Captain America: The Winter Soldier\r\n', 'entities/captain_america_winter_solider.png', 2014, 1, 136, '4.0', 'Steve Rogers struggles to embrace his role in the mordern world and battles a new threat from old history: the Soviet agent known as the Winter Soldier.\r\n', '', 0, 89),
(90, 'Jurassic World\r\n', 'entities/Jurassic_Worl.png', 2015, 7, 124, '3.5', '', '', 0, 90),
(91, 'Big Hero 6\r\n', 'entities/big_hero_ 6.png', 2014, 7, 102, '4.0', 'The special bond  the develops between plus-sized inflatble robot baymax, and prodigy Hiro Hamada, who team up with a group of friend to form a band of high-tech heros.\r\n', '', 0, 91),
(92, 'X-Men: Apocalypse\r\n', 'entities/x-men_Apocalypse.png', 2016, 1, 144, '3.5', 'Since the dawn of civilization, he was worshipped as a god. Apocalypse, the first and most powerful mutant from Marvel\'s X-Men universe, ammassed the powers of many other mutants, becoming immortal and invicible. Upon awakening after thousands of years, he is disillusioned with the world as he finds it and recruitsa team of powerful mutants, including a disheartened Magneto, to cleanse mankind and create a new world order, over which he will regin. As the fate of the Earth hangs in the balance, Revan with the help of Professor X must lead a team of young X-Men to stop their greatest nemesis and savev mankind from complete destruction.\r\n', '', 0, 92),
(93, 'In Time\r\n', 'entities/In_Time.png', 2011, 7, 109, '3.5', 'In a future where people stop again at 25, but are engineered to live only one more year, having the means to buy your way out of the situation is a shot at immortal youth. Here, Will Salas finds himself accused of murder and on the run with a hostage - a connection that becomes an important part of the way against the system.\r\n', '', 0, 93),
(94, 'Transformers\r\n', 'entities/Transformers.png', 2007, 7, 109, '3.5', 'An ancient struggle between two Cybertronian races, the heroic Autobots and the evil Decepticons, come to Earth, with a clue to the ultimate power held by a teenager.\r\n', '', 0, 94),
(95, 'Pacific Rim\r\n', 'entities/Pacific_Rim.png', 2013, 7, 131, '3.5', 'As a war between humankind and monstrous sea creatures wages on, a former pilot and a trainee are paried up to drive a seemingly obsolete special weapon in a desperate effort to save the world from the apocalypse.\r\n', '', 0, 95),
(96, 'Star Trek: Into Darkness\r\n', 'entities/star_trek_into_darkness.png', 2013, 7, 132, '4.0', 'After the crew of the Enterprise find an unstoppable force of terror form within their own organization, Caotain Kirk leads a manhunt to a war-zone world to capture a one-man weapon of mass destruction.\r\n', '', 0, 96),
(97, 'Suicide Squad\r\n', 'entities/suicide_squad.png', 2016, 1, 123, '3.0', 'Fearing that the world is vulnerable to otherworldly threats, the Government enlists the disposable Task Force X on a high-risk mission in exchange for absolution: Meanwwhile, the Joker operates his own agenda.\r\n', '', 0, 97),
(98, 'Valerian and the City of a Thousand Planets\r\n', 'entities/Valerian.png', 2017, 12, 136, '3.5', 'A darl force Threatens Alpha, a vast metropolis and home to species from a thousand planets. Spectial operatives Valerian and Laureline must race to identify the marauding menace and safegurd not just Alpha, but the future of the universe.\r\n', '', 0, 98),
(99, 'Glass\r\n', 'entities/Glass.png', 2019, 12, 140, '3.5', 'Security guard David Dunn uses his supernatural abilities to track Kevin Wendell Crumb, a disturbed man who has twenty-four personalities.\r\n', '', 0, 99),
(100, 'Kong: Skull Island\r\n', 'entities/kong_skull_island.png', 2017, 12, 118, '3.5', 'Kong: Skull Island will explore the mysterious and dangerous home of the \r\n', '', 0, 100);

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

CREATE TABLE `watchlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `entity_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entity`
--
ALTER TABLE `entity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `entity_ID` (`entity_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `entity_ID` (`entity_ID`);

--
-- Indexes for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_entity_unique` (`user_id`,`entity_ID`),
  ADD KEY `watchlist_ibfk_1` (`entity_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `entity`
--
ALTER TABLE `entity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `entity`
--
ALTER TABLE `entity`
  ADD CONSTRAINT `entity_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
