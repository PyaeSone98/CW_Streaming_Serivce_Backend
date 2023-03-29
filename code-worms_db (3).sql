-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2023 at 09:01 AM
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
(1, 'Avatar: The Way of the Water', 'entities/Avatar_-_The_Way_Of_Water(2022).PNG', 9, '2023-03-14 22:23:03', 1),
(2, 'A Star is Born', 'entities/A_Star_is_Born(2018).PNG', 7, '2023-03-14 22:23:03', 1),
(3, 'After', 'entities/After(2019).PNG', 7, '2023-03-14 22:23:03', 1),
(4, 'After Ever Happy', 'entities/After_Ever_Happy(2022).PNG', 7, '2023-03-14 22:23:03', 1),
(5, 'After We Collide', 'entities/After_We_Collided(2020).PNG', 7, '2023-03-14 22:23:03', 1),
(6, 'After We fell', 'entities/After_we_Fell(2021).PNG', 7, '2023-03-14 22:23:03', 1),
(7, 'Annabelle Comes Home', 'entities/Annabelle_Comes_Home(2018).PNG', 6, '2023-03-14 22:23:03', 1),
(8, 'Alvin and the Chipmunks - Chipwrecked', 'entities/Alvin_and_the_Chipmunks_-_Chipwrecked(2011).PNG', 4, '2023-03-14 22:23:03', 1),
(9, 'Ant-Man and the Wasp', 'entities/Ant_man_and_the_Wasp(2018).PNG', 9, '2023-03-14 22:23:03', 1),
(10, 'Avatar', 'entities/Avater(2009).PNG', 9, '2023-03-14 22:23:03', 1),
(11, 'Avenger-Age of Ultron', 'entities/Avenger_-_Age_of_Ultron(2015).PNG', 9, '2023-03-14 22:23:03', 1),
(12, 'Avenger-Infinity War', 'entities/Avenger_-_Infinity_war(2018).PNG', 9, '2023-03-14 22:23:03', 1),
(13, 'Bird Box', 'entities/Bird_Box(2018).PNG', 6, '2023-03-14 22:23:03', 1),
(14, 'The Conjuring', 'entities/The_Conjuring(2013).PNG', 6, '2023-03-14 22:23:03', 1),
(15, 'The Num', 'entities/The_Num(2018).PNG', 6, '2023-03-14 22:23:03', 1),
(16, 'The Offering', 'entities/The_Offering(2022).PNG', 6, '2023-03-14 22:23:03', 1),
(17, 'MEGAN', 'entities/M3GAN(2022).PNG', 6, '2023-03-14 22:23:03', 1),
(18, 'Orphan-First Kill', 'entities/Orphan_-_First_Kill(2022).PNG', 6, '2023-03-14 22:23:03', 1),
(19, 'Brave', 'entities/Brave(2012).PNG', 13, '2023-03-14 22:24:03', 1),
(20, 'CoCo', 'entities/CoCo(2017).PNG', 13, '2023-03-14 22:24:03', 1),
(21, 'Ralph Breaks the Internet', 'entities/CaptureRalph Breaks the Internet(2018).PNG', 13, '2023-03-14 22:24:03', 1),
(22, 'Frozen', 'entities/Frozen(2013).PNG', 13, '2023-03-14 22:24:03', 1),
(23, 'Frozen2', 'entities/Frozen2(2019).PNG', 13, '2023-03-14 22:24:03', 1),
(24, 'Glass Onion-A Knives Out Mystery', 'entities/Glass_Onion_-_A_Knives_Out_Mystery(2022).PNG', 8, '2023-03-14 22:24:03', 1),
(25, 'Knives Out', 'entities/Knives_Out.PNG', 8, '2023-03-14 22:24:03', 1),
(26, 'The Menu', 'entities/The_Menu(2022).PNG', 8, '2023-03-14 22:23:03', 1),
(27, 'BEAST', 'entities/Beast(2022).PNG', 8, '2023-03-14 22:23:03', 1),
(28, 'GooseBumps', 'entities/GooseBumps(2015).PNG', 8, '2023-03-14 22:23:03', 1),
(29, 'Jumanji- Welcome to the Jungle', 'entities/JumanJi_-_Welcome_to_the_Jungle(2017).PNG', 3, '2023-03-14 22:23:03', 1),
(30, 'Green Book', 'entities/Green_Book(2018).PNG', 5, '2023-03-14 22:23:03', 1),
(31, 'The Boy in the Striped Pajamas', 'entities/The-Boy_in_the_Striped_Pajamas(2008).PNG', 5, '2023-03-14 22:23:03', 1),
(32, 'The New Mutant', 'entities/The_New_Mutants(2020).PNG', 5, '2023-03-14 22:23:03', 1),
(33, 'Hacksaw Ridge', 'entities/Hacksaw_Ridge(2016).PNG', 5, '0000-00-00 00:00:00', 1),
(34, 'IP Man', 'entities/IP_Man((2008).PNG', 5, '2023-03-14 22:23:03', 1),
(35, 'Inside Out', 'entities/Inside_Out(2015).PNG\r\n', 4, '2023-03-14 22:23:03', 1),
(36, 'The Boss Baby', 'entities/The_Boss_Baby(2017).PNG', 4, '2023-03-14 22:23:03', 1),
(37, 'The Croods-The New Age', 'entities/The_Croods_-_The_New_Age(2020).PNG', 4, '2023-03-14 22:23:03', 1),
(38, 'Red Notice', 'entities/Red_Notice(2021).PNG', 4, '2023-03-14 22:23:03', 1),
(39, 'Everthing Everywhere All at Once', 'entities/Everything_Everywhere_All_at_Once(2022).PNG', 4, '2023-03-14 22:23:03', 1),
(40, 'Bullet Train', 'entities/Bullet_Train(2022).PNG', 3, '2023-03-14 22:23:03', 1),
(41, 'The Maze Runner', 'entities/The_Maze_Runner(2014).PNG', 3, '2023-03-14 22:23:03', 1),
(42, 'The King\'s Man', 'entities/The_King\'s_Man(2021).PNG', 3, '2023-03-14 22:23:03', 1),
(43, 'Ready Player One', 'entities/Ready_Player_One(2018).PNG', 3, '2023-03-14 22:23:03', 1),
(45, 'Zootopia', 'entities/Zootopia.PNG', 13, '2023-03-23 17:41:16', 0),
(46, 'Tom & Jerry', 'entities/Tom&Jerry.PNG', 4, '2023-03-23 17:41:16', 0),
(47, 'Scooby-Doo', 'entities/Scooby-Doo.png', 13, '2023-03-23 17:42:29', 0),
(48, 'The King\'s Woman', 'entities/The_King\'s_Woman.PNG', 5, '2023-03-23 17:43:42', 0),
(49, 'Legend of Awakening', 'entities/Legend_of_Awakening.PNG', 7, '2023-03-23 17:46:10', 0),
(50, 'Moon Birghtens for you', 'entities/Moon_Brightens_for_You.png', 5, '2023-03-23 17:46:10', 0),
(51, 'Listening Snow Tower', 'entites/Listening_Snow_Tower.PNG', 3, '2023-03-23 17:49:09', 0),
(52, 'Good Bye My Princess', 'entities/Goodbye_My_Princess.png', 5, '2023-03-23 17:50:29', 0),
(53, 'Record of Youth', 'entities/Record_of_Youth.png', 7, '2023-03-23 17:53:05', 0),
(54, 'Pinocchio', 'entities/Pinocchio.PNG', 4, '2023-03-23 17:53:05', 0),
(55, 'Crash Landing on you', 'entities/Crash_landing_on_you.png', 7, '2023-03-23 17:54:17', 0),
(56, 'Goblin', 'entities/Goblin.png', 9, '2023-03-23 17:54:42', 0),
(57, 'Legend of the Blue Sea', 'entities/Legend_of_the_blue_sea.png', 1, '2023-03-23 17:56:10', 0),
(58, 'Reply 1988', 'entities/Reply_1889.png', 4, '2023-03-23 17:57:32', 0),
(59, 'ITAEWON Class', 'entities/ITAEWON_Class.png', 3, '2023-03-23 17:57:32', 0),
(60, 'A Korean Odyssey', 'entities/A_Korean_Odyssey.png', 2, '2023-03-23 17:58:08', 0),
(61, 'Joe Millionare:for richer or poorer', 'entities/Joe_Millionaire_for_richer_or_poorer.png', 14, '2023-03-23 17:59:35', 0),
(62, 'EMILY in PARIS', 'entities/EMILY_in_Paris.png', 7, '2023-03-23 17:59:35', 0),
(63, 'Alice in Borderland', 'entities/Alice_in_Borderland.png', 8, '2023-03-23 18:00:57', 0),
(64, 'The Midnight Club', 'entities/The_Midnight_Club.png', 6, '2023-03-23 18:00:57', 0),
(65, 'Victorious', 'entities/Victorious.png', 4, '2023-03-23 18:02:13', 0),
(66, 'MarcoPolo', 'entities/Marco_Polo.png', 3, '2023-03-23 18:02:13', 0),
(67, 'Wednesday', 'entities/Wednesday.png', 4, '2023-03-23 18:02:47', 0),
(68, 'Walking_Dead', 'entities/Walking_dead.png', 3, '2023-03-23 18:03:49', 0),
(69, 'The last of us', 'entities/The_last_of_us.png', 5, '2023-03-23 18:03:49', 0),
(70, 'Light on me', 'entities/Light_on_me.png', 5, '2023-03-23 18:04:25', 0),
(84, 'Real Steel', 'entities/Real_ Steel(2011).PNG', 1, '2023-03-28 07:39:27', 1),
(85, 'Red Notice', 'entities/Red_Notice(2021).PNG', 3, '2023-03-28 07:39:27', 1),
(86, 'Rise of the Planet of the Apes', 'entities/Rise_of_the_Planet_of_the_Apes(2011).PNG', 3, '2023-03-28 07:39:27', 1),
(87, 'Selena Gomaz My Mind & Me', 'entities/Selena_Gomaz_-_My_Mind&Me(2022).PNG', 14, '2023-03-28 07:39:27', 1),
(88, 'Sniper The White Raven', 'entities/Sniper_-_The_White_Raven(2020).PNG', 5, '2023-03-28 07:39:27', 1),
(89, 'Snowden', 'entities/Snowden(2016).PNG', 5, '2023-03-28 07:39:27', 1),
(90, 'Sonic the Hedgehog 2', 'entities/Sonic_the_Hedgehog2(2022).PNG', 2, '2023-03-28 07:39:27', 1),
(91, 'Soul', 'entities/Soul(2020).PNG', 13, '2023-03-28 07:39:27', 1),
(92, 'Spider man Into the Spider Verse', 'entities/Spider_man_Into_the_Spider_Verse(2018).PNG', 13, '2023-03-28 07:39:27', 1),
(93, 'Spider-Man-No way Home', 'entities/Spider-Man_-_No_Way_Home(2021).PNG', 9, '2023-03-28 07:39:27', 1),
(94, 'Spider-Man-Home Coming', 'entities/Spider-Man_-_Homecoming(2017).PNG', 9, '2023-03-28 07:39:27', 1),
(110, 'Star Wars-The Last Jedi', 'entities/Star_Wars_-_The_Last_Jedi(2017).PNG', 9, '2023-03-28 07:44:26', 1),
(111, 'The Batman', 'entities/The_Batman(2022).PNG', 5, '2023-03-28 07:44:26', 1),
(112, 'The Boss Baby', 'entities/The_Boss_Baby(2017).PNG', 4, '2023-03-28 07:44:26', 1),
(113, 'The_Conjuring', 'entities/The_Conjuring(2013).PNG', 6, '2023-03-28 07:44:26', 1),
(114, 'The Croods-The New Age', 'entities/The_Croods_-_The_New_Age(2020).PNG', 13, '2023-03-28 07:44:26', 1),
(115, 'The King\'s Man', 'entities/The_King\'s_Man(2021).PNG', 1, '2023-03-28 07:44:26', 1),
(116, 'The Maze Runner', 'entities/The_Maze_Runner(2014).PNG', 8, '2023-03-28 07:44:26', 1),
(117, 'The New Mutant', 'entities/The_New_Mutant(2020).PNG', 9, '2023-03-28 07:51:33', 1),
(118, 'The  Num', 'entities/The_Num(2018).PNG', 6, '2023-03-28 07:51:33', 1),
(119, 'The Offering', 'entities/The_Offering(2023).PNG', 6, '2023-03-28 07:51:33', 1),
(120, 'The Locksmith', 'entities/TheLocksmith(2023).PNG', 1, '2023-03-28 07:51:33', 1),
(121, 'Thor Love and Thunder', 'entities/Thor_Love_and_Thunder(2022).PNG', 9, '2023-03-28 07:51:33', 1),
(122, 'Trolls', 'entities/Trolls(2016).PNG', 13, '2023-03-28 07:51:33', 1),
(123, 'Trolls World Tour', 'entities/Trolls_World_Tour(2020).PNG', 13, '2023-03-28 07:51:33', 1),
(124, 'The Heavy Idol', 'entities/the_heavy_idol.png', 9, '2023-03-28 07:51:33', 0),
(125, 'Our Blooming Youth', 'entities/Our_blooming_youth.png', 5, '2023-03-28 07:51:33', 0),
(126, 'The Glory', 'entities/The_glory.png', 5, '2023-03-28 07:51:33', 0),
(147, 'The Interest of Love', 'entities/The_Interest_of_love.png', 7, '2023-03-28 08:04:14', 0),
(148, 'The Fabulous', 'entities/The_fabulous.png', 5, '2023-03-28 08:04:14', 0),
(149, 'Work later,Drink Now', 'entities/Work_later,Drink_now.png', 4, '2023-03-28 08:04:14', 0),
(150, 'Kokdu: Season of Deity', 'entitie/Kokdu_Seaasons_of_Deitypng.png', 9, '2023-03-28 08:04:14', 0),
(151, 'La brea', 'entities/La_brea.png', 9, '2023-03-28 08:04:14', 0),
(152, 'Pandora: Beneath the Paradise', 'entities/Pandora_Beneath_the_paradise.png', 5, '2023-03-28 08:04:14', 0),
(153, 'Brain Work', 'entities/Brain_Work.png', 1, '2023-03-28 08:04:14', 0),
(154, 'Poong,the Joseon Psychiatrist S2', 'entities/Poong,_the_joseon_psychiatrist(2023).png', 7, '2023-03-28 08:04:14', 0),
(155, 'Curtain call', 'entities/Curtain_call.png', 7, '2023-03-28 08:04:14', 0),
(156, 'Cheer Up', 'entities/Cheer_up.png', 7, '2023-03-28 08:04:14', 0),
(157, 'Bad Prosecutor', 'entities/', 1, '2023-03-28 08:13:07', 0),
(158, 'The Law Caf`e', 'entities/The_law_cafe.png', 7, '2023-03-28 08:13:07', 0),
(159, 'Blind', 'entities/Blind.png', 8, '2023-03-28 08:57:11', 0),
(160, 'The Empire of law', 'entities/The_empire_of_law.png', 5, '2023-03-28 08:57:11', 0),
(161, 'Nikita', 'entities/Nikita.png', 1, '2023-03-28 08:57:11', 0),
(162, ' The Law According to ladia Poet', 'entities/The_Law_According_to_Ladia_poet.png', 14, '2023-03-28 08:57:11', 0),
(163, 'Little Fire Everywhere', 'entities/Little_fire_everywhere.png', 8, '2023-03-28 08:57:11', 0),
(164, 'Home Before Dark', 'entities/home_before_dark.png', 5, '2023-03-28 08:57:11', 0),
(165, 'The End of love', 'entities/The_end_of_love.png', 5, '2023-03-28 08:57:11', 0),
(166, 'The Snow Girl', 'entities/The_snow_girl.png', 8, '2023-03-28 08:57:11', 0),
(167, 'Copenhagen Cowboy', 'entities/Copenhagen_Cowboy.png', 4, '2023-03-28 08:57:11', 0),
(168, 'Spy Among Friends', 'entities/A spy Among Friends.png', 14, '2023-03-28 08:57:11', 0),
(169, 'La Brea', 'entities/La_brea.png', 2, '2023-03-28 09:03:45', 0),
(170, 'Ginny & Georgia', 'entities/Ginny_and_Gerogia.png', 14, '2023-03-28 09:03:45', 0),
(171, 'Women of the moment', 'entities/Women_of_the_moment.png', 14, '2023-03-28 09:03:45', 0),
(172, 'Lucky Hank', 'entities/Lucky_hank.png', 4, '2023-03-28 09:03:45', 0),
(173, 'The Untamed', 'entities/the_untamed.png', 7, '2023-03-28 09:03:45', 0),
(174, 'Nothing But Thirty', 'entities/Nothng_but_thirty.png', 5, '2023-03-28 09:03:45', 0),
(175, 'The Legends', 'entities/The_legends.png', 7, '2023-03-28 09:03:45', 0),
(176, 'Be My Princess', 'entities/Be_my_Cats.png', 7, '2023-03-28 09:03:45', 0),
(177, 'the Justice', 'entities/The_justice.png', 8, '2023-03-28 09:03:45', 0),
(178, 'Reset', 'entities/Reset.png', 6, '2023-03-28 09:03:45', 0),
(179, 'Castle and Castle', 'entities/Castle_and_castle.png', 4, '2023-03-28 09:10:49', 0),
(180, 'Naked and afaid:Solo', 'entities/Naked_and_afraid_Solo.png', 4, '2023-03-28 09:10:49', 0),
(181, 'Rise and Fall', 'entities/Rise_and_fall.png', 14, '2023-03-28 09:10:49', 0),
(182, 'Payback: Money and Power', 'entities/Payback_Money_and_power.png', 5, '2023-03-28 09:10:49', 0),
(183, 'Extraordinary You', 'entities/Extraordinary_you.png', 9, '2023-03-28 09:10:49', 0),
(184, 'You & Me', 'Cops who kill with will Millor', 5, '2023-03-28 09:10:49', 0),
(185, 'Secret Sauce with Todd Graves', 'entities/Secret_Sauce_with_Todd_Graves.png', 4, '2023-03-28 09:10:49', 0),
(186, 'Super Mario Bros', 'entities/https://m.media-amazon.com/images/M/MV5BNGZhYWIyZWUtOTdjZS00ZTc1LWFlZDMtNzU5MTE0OTcyMjg1XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg', 13, '2023-03-28 09:12:23', 1);

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
(1, 'Zootopia', 'entities/Tom&Jerry.png', 2022, 4, 30, '4.5', 'Head back to the fast-paced mammal metropolis of Zootopia in this short-form series that dives deeper into the lives of some of the film’s most intriguing characters, including Fru Fru, the newly married arctic shrew; Gazelle’s talented tiger dancers; and', 1, 6, 0, 0, 45),
(2, 'Tom & Jerry', 'entities/Tom&Jerry.PNG', 1940, 4, 7, '5.0', 'The iconic cat and mouse rivals are back in The Tom and Jerry Show, a fresh take on the classic series. Preserving the look, characters and sensibility of the original, the all-new series shines a brightly colored, high-definition lens on the madcap slaps', 2, 130, 0, 0, 46),
(3, 'Pinocchio', 'entities/Pinocchio.PNG', 2014, 4, 60, '4.0', '	Amidst a sea of young news reporters competing for the next scoop, Choi In Ha finds herself in a tricky position, as she cannot tell a lie without a dead giveaway: breaking into a violent hiccup. Meanwhile, first-year reporter Choi Dal Po proves his rema', 1, 16, 0, 0, 54);

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

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `billing_plan`, `last_billing_date`, `OTP`) VALUES
(1, 'john', 'wick', 'John98@gmail.com', 'Wicky', '$2y$10$PaGdX9CiQ2ecwxy0q8R3MeEFiX7e2DTM9RZIjVpXrrQ4qr0UDfvhq', 0, '2023-03-27', NULL),
(2, 'ad', 'asdda', 'adsadasd@gmail.com', 'saddasd', '$2y$10$JdGUJQfn/KAFtUdZ2zHv5ugD/kYDFfdhjAzMsJfGX62xYLRi1.wXy', 0, '2023-03-27', NULL),
(3, 'af', 'af', 'adf@gmail.com', 'fa', '$2y$10$U4JT.NCPL6WIfS9eAE7cLOX3ctqDcqbhbIq0zqx68doyQLtNNFBda', 0, '2023-03-27', NULL),
(4, 'mutuu', 'tuu', 'lol98@gmail.com', 'MuTuu', '$2y$10$JL/aAylI2xbiLzYlkpWo4.3cFwJ6oBS.IuvGuPbNiJiYUG128NHxG', 0, '2023-03-27', NULL),
(5, 'pyae', 'sone', 'ps98@gmail.com', 'mutuu', '$2y$10$XKaE2yPf3.cawNwa/zXvA.yZeaXdGqyGrK/HVPja03K4R.aAhlMHq', 0, '2023-03-27', NULL),
(6, 'kjh', 'kj', 'ps87@gmail.com', 'sd', '$2y$10$zTQp2cv7orG0tHdYcSzYlegM1DggiryMUSK3lJHFTDRl2n/90qGHu', 0, '2023-03-27', NULL),
(8, 'dfdsf', 'asfd', 'ssfsdf@gmail.com', 'asf', '$2y$10$jSYWgP5n7PrQmQjf/Hfp3OYbJE5rMmfa0V35ur1SCaSDWVZZTi5M6', 0, '2023-03-27', NULL),
(13, 'code', 'worms', 'code-worms23@gmail.com', 'cw', '$2y$10$d9kO7jTD8M2OSgR/0868sOrmCiCD4kZnjSNBxbbPaa0Mi0aXI878S', 0, '2023-03-27', NULL),
(26, 'imm', 'no', 'no98@gmail.com', 'no9', '$2y$10$Pjxzsk0nZ1rOODJkbUCndOFODtA1piLLAacgxLagVe2TOZTGKfOgK', 0, '2023-03-27', NULL),
(27, 'mal', 'MAL', 'mal@gmail.com', 'malMAl', '$2y$10$gSE5S/TeqCEaqMvXSgiahulawGh47PUFXpRq2B6EoTObE18rk/Svi', 0, '2023-03-27', NULL),
(28, 'joker', 'ko', 'joke23@gmail.com', 'joke', '$2y$10$XEhv3ltWn6p8y3nLbIUCb.JQ3m2cbdqyfzR7kaeYHkQUYTHNJYWa.', 1, '2023-03-27', NULL),
(29, 'Cloud', 'Shinora', 'cloud23@gmail.com', 'Cloud', '$2y$10$gnOSjKKLvy97JNXLsSUrxujep0huSzF864sMl/9C1.1D..WQxulRu', 1, '2023-03-27', 9301);

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
(1, 'Brave', 'http://localhost:81/entities/Brave(2012).PNG', 2012, 13, 93, '3.5', 'Brave is set in the mystical scottish Highlands, where Merida is the princess of a kingdom ruled by King Fergus and Queen Elinor. An unrully daughter and an accomplished archer, Merida seeks out an eccentric old Wise Woman and is granted an ill-fated wish.Also figuring into Merida\'s quest and serving as comic relief are the kingdom\'s three loards: the enormous Loard MacGuffin, the surly Loard Macintosh, and the disagreeable Loard Dingwall.', 'https://vimeo.com/811006990', 0, 19),
(4, 'Avatar:The Way of the Water', 'entities/Avatar_-_The_Way_Of_Water(2022).PNG', 2022, 9, 192, '4.0', 'Set more than a decade after the events of the first film, learn the story of the Sully family(Jake,Neytiri and their kids), the trouble that follows them, the lenghts they go to keep each otehr safe, the battles they fight to stay alive, and the tragedies they endure.', '', 0, 1),
(5, 'A Star is Born', 'entities/A_Star_is_Born(2018).PNG', 2018, 7, 136, '4.0', 'Seasoned musician Jackson Maine discovers - and falls in love with - struggling artist Ally. She has just about given up on her dream to make it big as a singer - until Jack coaxes her into the spotlight. but even as Ally\'s career takes off, the personal side of their relationship is breakign down, as Jack fight an ongoing battle with his own internal demons.', '', 0, 2),
(6, 'Beast', 'entities/Beast(2022).PNG', 1993, 8, 93, '3.5', 'A recently widowed man and his two teenage daughters travvel to a gmae reserve in south Africa. However, their journey of healing soon turns into a fight for survival when a bloodthirsty lion starts to stalk them.', '', 0, 27),
(7, 'Bullet Train', 'entities/Bullet_Train(2022).PNG', 2022, 3, 127, '4.0', 'Unlucky assassin Ladybug is determined to do his job peacefully after one too many gigs gone off the rails. Fate, however, may have other plans, as Ladybug\'s latest mission puts him on a collision course with leathal adversaries form around the globe- all with connected, yet conflicting, objectives- on the world\'s fastest train.', '', 0, 40),
(8, 'Coco', 'entities/CoCo(2017).PNG', 2017, 13, 105, '4.0', 'Despite his family\'s baffling generations-old ban on music, Muguel dreams of becinubg an accomplish musician like his idol, Ernesto de la Cruz. Desperate to prove his talent, Miguel finds himself in the stunning and colorful Land of the Dead following a mysterious chain of events. Along the way he meets charming trickster Hector, and together they set off on an extraordinary journey to unlock the reak story behind Miguel\'s family history.', '', 0, 20),
(9, 'Everything Everywhere All at Once', 'entities/entities/Everything_Everywhere_All_at_Once(2022).PNG', 2022, 4, 140, '3.5', 'An aging Chinese immigrants is swept up in an insane adventure, where she alone cna save what\'s important to her by connecting with the lives she could have led in other universes.', '', 0, 39),
(10, 'Frozen', 'entities/Frozen(2013).PNG', 2013, 13, 102, '3.5', 'Young princess Anna of Arendelle dreams about finding true love at her sister Elsa\'s coronation. Fate takes her on a dangerous journey in an attemp to end the eternal winter that has fallen over the kingdom. She\'s accompanied by ice delivery man Kristoff, his reindeer Seven, and snowman Olaf. On an adventure where she will find out what friendship, courage, family, and true love really means.', '', 0, 22),
(11, 'Glass Onion', 'entities/Glass_Onion_-_A_Knives_Out_Mystery(2022).PNG', 2022, 8, 139, '4.0', 'World-famous detective Benoit Blanc heads to Greece to peel back the layers of a mystery surrounding a tech billionaire and his eclectic crew of friendds.', '', 0, 24),
(12, 'Inside Out', 'entities/Inside_Out(2015).PNG\r\n', 2015, 4, 95, '4.0', 'Growing up can be a bumpy road, and it\'s no exception for Riley, who is uprooted from her Midwest life when her fater starts a new job in San Francisco. Riley\'s guiding emotion, Joy,Fear,Anger,Disgust and Sadness , live in Headquarters, the control centre omsode Riley\'s mind, where they help advise her through everyday life and tries to keep things positive, but the emotions conflict on how best to navigate a new city, house and school.', '', 0, 35),
(13, 'Jumanji- Welcome to the Jungle', 'entities/JumanJi_-_Welcome_to_the_Jungle(2017).PNG', 2017, 3, 119, '3.5', 'Four teenagers in detention discover an old video game console with a game they\'ve never heard of. When they decide to play, they are immediately sucked into the jungle world of jumanji in the bodies of their avatars. They\'ll have to complete the adventure of their lives filled with fun, thrills and danger of be stuck in game forever!', '', 0, 29),
(14, 'MEGAN', 'entities/M3GAN(2022).PNG', 2022, 6, 102, '3.5', 'A brilliant tou company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emmotionally bond with her newly orphaned niece. But when the doll\'s programming works too well, she becomes overprotective of her new friend with terrifying reults.', '', 0, 17),
(15, 'Orphan-First Kill', 'entities/Orphan_-_First_Kill(2022).PNG', 2022, 6, 99, '3.5', 'After escaping from an Estonian psychiatric facility, Leena Klammer travels to America by impersonating Esther, the missing daughter of a wealthy family. but when her mask starts to slip, she is put against a mother who will protect her family from the murderous \"child\" at any cost', '', 0, 18),
(16, 'Ralph Breaks the Internet', 'entities/CaptureRalph Breaks the Internet(2018).PNG', 2018, 13, 112, '3.5', 'Video game bad guy Ralph and fellow misfit Vanellope von Schweetz must risk it all by travelling to the World Wide Wide Web in searcj pf a replacement parth to save Banellope\'s video game, Sugar Rush. In way over their heads, Ralph and Vanellope rely on the citizens of the internet, the netizens, to help navigate their way, including an entrepreneur named Yesss, who is the head algorithm and the heart and soul of trend-making site BuzzzTube.', '', 0, 21),
(17, 'Selena Gomaz My Mind & Me', 'entities/Selena_Gomaz_-_My_Mind&Me(2022).PNG', 2022, 14, 95, '5.0', 'After years in the limelight, Selena Gomaz achieves unimaginable stardom. But just as she reaches a new peak, an unexpected tuen pulls her into darkness. This uniquely raw and intimate documentary spans her six-year journey into a new light.', '', 0, 87),
(18, 'Super Mario Bros', 'entities/https://m.media-amazon.com/images/M/MV5BNGZhYWIyZWUtOTdjZS00ZTc1LWFlZDMtNzU5MTE0OTcyMjg1XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg', 2023, 13, 83, '4.5', 'With help from Princess Peach, Mario gets ready to square off against the all-powerful Bowser to stop his plans from conquering the world.', '', 0, 186);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
