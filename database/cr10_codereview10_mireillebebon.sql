-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2020 at 10:37 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr10_codereview10_mireillebebon`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', '336699336699');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `ID` int(11) NOT NULL,
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(80) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text COLLATE latin1_general_ci,
  `book_price` decimal(6,2) NOT NULL,
  `subject` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`ID`, `book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `subject`) VALUES
(1, '978-0062641540', 'The Subtle Art of Not Giving a F*ck', 'Mark Manson', 'art.jpg', 'The Subtle Art of Not Giving a F*ck: A Counterintuitive Approach to Living a Good Life is the second book by blogger and author Mark Manson. In it Manson argues that life s struggles give it meaning, and that the mindless positivity of typical self-help books is neither practical nor helpful. It was a bestseller', '20.00', 'Self-help book'),
(2, '978-0762447695', 'You are a bad ass', 'Jen Sincero', 'badass.jpg', 'In this refreshingly entertaining how-to guide, bestselling author and world-traveling success coach, Jen Sincero, serves up 27 bitesized chapters full of hilariously inspiring stories, sage advice, easy exercises, and the occasional swear word, helping you to: Identify and change the self-sabotaging beliefs and behaviors that stop you from getting what you want, Create a life you totally love. And create it NOW, Make some damn money already. The kind you ve never made before.\r\nBy the end of You Are a Badass, you ll understand why you are how you are, how to love what you can t change, how to change what you don t love, and how to use The Force to kick some serious ass.', '20.00', 'Self-help book'),
(3, '978-0671646783', 'The Magic of Thinking Big', 'David J. Schwartz', 'big.jpg', 'The Magic of Thinking Big gives you useful methods, not empty promises. Dr. Schwartz presents a carefully designed program for getting the most out of your job, your marriage and family life, and your community. He proves that you don’t need to be an intellectual or have innate talent to attain great success and satisfaction—but you do need to learn and understand the habit of thinking and behaving in ways that will get you there. This book gives you those secrets!\r\n.', '20.00', 'Self-help book'),
(4, 'B0714M8P9Y', 'Make Your Bed', 'William H. McRaven', 'bed1.jpg', 'If you want to change the world, start off by making your bed.\r\nIn 2014, Admiral William H. McRaven addressed the graduating class of the University of Texas, in a video which has since been watched over 10 million times.\r\nHe shared the 10 principles he had learned during his Navy Seal training that helped him overcome challenges not only in his long Naval career, but also throughout his life. He explained how anyone can use these basic lessons to change themselves - and the world - for the better . \r\nBuilding on these principles in this book, McRaven recounts tales from his own life and from people he encountered during his military service who dealt with hardship and made tough decisions with determination, compassion, honour, and courage.\r\nTold with great humility and optimism, this timeless book provides simple and universal wisdom, practical advice, and words of encouragement that will inspire readers to achieve.', '20.00', 'Self-help book'),
(5, '978-8129137005', 'Great stories for children', 'Ruskin Bond', 'kid.jpg', 'Ruskin Bond has been writing stories for children for over six decades now, delighting and enchanting each new generation of readers with his heart-warming tales of friendship, love and coming-of-age. Curated in this essential collection are some of his best-loved stories, designed to introduce the young reader to Ruskin s cast of beloved characters - from the irrepressible Rusty, with his constant thirst for adventure, to his Grandfather, with his overflowing kindness towards all creatures great and small, from the resolute Bina, who braves a leopard to walk to school, to Suraj and Sunder Singh, who become unlikely friends. Including classic tales such as \"The Girl on the Train\", \"Coming Home to Dehra\", \"The Room of Many Colours\" and \"The Blue Umbrella\", in turns funny, touching, whimsical and nostalgic, this collection is a must-read for children and adults alike.', '11.00', 'children book'),
(6, 'B013ML2RMC', 'BUSTER THE DOG AND FRIENDS IN THE GREAT BALL CHASE', 'Andrew Rosenblatt', 'kid1.jpg', 'Will Buster The Dog find his favorite ball? Will you catch all the great early education tools such as verb play using present tense, past tense and base forms of verbs in sentence and story form? This original story will entertain your kids with love and fun and plenty of fun loving intelligent animals along the way. This story is also a wonderful children s bedtime story and will continue to teach your young one manners and word play. Will you help Buster find his ball as he meets many new friends! Oh no, it s kicked by Donnie the Donkey! Help Buster the Dog and Friends find his ball as Buster travels around the town in search of his ball. Buster meets many new friends, including Connie the Cow and Dora the Duck, as well as Barry the Bear along his long journey in search of his ball.', '14.00', 'children book'),
(7, '978-0692768679', 'The sneaky spinach', 'Alexis Schulze ', 'kid3.png', 'This is a story about a boy named Nick who refuses to eat his vegetables. He doesn t know how important fruits and vegetables are for his brain and body, so a group of Super Spinach leaves come up with a clever little scheme. Will their sneaky plan finally show Nick the power of fresh fruits and veggies? Nekter Juice Bar, will donate $4.00 from each Sneaky Spinach book sold in participating Nekter restaurants and online to Festival of Children Foundation, which seeks to improve the lives of children by supporting the charities that serve them. www.festivalofchildren.org.', '20.00', 'children book'),
(8, 'B00DM8PSDQ', 'Girl Detective Books 1-8', 'PJ Ryan', 'kid6.jpg', 'This book is a compilation of books 1-8 of \"Rebekah - Girl Detective\", short story mysteries for children ages 9-12. Each short story is around 20-24 pages long.\r\n\r\nIt includes the following books:\r\n\r\n*Mysterious Garden\r\n*Alien Invasion\r\n*Magellan Goes Missing\r\n*Ghost Hunting\r\n*Grown-Ups Out To Get Us?!\r\n*The Missing Gems\r\n*Swimming With Sharks?!\r\n*Magic Gone Wrong!\r\n\r\nRebekah Daniels is just your ordinary spunky 9 year old girl living in the small town of Curtis Bay...EXCEPT she is determined NOT to be ordinary at all!\r\n\r\nHer small town is filled with mysteries and Rebekah is sure that she, along with her best friend Mouse, will be able to solve every last one of them.', '12.90', 'children book'),
(9, '978-1472921406', 'Mental Health Matters', ' Paula Nagel', 'h4.jpg', 'Teachers have a responsibility to support the mental health of children in their care. Current statistics show a significant rise in mental health difficulties in children and young people, and new legislation urges schools to consider whether continuing disruptive behaviour might be the result of an unmet need. However, this is not an area that is universally addressed in teacher training programmes or books.\r\n\r\nUsing real life case studies, this book supports all teachers and school staff in understanding and identifying the early signs of mental health difficulties, and explains how to bring about appropriate early interventions.', '17.43', 'diet and heath'),
(10, '978-0823421398', 'The Monster Health Book', 'Edward Miller', 'h1.jpg', 'Beginning with concise discussions of each of the food groups, along with the newly redesigned food pyramid, Ed Miller looks at all aspects of health and nutrition in this accessible and informative book. Fun facts about different foods are included throughout to keep the reading upbeat and clear distinctions are made between healthy and not-so-healthy meal choices. Readers will learn about nutrients, how to read foods labels and what it means to count calories. Readers will also learn how to develop healthy habits, such as making time for breakfast, tips for packing the best lunch, and the benefits of having a sit down (versus fast food) dinner. Overviews on food illnesses and disorders are included as are the importance of sleep and exercise. With Edward Miller s comprehensive writing and clear format, making healthy choices truly becomes easier.', '5.99', 'diet and heath'),
(11, 'B0150UCFPW', 'Changing Minds: The go-to Guide to Mental Health for Family and Friends', ' Dr Catherine Hanrahan and Dr Mark Cross ', 'h3.jpg', 'This compassionate and insightful guide will demystify mental health issues and help anyone concerned about themselves or loved ones.\r\n\r\nLeading psychiatrist Dr Mark Cross, from the acclaimed ABC TV series \"Changing Minds\", feels strongly that everyone should have easy access to information they can trust about common mental health problems, whether for themselves or to help family or friends. The result is this empowering guide, written with Dr Catherine Hanrahan, which aims to cut through the myths and taboos about mental health and offer clear, practical help. It covers a wide range of common issues, from bipolar, anxiety, personality and eating disorders, to depression, post-traumatic stress and schizophrenia, and includes how to get help, what treatments are available and how to live successfully with a mental illness. Most importantly, it shows how carers and families can help a loved one through what can be a very challenging time. Since almost half of all Australians will experience a mental health issue at some point in their lifetime, this book is for everyone.', '13.08', 'diet and heath');

