-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2023 at 09:32 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpleonlineshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'tech'),
(2, 'book'),
(3, 'electronic'),
(4, 'audio'),
(5, 'video'),
(6, 'hot'),
(7, 'wear'),
(8, 'phone'),
(9, 'node'),
(10, 'holy');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(63) NOT NULL,
  `name` varchar(63) NOT NULL,
  `about` text NOT NULL,
  `price` int(11) NOT NULL,
  `company` text NOT NULL,
  `category_ID` int(11) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `about`, `price`, `company`, `category_ID`, `dob`) VALUES
(21, 'Quinn', 'Velit ea qui ipsum Lorem. Laborum qui ut aute cillum in.', 200, 'Aquasseur', 6, '1993-12-21'),
(22, 'Guy', 'Ea velit nostrud nostrud laboris ut mollit sunt fugiat cupidatat ad. Magna magna excepteur minim deserunt consectetur exercitation voluptate ipsum nisi occaecat ipsum aute.', 300, 'Blurrybus', 2, '1992-12-22'),
(23, 'Franco', 'Ut qui sint consectetur reprehenderit veniam non consequat minim deserunt sunt. Proident mollit aliqua qui aliqua ea culpa tempor dolor elit enim ullamco in.', 200, 'Insuron', 2, '1992-01-31'),
(24, 'Owen', 'In officia ipsum dolor fugiat. Do voluptate sit mollit ut laboris aliquip irure officia ad minim incididunt.', 200, 'Nimon', 4, '1989-10-14'),
(25, 'Stanton', 'Nisi eiusmod sunt duis commodo minim officia et duis minim labore est elit sunt cillum. Amet fugiat excepteur officia dolor consequat ea eiusmod laborum proident nostrud veniam nulla amet labore.', 200, 'Bizmatic', 9, '1989-04-19'),
(26, 'Lowery', 'Mollit occaecat cillum aute qui velit mollit consequat sit dolor do exercitation dolore. Eu nulla fugiat anim esse irure eu sit magna fugiat dolor.', 200, 'Zillidium', 7, '1994-02-20'),
(27, 'Kirby', 'Sit deserunt occaecat et proident eiusmod dolor occaecat. Lorem elit enim pariatur in.', 200, 'Isodrive', 5, '1989-11-20'),
(28, 'Lopez', 'Laborum laborum ipsum amet laborum ad aliquip et veniam adipisicing ullamco esse voluptate officia labore. Aliquip aliqua aute cillum do ullamco voluptate.', 100, 'Gronk', 3, '1994-06-27'),
(29, 'Banks', 'Deserunt tempor sint magna proident aute eiusmod veniam aliqua sint adipisicing quis sit cupidatat. Laborum eiusmod in officia pariatur reprehenderit laboris reprehenderit.', 300, 'Zentry', 7, '1989-04-12'),
(30, 'Nicholson', 'Officia fugiat dolor mollit excepteur anim. Reprehenderit commodo laboris nisi occaecat culpa anim duis excepteur.', 200, 'Zipak', 7, '1992-01-30'),
(31, 'Mcleod', 'Nostrud nulla ullamco mollit cillum qui amet mollit nulla esse consequat laborum tempor adipisicing occaecat. Deserunt aliqua tempor eiusmod amet Lorem voluptate deserunt exercitation esse incididunt et.', 300, 'Essensia', 3, '1990-05-31'),
(32, 'Gamble', 'Consequat labore ad id excepteur ut qui. Mollit consectetur quis duis labore reprehenderit sint laborum dolore amet labore mollit laboris.', 100, 'Otherway', 3, '1991-09-06'),
(33, 'Alvarado', 'Consequat nisi dolore ullamco nisi labore in ullamco. Sit labore proident deserunt ea velit.', 300, 'Eventage', 7, '1993-04-01'),
(34, 'Cote', 'Lorem eiusmod enim ullamco officia incididunt do eiusmod. Reprehenderit fugiat amet commodo eiusmod dolor esse incididunt.', 300, 'Enerforce', 2, '1990-09-13'),
(35, 'Kirk', 'Quis ullamco nisi ut qui voluptate sunt dolore commodo pariatur. Ut et sunt excepteur eu et fugiat magna mollit quis Lorem incididunt occaecat Lorem adipisicing.', 200, 'Mantro', 10, '1990-07-15'),
(36, 'Hess', 'Minim laborum eu qui veniam. Nisi nulla minim magna do occaecat nulla.', 100, 'Otherside', 3, '1993-07-21'),
(37, 'Ellison', 'Voluptate officia esse ea voluptate non id magna est sint nisi. Aute magna eu deserunt aliqua irure ad esse in aute irure sit sit pariatur nostrud.', 200, 'Gracker', 1, '1991-09-15'),
(38, 'Lara', 'Ut irure irure dolore et incididunt labore. Commodo ipsum cupidatat quis excepteur aliquip eu.', 100, 'Aclima', 2, '1989-12-23'),
(39, 'Woodward', 'Esse duis irure esse irure ex irure fugiat ullamco adipisicing proident anim anim. Fugiat cupidatat labore est labore enim culpa.', 200, 'Fangold', 3, '1988-05-23'),
(40, 'Morris', 'Laboris dolore do voluptate proident est ullamco. Deserunt non nostrud voluptate adipisicing amet commodo ad mollit irure incididunt irure cillum Lorem dolore.', 300, 'Rameon', 10, '1989-05-19'),
(41, 'Baxter', 'Aliqua labore aute laborum occaecat cillum duis do duis eu mollit tempor laborum aliqua. Id cillum velit esse exercitation commodo adipisicing.', 100, 'Syntac', 7, '1988-12-22'),
(42, 'Curry', 'Ipsum in magna nisi sit fugiat et ex quis id in officia deserunt aliquip do. Incididunt velit magna anim qui aliqua enim dolor.', 300, 'Tetak', 9, '1994-03-09'),
(43, 'Cooke', 'Esse sint id laboris eu. Ipsum incididunt cillum ut duis nulla.', 100, 'Applica', 9, '1989-06-05'),
(44, 'Dudley', 'Ex non magna esse irure eu quis proident sunt id dolor laborum. Officia culpa amet enim excepteur.', 300, 'Lunchpod', 7, '1988-10-10'),
(45, 'Mccarthy', 'Eu consectetur excepteur laboris excepteur esse veniam sint officia elit quis. Id occaecat labore consectetur irure occaecat.', 300, 'Mantrix', 1, '1989-10-16'),
(46, 'Blackburn', 'Ex deserunt nisi amet cupidatat incididunt eiusmod minim esse. Minim amet in minim minim ullamco non adipisicing.', 200, 'Techtrix', 9, '1994-06-24'),
(47, 'Shaffer', 'Adipisicing ea est nostrud in excepteur reprehenderit elit veniam eu. Aliqua sunt amet eiusmod proident cupidatat id fugiat ad est ipsum amet qui.', 200, 'Jamnation', 5, '1990-08-06'),
(48, 'Harvey', 'Dolore laboris ex eu in voluptate enim sint irure ex esse officia. Commodo laboris aute laborum minim esse pariatur nisi cillum et proident.', 200, 'Xylar', 2, '1988-11-26'),
(49, 'Gardner', 'Magna do do ut exercitation quis velit eiusmod. Proident laboris aute aliquip sunt ad ullamco ipsum officia Lorem amet deserunt et.', 100, 'Darwinium', 2, '1993-04-02'),
(50, 'Reed', 'Aliquip adipisicing occaecat anim consequat esse irure et. Ullamco cillum occaecat Lorem voluptate cupidatat magna ipsum cupidatat labore quis do.', 100, 'Euron', 9, '1990-02-08'),
(51, 'Kline', 'Tempor elit ullamco elit mollit eiusmod duis sunt velit quis irure nostrud ullamco enim veniam. Minim enim laboris veniam tempor eiusmod pariatur occaecat.', 100, 'Lumbrex', 6, '1990-05-02'),
(52, 'Newman', 'Quis aliqua laboris labore cillum amet irure nulla nostrud dolor. Ipsum minim qui cillum culpa.', 300, 'Xerex', 7, '1989-03-02'),
(53, 'Williams', 'Non adipisicing laborum ipsum proident nostrud aliqua ad voluptate dolore. Et laborum incididunt veniam elit velit tempor veniam incididunt ullamco ut dolore quis velit.', 300, 'Enersave', 6, '1992-01-11'),
(54, 'Harris', 'Ex quis ullamco dolor tempor dolore Lorem. Excepteur ea nisi enim labore minim esse ipsum.', 200, 'Trasola', 3, '1994-10-03'),
(55, 'Garrison', 'Pariatur fugiat labore commodo irure veniam nulla adipisicing labore. Sunt minim eiusmod tempor veniam dolor non mollit do laboris.', 200, 'Progenex', 7, '1989-05-12'),
(56, 'Stewart', 'Ea pariatur voluptate adipisicing quis minim nisi incididunt mollit sunt labore voluptate duis deserunt nulla. Mollit minim ad aliqua et consectetur pariatur id velit est commodo ea quis voluptate anim.', 200, 'Ezentia', 7, '1989-06-07'),
(57, 'Shepherd', 'Sint ullamco tempor in mollit sit. Labore excepteur nulla incididunt anim incididunt dolore est.', 100, 'Insurity', 9, '1991-08-20'),
(58, 'Calhoun', 'Minim excepteur incididunt est et velit. Est officia aliqua ut dolore aliqua.', 100, 'Nitracyr', 7, '1988-09-12'),
(59, 'Stout', 'Minim adipisicing ullamco anim labore consectetur. Commodo consectetur non ex est esse fugiat ea.', 100, 'Bezal', 2, '1989-07-26'),
(60, 'Lancaster', 'Fugiat aute culpa do officia amet non excepteur in voluptate aute nulla. Reprehenderit est aliquip nostrud laborum ut laborum.', 100, 'Verbus', 5, '1993-02-06'),
(61, 'Leon', 'Officia et exercitation esse nostrud. Labore ea mollit et eu id sint.', 200, 'Bytrex', 2, '1991-12-07'),
(62, 'Preston', 'Adipisicing ex velit pariatur in qui enim. Anim do proident consequat reprehenderit quis labore.', 100, 'Nexgene', 5, '1993-10-15'),
(63, 'Richardson', 'Elit aliqua ipsum commodo incididunt proident exercitation. Excepteur sit dolor ut mollit reprehenderit id ut sit amet consequat ad.', 200, 'Strezzo', 10, '1993-11-28'),
(64, 'Freeman', 'Ad irure Lorem eu veniam velit laboris amet. Nostrud laboris ea voluptate dolor ut aute ea.', 100, 'Eschoir', 8, '1992-05-16'),
(65, 'Page', 'Laborum eiusmod laboris veniam est. Aute proident veniam do qui consequat minim laborum anim pariatur in.', 300, 'Kineticut', 5, '1992-08-04'),
(66, 'Chang', 'Lorem amet ut ipsum aliqua id mollit voluptate nostrud culpa officia. Commodo sint esse dolore magna velit esse pariatur magna minim sit labore ipsum fugiat labore.', 300, 'Opticon', 2, '1992-05-15'),
(67, 'Boyle', 'Eu proident mollit ullamco qui ad aute fugiat cillum cillum. Veniam reprehenderit et in qui ut eu adipisicing.', 200, 'Sustenza', 2, '1989-02-25'),
(68, 'Gillespie', 'Ut cupidatat velit nisi Lorem exercitation occaecat non qui consequat. Proident incididunt eiusmod ut quis ex anim fugiat dolor.', 300, 'Roboid', 5, '1990-08-09'),
(69, 'Atkins', 'Consequat do dolor consequat laborum proident. Proident magna aute consectetur dolor tempor commodo dolor labore amet irure amet.', 100, 'Centregy', 10, '1992-06-21'),
(70, 'Rhodes', 'Fugiat dolore occaecat commodo nostrud officia voluptate Lorem sint sunt occaecat commodo pariatur sunt. Irure tempor nulla sit exercitation sunt minim irure.', 100, 'Comtext', 10, '1991-06-22'),
(71, 'Wiley', 'Non do dolore ut minim in consequat amet. Irure deserunt id ipsum ullamco anim irure velit officia elit do irure irure ea.', 300, 'Farmage', 2, '1989-01-13'),
(72, 'Sullivan', 'Officia proident amet elit elit laboris ipsum mollit aliquip sit excepteur velit sint. Laboris ullamco aliqua exercitation nulla fugiat ad nisi elit aute culpa dolor aliqua.', 300, 'Glukgluk', 1, '1990-05-08'),
(73, 'Mcintosh', 'Ullamco adipisicing non culpa fugiat esse mollit aute. Dolore id ipsum exercitation aliqua eiusmod pariatur quis elit do laborum cillum velit laboris minim.', 300, 'Arctiq', 2, '1994-06-22'),
(74, 'Barlow', 'Pariatur occaecat sit pariatur ipsum voluptate exercitation proident velit ea cupidatat esse. Do Lorem non ut sint exercitation cillum Lorem id.', 200, 'Veraq', 3, '1994-11-20'),
(75, 'Joyner', 'Et duis aliquip duis esse reprehenderit anim qui fugiat velit magna. Cillum eu magna cillum minim qui consequat.', 200, 'Inquala', 5, '1993-03-18'),
(76, 'Hughes', 'Id aute aute esse anim occaecat fugiat reprehenderit amet qui occaecat dolore ex velit Lorem. Ullamco ex in non dolor officia et commodo ut amet cupidatat fugiat.', 200, 'Elentrix', 2, '1992-09-19'),
(77, 'Oliver', 'Non magna veniam Lorem cupidatat dolor cupidatat velit est occaecat occaecat commodo qui. Dolore quis enim consectetur aliqua in.', 300, 'Providco', 10, '1993-12-24'),
(78, 'Mcmahon', 'Incididunt consectetur adipisicing est commodo aute sunt. Sint officia aute nisi laboris magna mollit mollit aliqua id.', 200, 'Prismatic', 2, '1990-03-12'),
(79, 'Clay', 'Nisi sint excepteur irure et. Enim elit adipisicing proident aute do consequat eiusmod exercitation veniam.', 200, 'Zenolux', 4, '1993-05-07'),
(80, 'Young', 'Laborum et sunt adipisicing reprehenderit pariatur exercitation ut veniam ipsum ullamco consectetur veniam. Nostrud consequat deserunt sit laboris commodo sunt dolor ipsum.', 300, 'Nebulean', 6, '1994-06-04'),
(81, 'Anderson', 'Excepteur nisi mollit quis irure irure aliqua consectetur mollit irure excepteur non. Minim eiusmod velit enim id non fugiat proident incididunt laboris non occaecat cillum.', 100, 'Cognicode', 1, '1994-06-01'),
(82, 'Kaufman', 'Mollit proident nostrud ea nisi nisi fugiat mollit adipisicing irure deserunt qui. Labore ullamco ea consequat aute nisi in aute.', 100, 'Andryx', 7, '1989-12-16'),
(83, 'Miles', 'Laboris cupidatat magna duis voluptate eu non reprehenderit mollit pariatur enim id. Consequat cupidatat aliqua aliquip qui laboris adipisicing ut.', 200, 'Jumpstack', 6, '1993-12-12'),
(84, 'Bradshaw', 'Proident aute incididunt occaecat consequat ad occaecat Lorem eiusmod fugiat minim fugiat labore fugiat. Minim pariatur excepteur tempor non.', 100, 'Quordate', 6, '1989-06-26'),
(85, 'Lynn', 'Consectetur veniam reprehenderit dolor et ea ex elit veniam in esse consequat commodo sint. Dolor pariatur pariatur qui veniam proident velit non velit voluptate excepteur.', 200, 'Gazak', 4, '1994-03-28'),
(86, 'Zamora', 'Eu adipisicing duis laboris magna commodo. Irure officia anim in culpa irure sint esse dolor irure non.', 300, 'Sultraxin', 9, '1993-02-23'),
(87, 'Weber', 'Mollit qui ad nisi cupidatat esse exercitation adipisicing nostrud do. Excepteur enim anim labore veniam irure aliqua excepteur ipsum ad sint irure.', 300, 'Niquent', 7, '1994-10-02'),
(88, 'Hensley', 'Enim officia consequat deserunt do in sit occaecat dolor adipisicing aliqua voluptate Lorem. Cupidatat voluptate elit ex velit enim ullamco enim dolore consectetur.', 200, 'Geekol', 7, '1993-05-27'),
(89, 'Jackson', 'Do elit do eu fugiat ea cupidatat incididunt proident esse excepteur eiusmod. Proident deserunt exercitation consectetur magna officia magna in nisi.', 200, 'Fuelworks', 3, '1994-09-30'),
(90, 'Mcdonald', 'In ut cillum qui irure laborum quis tempor sit reprehenderit. Mollit nulla ex quis id ullamco minim veniam ut fugiat Lorem.', 300, 'Memora', 8, '1989-07-03'),
(91, 'Petersen', 'Labore reprehenderit aliquip qui ex fugiat. Commodo veniam commodo consectetur tempor occaecat.', 100, 'Cujo', 2, '1988-09-14'),
(92, 'Perkins', 'Velit ipsum quis anim id est esse dolore. Consectetur mollit ex ut exercitation laborum eiusmod.', 200, 'Zoid', 10, '1988-05-17'),
(93, 'Richards', 'Anim velit laborum ad veniam cillum Lorem cupidatat culpa ex. Eiusmod in voluptate mollit est aliquip labore ex ullamco exercitation anim ad id.', 300, 'Melbacor', 10, '1991-02-26'),
(94, 'Tanner', 'Minim non non consectetur laborum ullamco non. Cupidatat ut reprehenderit aliquip ex ea nisi sunt magna veniam ut in ea sit ipsum.', 200, 'Dogspa', 8, '1991-03-06'),
(95, 'Rosa', 'Ad magna reprehenderit nulla ipsum mollit velit anim consequat ullamco occaecat amet proident voluptate. Dolor adipisicing irure et labore enim occaecat nisi ipsum adipisicing qui adipisicing irure anim occaecat.', 200, 'Greeker', 7, '1994-12-25'),
(96, 'House', 'Deserunt magna incididunt aliqua cupidatat. Cillum magna irure adipisicing mollit nostrud irure officia proident occaecat tempor sunt incididunt nulla.', 300, 'Gynk', 5, '1988-07-01'),
(97, 'Le', 'Voluptate ullamco adipisicing proident sit esse dolor nostrud laboris eu laboris adipisicing in. Labore consequat sint fugiat consequat ut consequat.', 300, 'Geofarm', 5, '1993-12-10'),
(98, 'Leach', 'Non sit consequat dolor exercitation velit nulla est velit elit velit magna enim proident. Cillum cupidatat consectetur irure proident cupidatat.', 300, 'Biotica', 6, '1989-01-17'),
(99, 'Morin', 'Velit dolor esse laborum occaecat laborum labore minim tempor in commodo voluptate aliquip. Sint exercitation in eiusmod voluptate laboris voluptate.', 100, 'Toyletry', 10, '1991-09-17'),
(100, 'Farley', 'Ipsum est incididunt amet cillum qui dolore consectetur id aute nisi adipisicing sit ex. In ut Lorem quis tempor sunt id do cillum cillum.', 200, 'Vinch', 3, '1992-04-06'),
(101, 'Copeland', 'Eu ex minim tempor enim sint incididunt voluptate. Aute nostrud minim incididunt labore cupidatat nostrud tempor ad proident enim aliquip fugiat ut.', 300, 'Affluex', 4, '1990-04-02'),
(102, 'Jimenez', 'Reprehenderit velit sit nulla nisi nulla ex enim aliquip occaecat. Aliqua elit tempor voluptate ea Lorem nulla ex exercitation fugiat exercitation ad mollit minim.', 100, 'Zillacon', 1, '1990-05-28'),
(103, 'Murphy', 'Consectetur quis occaecat consequat officia. Ex consectetur mollit do laboris sint.', 300, 'Prosely', 1, '1992-07-09'),
(104, 'Barnes', 'Ad elit minim officia Lorem qui non exercitation pariatur laboris. Consectetur dolore enim qui non id excepteur velit.', 100, 'Xyqag', 1, '1990-11-25'),
(105, 'Everett', 'Cupidatat do consequat voluptate Lorem. Ea aliqua non laborum minim et incididunt ad et dolor voluptate consectetur.', 300, 'Kyagoro', 1, '1992-04-30'),
(106, 'Drake', 'Enim anim deserunt tempor duis ad excepteur anim Lorem incididunt. Ut consequat duis cupidatat incididunt consequat consequat qui.', 100, 'Namebox', 8, '1993-09-11'),
(107, 'Conley', 'Reprehenderit officia ut nisi pariatur sunt cillum incididunt nulla. Veniam ut nulla do exercitation dolor eiusmod anim in labore esse.', 200, 'Emoltra', 10, '1989-12-07'),
(108, 'Rowe', 'Laborum amet excepteur duis ut velit mollit enim et. Esse cupidatat sunt labore qui est do reprehenderit dolore ipsum exercitation.', 200, 'Sensate', 10, '1994-07-24'),
(109, 'Hardin', 'Aute reprehenderit mollit deserunt aute mollit do enim officia proident. Ea Lorem veniam sint velit magna pariatur esse sint esse ipsum veniam non aliqua.', 100, 'Gaptec', 1, '1991-11-11'),
(110, 'Cardenas', 'Do do adipisicing velit est ad culpa laboris esse ex voluptate irure sunt. Deserunt officia sunt nisi cillum commodo.', 100, 'Unq', 6, '1990-01-11'),
(111, 'Sharp', 'Consectetur eu reprehenderit ullamco irure minim aliquip proident est exercitation nisi dolore non minim. Sit ullamco aute duis cupidatat anim dolor fugiat esse do esse.', 200, 'Enersol', 10, '1989-01-04'),
(112, 'Humphrey', 'Est velit cillum ullamco consectetur cupidatat cillum aute ipsum consectetur aute. Ullamco sunt velit pariatur labore.', 100, 'Zanity', 5, '1991-04-15'),
(113, 'Yates', 'Cillum cupidatat occaecat aliqua aliqua ipsum nulla non voluptate sint voluptate ex qui ad. Culpa reprehenderit commodo incididunt labore commodo non veniam excepteur.', 300, 'Zork', 10, '1992-03-22'),
(114, 'Cooper', 'Non eu est incididunt amet reprehenderit elit. Mollit pariatur elit ea tempor reprehenderit esse enim est nulla amet enim non culpa nulla.', 200, 'Comvex', 6, '1989-09-02'),
(115, 'Sheppard', 'Sint proident sit reprehenderit laborum veniam reprehenderit. Qui sit laboris mollit minim laborum dolore duis.', 100, 'Twiist', 1, '1989-07-31'),
(116, 'Battle', 'Officia ipsum commodo nostrud amet occaecat qui anim labore reprehenderit enim cupidatat sint enim ea. Minim est voluptate nulla ex consectetur veniam.', 300, 'Pharmacon', 2, '1991-05-06'),
(117, 'Morton', 'Incididunt magna ullamco velit et laboris quis. Sint elit consequat ullamco fugiat adipisicing.', 200, 'Techmania', 7, '1989-10-02'),
(118, 'Pruitt', 'Culpa laboris aute minim sunt aliqua fugiat proident id ad voluptate in consectetur. Consequat consequat proident excepteur labore do tempor.', 300, 'Acruex', 2, '1993-01-03'),
(119, 'Baldwin', 'Amet culpa ullamco ut cillum occaecat aliquip veniam non laboris irure aliquip excepteur cupidatat labore. Exercitation do dolore cillum eu reprehenderit ea labore cillum.', 200, 'Krag', 6, '1988-02-12'),
(120, 'Puckett', 'Laboris dolor est sit mollit esse. Do est duis ex eu Lorem occaecat exercitation eu dolore aliqua qui.', 300, 'Furnitech', 8, '1989-08-14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(31) NOT NULL,
  `name` varchar(63) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `token` text NOT NULL,
  `cart` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `token`, `cart`) VALUES
(8, 'behnam', 'aass@aass.com', '$2b$10$F6N5JJf07F3voBHeATrD/.W3jlC08AEdM4QWfk.otAwQ6swCQBCV.', '-', '[]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(63) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(31) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
