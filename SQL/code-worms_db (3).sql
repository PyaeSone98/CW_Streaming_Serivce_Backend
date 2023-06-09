-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2023 at 06:58 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `code-worms_db`
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
(1, 'Action'),
(2, 'Adventure'),
(3, 'Action & Adventure'),
(4, 'Comedy'),
(5, 'Drama'),
(6, 'Horror'),
(7, 'Romance'),
(8, 'Thirller'),
(9, 'Sci-Fi & Fantasay'),
(10, 'Anime'),
(13, 'Animation'),
(14, 'Documentary\r\n');

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
  `is_movie` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `entity`
--

INSERT INTO `entity` (`id`, `title`, `cover`, `category_id`, `date_added`, `is_movie`) VALUES
(1, 'Avatar: The Way of the Water', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Avatar_-_The_Way_Of_Water(2022).PNG', 9, '2023-03-14 22:23:03', 1),
(2, 'A Star is Born', 'http://localhost/CW_Streaming_Serivce_Backend/entities/A_Star_is_Born(2018).PNG', 7, '2023-03-14 22:23:03', 1),
(3, 'After', 'http://localhost/CW_Streaming_Serivce_Backend/entities/After(2019).PNG', 7, '2023-03-14 22:23:03', 1),
(4, 'After Ever Happy', 'http://localhost/CW_Streaming_Serivce_Backend/entities/After_Ever_Happy(2022).PNG', 7, '2023-03-14 22:23:03', 1),
(5, 'After We Collide', 'http://localhost/CW_Streaming_Serivce_Backend/entities/After_We_Collided(2020).PNG', 7, '2023-03-14 22:23:03', 1),
(6, 'After We fell', 'http://localhost/CW_Streaming_Serivce_Backend/entities/After_we_Fell(2021).PNG', 7, '2023-03-14 22:23:03', 1),
(7, 'Annabelle Comes Home', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Annabelle_Comes_Home(2018).PNG', 6, '2023-03-14 22:23:03', 1),
(8, 'Alvin and the Chipmunks - Chipwrecked', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Alvin_and_the_Chipmunks_-_Chipwrecked(2011).PNG', 4, '2023-03-14 22:23:03', 1),
(9, 'Ant-Man and the Wasp', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Ant_man_and_the_Wasp(2018).PNG', 9, '2023-03-14 22:23:03', 1),
(10, 'Avatar', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Avater(2009).PNG', 9, '2023-03-14 22:23:03', 1),
(11, 'Avenger-Age of Ultron', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Avenger_-_Age_of_Ultron(2015).PNG', 9, '2023-03-14 22:23:03', 1),
(12, 'Avenger-Infinity War', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Avenger_-_Infinity_war(2018).PNG', 9, '2023-03-14 22:23:03', 1),
(13, 'Bird Box', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Bird_Box(2018).PNG', 6, '2023-03-14 22:23:03', 1),
(14, 'The Conjuring', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_Conjuring(2013).PNG', 6, '2023-03-14 22:23:03', 1),
(15, 'The Num', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_Num(2018).PNG', 6, '2023-03-14 22:23:03', 1),
(16, 'The Offering', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_Offering(2022).PNG', 6, '2023-03-14 22:23:03', 1),
(17, 'MEGAN', 'http://localhost/CW_Streaming_Serivce_Backend/entities/M3GAN(2022).PNG', 6, '2023-03-14 22:23:03', 1),
(18, 'Orphan-First Kill', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Orphan_-_First_Kill(2022).PNG', 6, '2023-03-14 22:23:03', 1),
(19, 'Brave', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Brave(2012).PNG', 13, '2023-03-14 22:24:03', 1),
(20, 'CoCo', 'http://localhost/CW_Streaming_Serivce_Backend/entities/CoCo(2017).PNG', 13, '2023-03-14 22:24:03', 1),
(21, 'Ralph Breaks the Internet', 'http://localhost/CW_Streaming_Serivce_Backend/entities/CaptureRalph Breaks the Internet(2018).PNG', 13, '2023-03-14 22:24:03', 1),
(22, 'Frozen', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Frozen(2013).PNG', 13, '2023-03-14 22:24:03', 1),
(23, 'Frozen2', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Frozen2(2019).PNG', 13, '2023-03-14 22:24:03', 1),
(24, 'Glass Onion-A Knives Out Mystery', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Glass_Onion_-_A_Knives_Out_Mystery(2022).PNG', 8, '2023-03-14 22:24:03', 1),
(25, 'Knives Out', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Knives_Out.PNG', 8, '2023-03-14 22:24:03', 1),
(26, 'The Menu', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_Menu(2022).PNG', 8, '2023-03-14 22:23:03', 1),
(27, 'BEAST', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Beast(2022).PNG', 8, '2023-03-14 22:23:03', 1),
(28, 'GooseBumps', 'http://localhost/CW_Streaming_Serivce_Backend/entities/GooseBumps(2015).PNG', 8, '2023-03-14 22:23:03', 1),
(29, 'Jumanji- Welcome to the Jungle', 'http://localhost/CW_Streaming_Serivce_Backend/entities/JumanJi_-_Welcome_to_the_Jungle(2017).PNG', 3, '2023-03-14 22:23:03', 1),
(30, 'Green Book', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Green_Book(2018).PNG', 5, '2023-03-14 22:23:03', 1),
(31, 'The Boy in the Striped Pajamas', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The-Boy_in_the_Striped_Pajamas(2008).PNG', 5, '2023-03-14 22:23:03', 1),
(32, 'The New Mutant', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_New_Mutants(2020).PNG', 5, '2023-03-14 22:23:03', 1),
(33, 'Hacksaw Ridge', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Hacksaw_Ridge(2016).PNG', 5, '0000-00-00 00:00:00', 1),
(34, 'IP Man', 'http://localhost/CW_Streaming_Serivce_Backend/entities/IP_Man((2008).PNG', 5, '2023-03-14 22:23:03', 1),
(35, 'Inside Out', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Inside_Out(2015).PNG\r\n', 4, '2023-03-14 22:23:03', 1),
(36, 'The Boss Baby', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_Boss_Baby(2017).PNG', 4, '2023-03-14 22:23:03', 1),
(37, 'The Croods-The New Age', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_Croods_-_The_New_Age(2020).PNG', 4, '2023-03-14 22:23:03', 1),
(38, 'Red Notice', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Red_Notice(2021).PNG', 4, '2023-03-14 22:23:03', 1),
(39, 'Everthing Everywhere All at Once', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Everything_Everywhere_All_at_Once(2022).PNG', 4, '2023-03-14 22:23:03', 1),
(40, 'Bullet Train', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Bullet_Train(2022).PNG', 3, '2023-03-14 22:23:03', 1),
(41, 'The Maze Runner', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_Maze_Runner(2014).PNG', 3, '2023-03-14 22:23:03', 1),
(42, 'The King\'s Man', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_King\'s_Man(2021).PNG', 3, '2023-03-14 22:23:03', 1),
(43, 'Ready Player One', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Ready_Player_One(2018).PNG', 3, '2023-03-14 22:23:03', 1),
(45, 'Zootopia', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Zootopia.PNG', 13, '2023-03-23 17:41:16', 0),
(46, 'Tom & Jerry', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Tom&Jerry.PNG', 4, '2023-03-23 17:41:16', 0),
(47, 'Scooby-Doo', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Scooby-Doo.png', 13, '2023-03-23 17:42:29', 0),
(48, 'The King\'s Woman', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_King\'s_Woman.PNG', 5, '2023-03-23 17:43:42', 0),
(49, 'Legend of Awakening', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Legend_of_Awakening.PNG', 7, '2023-03-23 17:46:10', 0),
(50, 'Moon Birghtens for you', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Moon_Brightens_for_You.png', 5, '2023-03-23 17:46:10', 0),
(51, 'Listening Snow Tower', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Listening_Snow_Tower.PNG', 3, '2023-03-23 17:49:09', 0),
(52, 'Good Bye My Princess', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Goodbye_My_Princess.png', 5, '2023-03-23 17:50:29', 0),
(53, 'Record of Youth', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Record_of_Youth.png', 7, '2023-03-23 17:53:05', 0),
(54, 'Pinocchio', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Pinocchio.PNG', 4, '2023-03-23 17:53:05', 0),
(55, 'Crash Landing on you', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Crash_landing_on_you.png', 7, '2023-03-23 17:54:17', 0),
(56, 'Goblin', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Goblin.png', 9, '2023-03-23 17:54:42', 0),
(57, 'Legend of the Blue Sea', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Legend_of_the_blue_sea.png', 1, '2023-03-23 17:56:10', 0),
(58, 'Reply 1988', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Reply_1889.png', 4, '2023-03-23 17:57:32', 0),
(59, 'ITAEWON Class', 'http://localhost/CW_Streaming_Serivce_Backend/entities/ITAEWON_Class.png', 3, '2023-03-23 17:57:32', 0),
(60, 'A Korean Odyssey', 'http://localhost/CW_Streaming_Serivce_Backend/entities/A_Korean_Odyssey.png', 2, '2023-03-23 17:58:08', 0),
(61, 'Joe Millionare:for richer or poorer', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Joe_Millionaire_for_richer_or_poorer.png', 14, '2023-03-23 17:59:35', 0),
(62, 'EMILY in PARIS', 'http://localhost/CW_Streaming_Serivce_Backend/entities/EMILY_in_Paris.png', 7, '2023-03-23 17:59:35', 0),
(63, 'Alice in Borderland', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Alice_in_Borderland.png', 8, '2023-03-23 18:00:57', 0),
(64, 'The Midnight Club', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_Midnight_Club.png', 6, '2023-03-23 18:00:57', 0),
(65, 'Victorious', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Victorious.png', 4, '2023-03-23 18:02:13', 0),
(66, 'MarcoPolo', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Marco_Polo.png', 3, '2023-03-23 18:02:13', 0),
(67, 'Wednesday', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Wednesday.png', 4, '2023-03-23 18:02:47', 0),
(68, 'Walking_Dead', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Walking_dead.png', 3, '2023-03-23 18:03:49', 0),
(69, 'The last of us', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_last_of_us.png', 5, '2023-03-23 18:03:49', 0),
(70, 'Light on me', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Light_on_me.png', 5, '2023-03-23 18:04:25', 0),
(84, 'Real Steel', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Real_ Steel(2011).PNG', 1, '2023-03-28 07:39:27', 1),
(85, 'Red Notice', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Red_Notice(2021).PNG', 3, '2023-03-28 07:39:27', 1),
(86, 'Rise of the Planet of the Apes', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Rise_of_the_Planet_of_the_Apes(2011).PNG', 3, '2023-03-28 07:39:27', 1),
(87, 'Selena Gomaz My Mind & Me', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Selena_Gomaz_-_My_Mind&Me(2022).PNG', 14, '2023-03-28 07:39:27', 1),
(88, 'Sniper The White Raven', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Sniper_-_The_White_Raven(2020).PNG', 5, '2023-03-28 07:39:27', 1),
(89, 'Snowden', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Snowden(2016).PNG', 5, '2023-03-28 07:39:27', 1),
(90, 'Sonic the Hedgehog 2', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Sonic_the_Hedgehog2(2022).PNG', 2, '2023-03-28 07:39:27', 1),
(91, 'Soul', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Soul(2020).PNG', 13, '2023-03-28 07:39:27', 1),
(92, 'Spider man Into the Spider Verse', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Spider_man_Into_the_Spider_Verse(2018).PNG', 13, '2023-03-28 07:39:27', 1),
(93, 'Spider-Man-No way Home', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Spider-Man_-_No_Way_Home(2021).PNG', 9, '2023-03-28 07:39:27', 1),
(94, 'Spider-Man-Home Coming', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Spider-Man_-_Homecoming(2017).PNG', 9, '2023-03-28 07:39:27', 1),
(110, 'Star Wars-The Last Jedi', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Star_Wars_-_The_Last_Jedi(2017).PNG', 9, '2023-03-28 07:44:26', 1),
(111, 'The Batman', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_Batman(2022).PNG', 5, '2023-03-28 07:44:26', 1),
(112, 'The Boss Baby', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_Boss_Baby(2017).PNG', 4, '2023-03-28 07:44:26', 1),
(113, 'The_Conjuring', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_Conjuring(2013).PNG', 6, '2023-03-28 07:44:26', 1),
(114, 'The Croods-The New Age', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_Croods_-_The_New_Age(2020).PNG', 13, '2023-03-28 07:44:26', 1),
(115, 'The King\'s Man', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_King\'s_Man(2021).PNG', 1, '2023-03-28 07:44:26', 1),
(116, 'The Maze Runner', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_Maze_Runner(2014).PNG', 8, '2023-03-28 07:44:26', 1),
(117, 'The New Mutant', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_New_Mutant(2020).PNG', 9, '2023-03-28 07:51:33', 1),
(118, 'The  Num', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_Num(2018).PNG', 6, '2023-03-28 07:51:33', 1),
(119, 'The Offering', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_Offering(2023).PNG', 6, '2023-03-28 07:51:33', 1),
(120, 'The Locksmith', 'http://localhost/CW_Streaming_Serivce_Backend/entities/TheLocksmith(2023).PNG', 1, '2023-03-28 07:51:33', 1),
(121, 'Thor Love and Thunder', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Thor_Love_and_Thunder(2022).PNG', 9, '2023-03-28 07:51:33', 1),
(122, 'Trolls', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Trolls(2016).PNG', 13, '2023-03-28 07:51:33', 1),
(123, 'Trolls World Tour', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Trolls_World_Tour(2020).PNG', 13, '2023-03-28 07:51:33', 1),
(124, 'The Heavy Idol', 'http://localhost/CW_Streaming_Serivce_Backend/entities/the_heavy_idol.png', 9, '2023-03-28 07:51:33', 0),
(125, 'Our Blooming Youth', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Our_blooming_youth.png', 5, '2023-03-28 07:51:33', 0),
(126, 'The Glory', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_glory.png', 5, '2023-03-28 07:51:33', 0),
(147, 'The Interest of Love', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_Interest_of_love.png', 7, '2023-03-28 08:04:14', 0),
(148, 'The Fabulous', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_fabulous.png', 5, '2023-03-28 08:04:14', 0),
(149, 'Work later,Drink Now', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Work_later,Drink_now.png', 4, '2023-03-28 08:04:14', 0),
(150, 'Kokdu: Season of Deity', 'entitie/entities/Kokdu_Seaasons_of_Deitypng.png', 9, '2023-03-28 08:04:14', 0),
(151, 'La brea', 'http://localhost/CW_Streaming_Serivce_Backend/entities/La_brea.png', 9, '2023-03-28 08:04:14', 0),
(152, 'Pandora: Beneath the Paradise', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Pandora_Beneath_the_paradise.png', 5, '2023-03-28 08:04:14', 0),
(153, 'Brain Work', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Brain_Work.png', 1, '2023-03-28 08:04:14', 0),
(154, 'Poong,the Joseon Psychiatrist S2', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Poong,_the_joseon_psychiatrist(2023).png', 7, '2023-03-28 08:04:14', 0),
(155, 'Curtain call', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Curtain_call.png', 7, '2023-03-28 08:04:14', 0),
(156, 'Cheer Up', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Cheer_up.png', 7, '2023-03-28 08:04:14', 0),
(157, 'Bad Prosecutor', 'http://localhost/CW_Streaming_Serivce_Backend/entities/', 1, '2023-03-28 08:13:07', 0),
(158, 'The Law Caf`e', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_law_cafe.png', 7, '2023-03-28 08:13:07', 0),
(159, 'Blind', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Blind.png', 8, '2023-03-28 08:57:11', 0),
(160, 'The Empire of law', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_empire_of_law.png', 5, '2023-03-28 08:57:11', 0),
(161, 'Nikita', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Nikita.png', 1, '2023-03-28 08:57:11', 0),
(162, ' The Law According to ladia Poet', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_Law_According_to_Ladia_poet.png', 14, '2023-03-28 08:57:11', 0),
(163, 'Little Fire Everywhere', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Little_fire_everywhere.png', 8, '2023-03-28 08:57:11', 0),
(164, 'Home Before Dark', 'http://localhost/CW_Streaming_Serivce_Backend/entities/home_before_dark.png', 5, '2023-03-28 08:57:11', 0),
(165, 'The End of love', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_end_of_love.png', 5, '2023-03-28 08:57:11', 0),
(166, 'The Snow Girl', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_snow_girl.png', 8, '2023-03-28 08:57:11', 0),
(167, 'Copenhagen Cowboy', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Copenhagen_Cowboy.png', 4, '2023-03-28 08:57:11', 0),
(168, 'Spy Among Friends', 'http://localhost/CW_Streaming_Serivce_Backend/entities/A spy Among Friends.png', 14, '2023-03-28 08:57:11', 0),
(169, 'La Brea', 'http://localhost/CW_Streaming_Serivce_Backend/entities/La_brea.png', 2, '2023-03-28 09:03:45', 0),
(170, 'Ginny & Georgia', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Ginny_and_Gerogia.png', 14, '2023-03-28 09:03:45', 0),
(171, 'Women of the moment', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Women_of_the_moment.png', 14, '2023-03-28 09:03:45', 0),
(172, 'Lucky Hank', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Lucky_hank.png', 4, '2023-03-28 09:03:45', 0),
(173, 'The Untamed', 'http://localhost/CW_Streaming_Serivce_Backend/entities/the_untamed.png', 7, '2023-03-28 09:03:45', 0),
(174, 'Nothing But Thirty', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Nothng_but_thirty.png', 5, '2023-03-28 09:03:45', 0),
(175, 'The Legends', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_legends.png', 7, '2023-03-28 09:03:45', 0),
(176, 'Be My Princess', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Be_my_Cats.png', 7, '2023-03-28 09:03:45', 0),
(177, 'the Justice', 'http://localhost/CW_Streaming_Serivce_Backend/entities/The_justice.png', 8, '2023-03-28 09:03:45', 0),
(178, 'Reset', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Reset.png', 6, '2023-03-28 09:03:45', 0),
(179, 'Castle and Castle', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Castle_and_castle.png', 4, '2023-03-28 09:10:49', 0),
(180, 'Naked and afaid:Solo', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Naked_and_afraid_Solo.png', 4, '2023-03-28 09:10:49', 0),
(181, 'Rise and Fall', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Rise_and_fall.png', 14, '2023-03-28 09:10:49', 0),
(182, 'Payback: Money and Power', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Payback_Money_and_power.png', 5, '2023-03-28 09:10:49', 0),
(183, 'Extraordinary You', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Extraordinary_you.png', 9, '2023-03-28 09:10:49', 0),
(184, 'You & Me', 'http://localhost/CW_Streaming_Serivce_Backend/entities/You_and_Me.png', 5, '2023-03-28 09:10:49', 0),
(185, 'Secret Sauce with Todd Graves', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Secret_Sauce_with_Todd_Graves.png', 4, '2023-03-28 09:10:49', 0),
(186, 'Super Mario Bros', 'http://localhost/CW_Streaming_Serivce_Backend/entities/https://m.media-amazon.com/images/M/MV5BNGZhYWIyZWUtOTdjZS00ZTc1LWFlZDMtNzU5MTE0OTcyMjg1XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg', 13, '2023-03-28 09:12:23', 1);

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
  `runtime` int(3) NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `description` varchar(255) NOT NULL,
  `season_number` int(11) NOT NULL,
  `episode_number` int(11) NOT NULL,
  `file_path` int(11) DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `entity_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `episodes`
--

INSERT INTO `episodes` (`id`, `title`, `cover`, `release_year`, `category_id`, `runtime`, `rating`, `description`, `season_number`, `episode_number`, `file_path`, `view`, `entity_ID`) VALUES
(1, 'Zootopia', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Zootopia.PNG', 2022, 4, 30, '4.5', 'Head back to the fast-paced mammal metropolis of Zootopia in this short-form series that dives deeper into the lives of some of the film’s most intriguing characters, including Fru Fru, the newly married arctic shrew; Gazelle’s talented tiger dancers; and', 1, 6, 0, 0, 45),
(2, 'Tom & Jerry', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Tom&Jerry.PNG', 1940, 4, 7, '5.0', 'The iconic cat and mouse rivals are back in The Tom and Jerry Show, a fresh take on the classic series. Preserving the look, characters and sensibility of the original, the all-new series shines a brightly colored, high-definition lens on the madcap slaps', 2, 130, 0, 0, 46),
(3, 'Pinocchio', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Pinocchio.PNG', 2014, 4, 60, '4.0', '	Amidst a sea of young news reporters competing for the next scoop, Choi In Ha finds herself in a tricky position, as she cannot tell a lie without a dead giveaway: breaking into a violent hiccup. Meanwhile, first-year reporter Choi Dal Po proves his rema', 1, 16, 0, 0, 54);

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
  `OTP` int(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `billing_plan`, `last_billing_date`, `OTP`) VALUES
(30, 'code', 'worm', 'codeworms23@gmail.com', 'codeworm', '$2y$10$bNIfO6DglSjAdN5sNyaPgeaJLrwnJg12MELtD7BxJRDiYamqhg25O', 1, '2023-03-30', 1604),
(31, 'pyae', 'sone', 'pyaesonethein98@gmail.com', 'pyaesone', '$2y$10$ZQfRC11wayQoTetJT/pxUO4GwGyGKGLJtV2SNzKUHllYFny5XM4JO', 1, NULL, 0);

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
(1, 'Brave', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Brave(2012).PNG', 2012, 13, 93, '3.5', 'Brave is set in the mystical scottish Highlands, where Merida is the princess of a kingdom ruled by King Fergus and Queen Elinor. An unrully daughter and an accomplished archer, Merida seeks out an eccentric old Wise Woman and is granted an ill-fated wish.Also figuring into Merida\'s quest and serving as comic relief are the kingdom\'s three loards: the enormous Loard MacGuffin, the surly Loard Macintosh, and the disagreeable Loard Dingwall.', 'https://vimeo.com/811006990', 0, 19),
(4, 'Avatar:The Way of the Water', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Avatar_-_The_Way_Of_Water(2022).PNG', 2022, 9, 192, '4.0', 'Set more than a decade after the events of the first film, learn the story of the Sully family(Jake,Neytiri and their kids), the trouble that follows them, the lenghts they go to keep each otehr safe, the battles they fight to stay alive, and the tragedies they endure.', '', 0, 1),
(5, 'A Star is Born', 'http://localhost/CW_Streaming_Serivce_Backend/entities/A_Star_is_Born(2018).PNG', 2018, 7, 136, '4.0', 'Seasoned musician Jackson Maine discovers - and falls in love with - struggling artist Ally. She has just about given up on her dream to make it big as a singer - until Jack coaxes her into the spotlight. but even as Ally\'s career takes off, the personal side of their relationship is breakign down, as Jack fight an ongoing battle with his own internal demons.', '', 0, 2),
(6, 'Beast', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Beast(2022).PNG', 1993, 8, 93, '3.5', 'A recently widowed man and his two teenage daughters travvel to a gmae reserve in south Africa. However, their journey of healing soon turns into a fight for survival when a bloodthirsty lion starts to stalk them.', '', 0, 27),
(7, 'Bullet Train', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Bullet_Train(2022).PNG', 2022, 3, 127, '4.0', 'Unlucky assassin Ladybug is determined to do his job peacefully after one too many gigs gone off the rails. Fate, however, may have other plans, as Ladybug\'s latest mission puts him on a collision course with leathal adversaries form around the globe- all with connected, yet conflicting, objectives- on the world\'s fastest train.', '', 0, 40),
(8, 'Coco', 'http://localhost/CW_Streaming_Serivce_Backend/entities/CoCo(2017).PNG', 2017, 13, 105, '4.0', 'Despite his family\'s baffling generations-old ban on music, Muguel dreams of becinubg an accomplish musician like his idol, Ernesto de la Cruz. Desperate to prove his talent, Miguel finds himself in the stunning and colorful Land of the Dead following a mysterious chain of events. Along the way he meets charming trickster Hector, and together they set off on an extraordinary journey to unlock the reak story behind Miguel\'s family history.', '', 0, 20),
(9, 'Everything Everywhere All at Once', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Everything_Everywhere_All_at_Once(2022).PNG', 2022, 4, 140, '3.5', 'An aging Chinese immigrants is swept up in an insane adventure, where she alone cna save what\'s important to her by connecting with the lives she could have led in other universes.', '', 0, 39),
(10, 'Frozen', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Frozen(2013).PNG', 2013, 13, 102, '3.5', 'Young princess Anna of Arendelle dreams about finding true love at her sister Elsa\'s coronation. Fate takes her on a dangerous journey in an attemp to end the eternal winter that has fallen over the kingdom. She\'s accompanied by ice delivery man Kristoff, his reindeer Seven, and snowman Olaf. On an adventure where she will find out what friendship, courage, family, and true love really means.', '', 0, 22),
(11, 'Glass Onion', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Glass_Onion_-_A_Knives_Out_Mystery(2022).PNG', 2022, 8, 139, '4.0', 'World-famous detective Benoit Blanc heads to Greece to peel back the layers of a mystery surrounding a tech billionaire and his eclectic crew of friendds.', '', 0, 24),
(12, 'Inside Out', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Inside_Out(2015).PNG\r\n', 2015, 4, 95, '4.0', 'Growing up can be a bumpy road, and it\'s no exception for Riley, who is uprooted from her Midwest life when her fater starts a new job in San Francisco. Riley\'s guiding emotion, Joy,Fear,Anger,Disgust and Sadness , live in Headquarters, the control centre omsode Riley\'s mind, where they help advise her through everyday life and tries to keep things positive, but the emotions conflict on how best to navigate a new city, house and school.', '', 0, 35),
(13, 'Jumanji- Welcome to the Jungle', 'http://localhost/CW_Streaming_Serivce_Backend/entities/JumanJi_-_Welcome_to_the_Jungle(2017).PNG', 2017, 3, 119, '3.5', 'Four teenagers in detention discover an old video game console with a game they\'ve never heard of. When they decide to play, they are immediately sucked into the jungle world of jumanji in the bodies of their avatars. They\'ll have to complete the adventure of their lives filled with fun, thrills and danger of be stuck in game forever!', '', 0, 29),
(14, 'MEGAN', 'http://localhost/CW_Streaming_Serivce_Backend/entities/M3GAN(2022).PNG', 2022, 6, 102, '3.5', 'A brilliant tou company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emmotionally bond with her newly orphaned niece. But when the doll\'s programming works too well, she becomes overprotective of her new friend with terrifying reults.', '', 0, 17),
(15, 'Orphan-First Kill', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Orphan_-_First_Kill(2022).PNG', 2022, 6, 99, '3.5', 'After escaping from an Estonian psychiatric facility, Leena Klammer travels to America by impersonating Esther, the missing daughter of a wealthy family. but when her mask starts to slip, she is put against a mother who will protect her family from the murderous \"child\" at any cost', '', 0, 18),
(16, 'Ralph Breaks the Internet', 'http://localhost/CW_Streaming_Serivce_Backend/entities/CaptureRalph Breaks the Internet(2018).PNG', 2018, 13, 112, '3.5', 'Video game bad guy Ralph and fellow misfit Vanellope von Schweetz must risk it all by travelling to the World Wide Wide Web in searcj pf a replacement parth to save Banellope\'s video game, Sugar Rush. In way over their heads, Ralph and Vanellope rely on the citizens of the internet, the netizens, to help navigate their way, including an entrepreneur named Yesss, who is the head algorithm and the heart and soul of trend-making site BuzzzTube.', '', 0, 21),
(17, 'Selena Gomaz My Mind & Me', 'http://localhost/CW_Streaming_Serivce_Backend/entities/Selena_Gomaz_-_My_Mind&Me(2022).PNG', 2022, 14, 95, '5.0', 'After years in the limelight, Selena Gomaz achieves unimaginable stardom. But just as she reaches a new peak, an unexpected tuen pulls her into darkness. This uniquely raw and intimate documentary spans her six-year journey into a new light.', '', 0, 87),
(18, 'Super Mario Bros', 'http://localhost/CW_Streaming_Serivce_Backend/entities/https://m.media-amazon.com/images/M/MV5BNGZhYWIyZWUtOTdjZS00ZTc1LWFlZDMtNzU5MTE0OTcyMjg1XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg', 2023, 13, 83, '4.5', 'With help from Princess Peach, Mario gets ready to square off against the all-powerful Bowser to stop his plans from conquering the world.', '', 0, 186);

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
-- Dumping data for table `watchlist`
--

INSERT INTO `watchlist` (`id`, `user_id`, `entity_ID`) VALUES
(1, 1, 4),
(6, 1, 30),
(2, 1, 40),
(3, 1, 60),
(5, 2, 27),
(4, 2, 63),
(8, 3, NULL),
(18, 3, 1),
(9, 3, 25),
(20, 4, 1);

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
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_ibfk_1` (`category_id`),
  ADD KEY `videos_ibfk_2` (`entity_ID`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `entity`
--
ALTER TABLE `entity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `entity`
--
ALTER TABLE `entity`
  ADD CONSTRAINT `entity_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `episodes_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `episodes_ibfk_2` FOREIGN KEY (`entity_ID`) REFERENCES `entity` (`id`);

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `videos_ibfk_2` FOREIGN KEY (`entity_ID`) REFERENCES `entity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD CONSTRAINT `watchlist_ibfk_1` FOREIGN KEY (`entity_ID`) REFERENCES `entity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