-- --------------------------------------------------------

--
-- Table structure for table `cd`
--

CREATE TABLE `cd` (
  `ID` int(11) NOT NULL,
  `cd_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `cd_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `releasedate` date NOT NULL,
  `cd_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `cd_descr` text COLLATE latin1_general_ci,
  `cd_price` decimal(6,2) NOT NULL,
  `singer` varchar(55) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cd`
--

INSERT INTO `cd` (`ID`, `cd_isbn`, `cd_album`, `releasedate`, `cd_image`, `cd_descr`, `cd_price`, `singer`) VALUES
(1, ' B01N4AQZKT', 'Starboy', '2017-02-10', 'starboy.jpg', 'standard weight, translucent red colored double vinyl, in a gatefold jacketStarboy is the follow up to last year s Grammy-Award winning, 3X-platinum Beauty Behind The Madness. Title track \"Starboy\" ft. Daft Punk was named \"Most Added Record of All-Time in North America\" at radio.', '27.99', 'The Weeknd'),
(2, 'B0727QQY8Y', 'Lemonade', '2017-02-15', 'bey.jpg', 'LEMONADE is Beyoncé s sixth studio album, originally released on April 23, 2016. The Box Set includes the first pressing of the 180 gram, yellow, four-sided vinyl, allowing for a higher sound quality with the following track listing.', '25.99', 'Beyonce '),
(3, 'B00004R84V', 'Whitney Houston - The Greatest Hits', '2000-05-16', 'with.jpg', 'Much more than that, actually-all her #1 hits are here ( Greatest Love of All; I Will Always Love You; All the Man That I Need; Didn t We Almost Have It All , etc.), but so are her hottest remixes ( I Wanna Dance with Somebody; So Emotional; I m Your Baby Tonight; I m Every Woman , and more), previously unissued rarities, fan favorites and four brand-new tracks-37 of Whitney s best on 2 cassettes!', '6.99', 'Whitney Houston');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(2, ' Buzzy', '176 Saint Viateur West Street', 'montreal', ' QC 2L3', 'canada'),
(3, ' Tetsuya', ' 529 Kent St', 'Sydney', ' NSW 2000', 'Australia'),
(4, ' Merah Putih', 'Jl. Petitenget No.100X', ' Bali ', '80361', ' Indonesia'),
(7, 'Elite French restaurant', '155 W 51st St', ' New York', 'NY 10019', 'United States'),
(9, ' The Modern', ' 9 W 53rd St', 'New York', ' NY 10019', 'United States');

-- --------------------------------------------------------

--
-- Table structure for table `customers_items`
--

CREATE TABLE `customers_items` (
  `id` int(11) NOT NULL,
  `customers(ID)` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dvd`
--

CREATE TABLE `dvd` (
  `ID` int(11) NOT NULL,
  `dvd_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `dvd_title` varchar(150) COLLATE latin1_general_ci DEFAULT NULL,
  `releasedate` date NOT NULL,
  `dvd_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `dvd_descr` text COLLATE latin1_general_ci,
  `dvd_price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `dvd`
--

INSERT INTO `dvd` (`ID`, `dvd_isbn`, `dvd_title`, `releasedate`, `dvd_image`, `dvd_descr`, `dvd_price`) VALUES
(1, 'B07RX2K38M', 'Star Trek Trilogy: The Kelvin Timeline [4k UHD] [Blu-ray]', '0000-00-00', 'mov1.jfif', 'When the U.S.S. Kelvin is wrapped up in a temporal anomaly, the path of Starfleet and the future of the universe as we know it takes off in a new direction: the Kelvin Timeline. Up against the Romulans, the superhuman Khan (Benedict Cumberbatch), and the alien warlord Krall (Idris Elba), it’s all hands on deck for the U.S.S. Enterprise crew, led by the young and headstrong Kirk (Chris Pine), Spock (Zachary Quinto), Uhura (Zoe Saldana), McCoy (Karl Urban), and Scotty (Simon Pegg). J.J. Abrams’s reboot of the classic franchise has received dozens of accolades, including an Academy Award. For devoted fans of the beloved benchmark sci-fi series, all three films now come together in the Kelvin Timeline Trilogy – a bold, new beginning and a must-have in anyone’s Star Trek collection.', '39.99'),
(2, 'B082PQH2P7', '1917', '0000-00-00', '1917.jpg', 'Sam Mendes, the Oscar-winning director of Skyfall, Spectre and American Beauty, brings his singular vision to this World War I epic.\r\nAt the height of the First World War, two young British soldiers, Schofield (Captain Fantastic’s George MacKay) and Blake (Game of Thrones’ Dean-Charles Chapman) are given a seemingly impossible mission. In a race against time, they must cross enemy territory and deliver a message that will stop a deadly attack on hundreds of soldiers—Blake’s own brother among them.', '22.99'),
(3, 'B008JFUPK8', 'Man of Steel (Blu-ray)', '0000-00-00', 'steel.jpg', 'A young boy learns that he has extraordinary powers and is not of this Earth. As a young man, he journeys to discover where he came from and what he was sent here to do. But the hero in him must emerge if he is to save the world from annihilation and become the symbol of hope for all mankind. Written by Warner Bros. Pictures', '6.99');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `ID` int(11) NOT NULL,
  `GenreType` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`ID`, `GenreType`) VALUES
(1, 'Action'),
(2, 'Comedy'),
(3, 'Thriller'),
(4, 'Drama'),
(5, 'Crime'),
(6, 'Blues'),
(7, 'Alternative'),
(8, 'Classical'),
(9, 'Children music'),
(10, 'Hiphop/Rap'),
(11, 'French Pop'),
(12, 'R&B');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'The Subtle Art of Not Giving a F*ck', 20),
(2, 'You are a bad ass', 20),
(3, 'The Magic of Thinking Big', 20),
(4, 'Make Your Bed', 20),
(5, 'Great stories for children', 11),
(6, 'BUSTER THE DOG AND FRIENDS IN THE GREAT BALL CHASE', 14),
(7, 'The sneaky spinach', 20),
(8, 'Girl Detective Books 1-8', 13),
(9, 'Mental Health Matters', 17),
(10, 'The Monster Health Book', 6),
(11, 'Changing Minds: The go-to Guide to Mental Health for Family and Friends', 13),
(12, 'Starboy', 28),
(13, 'Lemonade', 26),
(14, 'Whitney Houston - The Greatest Hits', 7),
(15, 'Star Trek Trilogy: The Kelvin Timeline [4k UHD] [Blu-ray]', 40),
(16, '1917', 23),
(17, 'Man of Steel (Blu-ray)', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID` int(11) NOT NULL,
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) DEFAULT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `ID` int(11) NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `ID` int(11) NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `publisher_address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `publisher_city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `publisher_zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `publisher_country` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `publisher_size` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`ID`, `publisher_name`, `publisher_address`, `publisher_city`, `publisher_zip_code`, `publisher_country`, `publisher_size`) VALUES
(1, 'a', 'a', 'a', 'a', 'a', 'y'),
(2, 'b', 'b', 'b', 'b', 'b', 'x'),
(3, 'test', '123 test', '12121', 'test', 'test', 'z');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cd`
--
ALTER TABLE `cd`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customers_items`
--
ALTER TABLE `customers_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dvd`
--
ALTER TABLE `dvd`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD KEY `customerid` (`customerid`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cd`
--
ALTER TABLE `cd`
  ADD CONSTRAINT `cd_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `publisher` (`ID`);

--
-- Constraints for table `customers_items`
--
ALTER TABLE `customers_items`
  ADD CONSTRAINT `customers_items_ibfk_1` FOREIGN KEY (`id`) REFERENCES `customers` (`ID`);

--
-- Constraints for table `dvd`
--
ALTER TABLE `dvd`
  ADD CONSTRAINT `dvd_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `publisher` (`ID`),
  ADD CONSTRAINT `dvd_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `genre` (`ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `customers` (`ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `order_items` (`ID`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `books` (`ID`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `dvd` (`ID`),
  ADD CONSTRAINT `order_items_ibfk_3` FOREIGN KEY (`ID`) REFERENCES `cd` (`ID`);

--
-- Constraints for table `publisher`
--
ALTER TABLE `publisher`
  ADD CONSTRAINT `publisher_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `books` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
