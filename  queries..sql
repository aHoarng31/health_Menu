-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 05, 2022 at 08:11 PM
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
-- Database: `menu`
--

-- --------------------------------------------------------

--
-- Table structure for table `MEALS`
--

CREATE TABLE `MEALS` (
  `Name` varchar(64) NOT NULL,
  `MEAL_TYPE` varchar(64) DEFAULT 'None',
  `RE_ID` int(11) NOT NULL,
  `BUGET` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `MEALS`
--

INSERT INTO `MEALS` (`Name`, `MEAL_TYPE`, `RE_ID`, `BUGET`) VALUES
('Air-Fryer Apples', 'Dessert ', 9, 15),
('All American Meatloaf', 'Carnivor', 1, 25),
('Baked Garlicky Salmon Balls', 'Snack', 3, 20),
('Bean Burrito ', 'Mexican Food', 12, 10),
('Carrot Muffin ', 'Dessert ', 13, 6),
('Chicken Chili Verde', 'Carnivor ', 7, 25),
('Chocolate Chip Cookies', 'Dessert ', 14, 8),
('Cucumber Sandwiches', 'Vegetarin', 4, 5),
('Lemon Ricotta Pancakes', 'Pastry', 6, 15),
('Portobello Mushroom Pizzas with Arugula Salad', 'Mediterranean', 2, 15),
('Potato Salad', 'None', 11, 3),
('Speedy Chicken Stir-Fry', 'Low-Protein', 5, 15),
('Stuffed Cabbage Soup', 'High-Protein', 8, 25),
('Super-Seed Snack Bars', 'Dessert', 10, 20);

-- --------------------------------------------------------

--
-- Table structure for table `NUTRITION`
--

CREATE TABLE `NUTRITION` (
  `MEAL_NAME` varchar(256) NOT NULL,
  `CALORES` int(11) NOT NULL,
  `FAT` int(11) NOT NULL,
  `PROTEIN` int(11) NOT NULL,
  `CARBOHYDRATES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `NUTRITION`
--

INSERT INTO `NUTRITION` (`MEAL_NAME`, `CALORES`, `FAT`, `PROTEIN`, `CARBOHYDRATES`) VALUES
('Air-Fryer Apples', 181, 3, 1, 39),
('All American Meatloaf', 205, 9, 17, 14),
('Baked Garlicky Salmon Balls', 138, 5, 19, 4),
('Bean Burrito ', 190, 16, 20, 120),
('Carrot Muffin ', 250, 2, 10, 180),
('Chicken Chili Verde', 408, 14, 32, 41),
('Chocolate Chip Cookies', 180, 6, 5, 180),
('Cucumber Sandwiches', 253, 13, 5, 29),
('Lemon Ricotta Pancakes', 281, 10, 13, 34),
('Portobello Mushroom Pizzas with Arugula Salad', 264, 13, 14, 25),
('Potato Salad', 200, 4, 15, 90),
('Speedy Chicken Stir-Fry', 279, 6, 17, 38),
('Stuffed Cabbage Soup', 300, 17, 20, 18),
('Super-Seed Snack Bars', 110, 9, 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `RECIPES`
--

CREATE TABLE `RECIPES` (
  `INGREDIENTS` varchar(256) NOT NULL,
  `TIME_TO_MAKE` varchar(256) NOT NULL,
  `ID` int(11) NOT NULL,
  `DIFFICULTY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `RECIPES`
--

INSERT INTO `RECIPES` (`INGREDIENTS`, `TIME_TO_MAKE`, `ID`, `DIFFICULTY`) VALUES
('onion,unsalted tops, groud beef, egg,low-fat milk,black pepper, catsup, brown sugar, apple cider vinegar', '00:00:35', 1, 3),
('portobello mushroom caps,spinach,tomato sauce,ground pepper,part-skim mozzarella cheese,baby arugula,basil leaves', '00:00:30', 2, 1),
('skinless salmon,Italian breadcrumbs,scallion,egg, low-fat plain strained yogurt,minced garlic', '00:00:15', 3, 3),
('cucumber,cream cheese,mayonnaise,Italian salad dressing mix,wheat bread,dried dill weed', '00:00:10', 4, 1),
('skinless chicken breast,honey,vinegar,pineapple juice,reduced-sodium soy sauce,cornstarch,cooked rice,mixed vegetables,oil', '00:00:25', 5, 3),
('flour, granulated sugar,baking powder, salt,part-skim ricotta cheese, buttermilk,eggs, oil,vanilla extract, grated lemon zest,lemon juicce,syrup', '00:00:25', 6, 2),
('beans,oil,boneless chicken thighs,onion,poblano peppers,galic,chicken stock,salsa verde, corn kernels,spinach,cilantro,sour cream,salt', '00:00:35', 7, 4),
('cabbage,onion,celery,carrots,sugar,pepper,chicken broth, brown rice, smoked paprika', '00:00:55', 8, 4),
('maple syrup,orange zest,oil,vanilla extract,cinnamon,apples', '00:00:20', 9, 2),
('honey,tahini,vanilla extract,salt,coconut,pepitas,sunflower seeds,chia seeds,hemp seeds', '01:11:00', 10, 5),
('hard boiled eggs, yukon gold potatoes, buttermilk, mayonnaise, yellow mustard, red onions', '00:08:00', 11, 1),
('warm refried beans, real cheddar cheese, diced onions, and red sauce', '00:14:00', 12, 1),
('sweet carrots, crunchy walnuts, chewy coconut, cinnamon, and nutmeg', '00:48:00', 13, 3),
('vegan butter, light brown sugar, packed. granulated sugar, plant-based milk, vanilla extract, all-purpose flour, baking soda, salt.', '00:45:00', 14, 3);

-- --------------------------------------------------------

--
-- Table structure for table `VEGETARIAN_LIST`
--

CREATE TABLE `VEGETARIAN_LIST` (
  `VEG_MEAL_NAME` varchar(64) NOT NULL,
  `VEG_RE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `VEGETARIAN_LIST`
--

INSERT INTO `VEGETARIAN_LIST` (`VEG_MEAL_NAME`, `VEG_RE_ID`) VALUES
('Portobello Mushroom Pizzas with Arugula Salad', 2),
('Cucumber Sandwiches', 4),
('Lemon Ricotta Pancakes', 6),
('Stuffed Cabbage Soup', 8),
('Air-Fryer Apples', 9),
('Super-Seed Snack Bars', 10),
('Potato Salad', 11),
('Bean Burrito ', 12),
('Carrot Muffin ', 13),
('Chocolate Chip Cookies', 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `MEALS`
--
ALTER TABLE `MEALS`
  ADD PRIMARY KEY (`Name`),
  ADD UNIQUE KEY `RE_ID` (`RE_ID`);

--
-- Indexes for table `NUTRITION`
--
ALTER TABLE `NUTRITION`
  ADD PRIMARY KEY (`MEAL_NAME`);

--
-- Indexes for table `RECIPES`
--
ALTER TABLE `RECIPES`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `VEGETARIAN_LIST`
--
ALTER TABLE `VEGETARIAN_LIST`
  ADD UNIQUE KEY `VEG_MEAL_NAME` (`VEG_MEAL_NAME`),
  ADD UNIQUE KEY `VEG_RE_ID` (`VEG_RE_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `MEALS`
--
ALTER TABLE `MEALS`
  ADD CONSTRAINT `MEAL_REF` FOREIGN KEY (`RE_ID`) REFERENCES `RECIPES` (`ID`);

--
-- Constraints for table `NUTRITION`
--
ALTER TABLE `NUTRITION`
  ADD CONSTRAINT `NUTRITION_REF` FOREIGN KEY (`MEAL_NAME`) REFERENCES `MEALS` (`Name`);

--
-- Constraints for table `VEGETARIAN_LIST`
--
ALTER TABLE `VEGETARIAN_LIST`
  ADD CONSTRAINT `V_M_REF` FOREIGN KEY (`VEG_MEAL_NAME`) REFERENCES `MEALS` (`Name`),
  ADD CONSTRAINT `V_RE_REF` FOREIGN KEY (`VEG_RE_ID`) REFERENCES `RECIPES` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
