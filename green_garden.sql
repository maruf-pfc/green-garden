-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 10, 2024 at 07:58 PM
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
-- Database: `green_garden`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`user_id`, `username`, `password`) VALUES
(1, 'admin', 'admin123'),
(2, 'rokon', 'rokon');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Fruit Trees'),
(2, 'Flowering Trees'),
(3, 'Vegetable Plants'),
(4, 'Medicinal Plants'),
(5, 'Ornamental Trees'),
(6, 'Indoor Plants'),
(7, 'Herb Plants'),
(8, 'Bamboo Plants'),
(9, 'Shade Trees'),
(10, 'Bonsai Trees'),
(11, 'Palm Trees'),
(12, 'Climbing Plants'),
(13, 'Aquatic Plants'),
(14, 'Cactus & Succulents'),
(15, 'Garden Flowers');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category_id`, `price`, `image_url`, `description`) VALUES
(1, 'Mango Tree (Amrapali)', 1, 450.00, 'https://5.imimg.com/data5/SELLER/Default/2023/9/345703358/LN/YL/XI/36981854/amrapali-mango-plant.jpg', 'Dwarf variety, fruits within 2-3 years. Sweet taste.'),
(2, 'Guava Tree (Thai)', 1, 350.00, 'https://images.meesho.com/images/products/182819891/ttsa6_512.webp', 'Large fruits with pink flesh. Disease resistant.'),
(3, 'Lemon Tree (Kagoji)', 1, 250.00, 'https://www.newnessplant.com/uploads/115a74a3d6de1ad51dd245abbe99a71e.jpeg', 'Year-round fruiting. Perfect for home gardens.'),
(4, 'Jackfruit Tree', 1, 400.00, 'https://m.media-amazon.com/images/I/61eE-1D1jrL._AC_UF1000,1000_QL80_.jpg', 'High-yielding variety suitable for Bangladesh climate.'),
(5, 'Dragon Fruit Plant', 1, 300.00, 'https://www.planetnatural.com/wp-content/uploads/2023/07/Dragon-fruit-plantation.jpg', 'Easy to grow climbing cactus with nutritious fruits.'),
(6, 'Krishnachura', 2, 350.00, 'https://media.istockphoto.com/id/2164871846/photo/flambuoyant-tree-flame-of-the-forest-peacock-flower.jpg?s=612x612&w=0&k=20&c=PxmVy-Dbf1ztG7aelSQDiT0raqcKgqqWMbwsMOtKfk4=', 'Royal Poinciana with vibrant red flowers.'),
(7, 'Radhachura', 2, 300.00, 'https://m.media-amazon.com/images/I/61PhZjElnGL.jpg', 'Yellow flowering tree, perfect for gardens.'),
(8, 'Jarul', 2, 280.00, 'https://seedsandall.co.za/wp-content/uploads/2023/07/Lagerstroemia-speciosa5.jpg', 'Purple flowers blooming in summer.'),
(9, 'Bokul', 2, 320.00, 'https://greenparadiselive.com/cdn/shop/files/bakul_tree.png?v=1729416006&width=1920', 'Fragrant white flowers, traditional Bengali tree.'),
(10, 'Shimul', 2, 400.00, 'https://cdn.pixabay.com/photo/2017/02/19/12/34/flower-2079618_1280.jpg', 'Red cotton tree with spectacular blooms.'),
(11, 'Tomato Plant', 3, 120.00, 'https://images.unsplash.com/photo-1592841200221-a6898f307baa', 'High-yielding hybrid variety.'),
(12, 'Brinjal Plant', 3, 100.00, 'https://m.media-amazon.com/images/I/51Af6K-jwWL._AC_UF1000,1000_QL80_.jpg', 'Long purple variety, disease resistant.'),
(13, 'Chili Plant', 3, 150.00, 'https://chilicraze.com/img/how-to-grow/koreanchili.jpg', 'Hot variety suitable for local climate.'),
(14, 'Lady Finger Plant', 3, 130.00, 'https://organicbazar.net/cdn/shop/files/UntreatedOkra.jpg?v=1721299752', 'Early fruiting okra variety.'),
(15, 'Bitter Gourd', 3, 140.00, 'https://i.ytimg.com/vi/_pVBsSN26-Y/maxresdefault.jpg', 'Nutritious climbing vegetable.'),
(16, 'Neem Tree', 4, 280.00, 'https://rootwoot.com/wp-content/uploads/2018/10/9.png', 'Traditional medicinal tree with multiple benefits.'),
(17, 'Tulsi Plant', 4, 150.00, 'https://ommrudraksha.com/images/thumbs/0003269_Tulsi%20leaves%20or%20a%20Tulsi%20plant%20in%20a%20pot,%20symbolizing%20growth%20and%20harmony_950.png', 'Holy basil with medicinal properties.'),
(18, 'Aloe Vera', 4, 200.00, 'https://plantify.co.za/cdn/shop/products/aloevera1200x1200.jpg?v=1620828484&width=1080', 'Healing plant good for skin care.'),
(19, 'Ashwagandha', 4, 250.00, 'https://kalamundaplants.com.au/wp-content/uploads/2022/03/Ashwagandha-1.jpeg', 'Ayurvedic medicinal herb.'),
(20, 'Stevia Plant', 4, 180.00, 'https://m.media-amazon.com/images/I/61zRD9ciSUL._AC_UF1000,1000_QL80_.jpg', 'Natural sweetener plant.'),
(21, 'Areca Palm', 5, 450.00, 'https://m.media-amazon.com/images/I/71E4WiewW1L._AC_UF1000,1000_QL80_.jpg', 'Popular indoor and outdoor decorative palm.'),
(22, 'Ficus Benjamin', 5, 400.00, 'https://www.thetutuguru.com.au/wp-content/uploads/2023/05/Ficus-benjamina-variegata-Starlight-Weeping-Fig.jpg', 'Elegant weeping fig tree.'),
(23, 'Bottle Palm', 5, 500.00, 'https://www.toothmountainnursery.com/wp-content/uploads/2020/02/bottle-palm.jpg', 'Unique shaped ornamental palm.'),
(24, 'Cyprus Tree', 5, 350.00, 'https://cdn.shopify.com/s/files/1/0555/8363/7660/files/images_-_2022-03-19T134435.486.jpg?v=1647677712', 'Tall evergreen ornamental tree.'),
(25, 'Rubber Plant', 5, 300.00, 'https://m.media-amazon.com/images/I/619nE7KdJoL._AC_UF1000,1000_QL80_.jpg', 'Large leaves with glossy finish.'),
(26, 'Money Plant', 6, 200.00, 'https://admin.thegreenyard.in/uploads/product_images/648506264-Hanging-Money-Plant_Large.jpg', 'Easy to grow vine with heart-shaped leaves.'),
(27, 'Snake Plant', 6, 250.00, 'https://cdn.mos.cms.futurecdn.net/pNug7bBksRVsL54EEE5Wu9.jpg', 'Air purifying plant with striking appearance.'),
(28, 'Peace Lily', 6, 300.00, 'https://www.mydomaine.com/thmb/N3StDx3PyGbF0Pwafv-P9-qiNZU=/900x0/filters:no_upscale():strip_icc()/1566417254329_20190821-1566417255317-b9314f1d9f7a4668a466c5ffb1913a8f.jpg', 'Beautiful white flowers, low maintenance.'),
(29, 'Spider Plant', 6, 180.00, 'https://www.gardenia.net/wp-content/uploads/2024/04/shutterstock_370927343.jpg', 'Hanging plant with air cleaning properties.'),
(30, 'ZZ Plant', 6, 280.00, 'https://planthouse.us/cdn/shop/files/ZZplant-2.jpg?v=1715492132', 'Low light tolerant indoor plant.'),
(31, 'Mint Plant', 7, 120.00, 'https://decormatters-blog-uploads.s3.amazonaws.com/eleanor_chen_Iyt_U_Vi_Sv3_GQ_unsplash_b7056964fc.jpg', 'Fresh aromatic mint for cooking and beverages.'),
(32, 'Coriander Plant', 7, 100.00, 'https://www.greenie.ae/cdn/shop/files/coriander_1.jpg?v=1684842866', 'Essential herb for Bengali cuisine.'),
(33, 'Basil Plant', 7, 150.00, 'https://www.marthastewart.com/thmb/w1f38EKcAYkVTe2JjqIccB7qOeY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/ms-how-to-grow-basil-69c2254cf454424fbc55992cc8155dbe.jpg', 'Sweet basil variety for cooking.'),
(34, 'Lemongrass', 7, 180.00, 'https://www.mygardenbd.com/wp-content/uploads/2022/01/Lemongrass-2sq.jpg', 'Aromatic herb for tea and cooking.'),
(35, 'Bay Leaf Plant', 7, 200.00, 'https://www.marthastewart.com/thmb/6qjghGNStEq6c8f-NO9zJgAVshk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/caring-for-bay-leaf-plant-indoor-getty-0323-2000-f5107d9df7084446bfd6d50187edeb73.jpg', 'Traditional cooking herb tree.'),
(36, 'Golden Bamboo', 8, 400.00, 'https://www.thespruce.com/thmb/DQ-jv9DxkNUT3sduOu-FkM7a_V0=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/how-to-grow-golden-bamboo-5077107-01-667ff5f2e49c49928ab91724728b498a.jpg', 'Fast-growing yellow-stemmed bamboo.'),
(37, 'Buddha Belly Bamboo', 8, 450.00, 'https://m.media-amazon.com/images/I/51zk5sY+W8L._AC_UF1000,1000_QL80_.jpg', 'Unique knotted stem pattern.'),
(38, 'Black Bamboo', 8, 500.00, 'https://cdn.mos.cms.futurecdn.net/DD4nByD3Yoq4qL5qcAD4Pn-1200-80.jpg', 'Striking dark stems, excellent for screening.'),
(39, 'Dwarf Green Bamboo', 8, 350.00, 'https://4.imimg.com/data4/ET/PA/ANDROID-15330654/product.jpeg', 'Perfect for containers and small gardens.'),
(40, 'Giant Bamboo', 8, 480.00, 'https://static1.squarespace.com/static/5e5cd082c50ea102c52e5bb0/5e5cd926bcd48e5c8c71851d/6148d04f08ebf4165402dda4/1661047027935/dendrocalamus-sinicus-17.jpg?format=1500w', 'Tall variety for privacy screens.'),
(41, 'Mahogany Tree', 9, 450.00, 'https://m.media-amazon.com/images/I/91b459BlifL._AC_UF1000,1000_QL80_.jpg', 'Large shade tree with valuable timber.'),
(42, 'Rain Tree', 9, 400.00, 'https://5.imimg.com/data5/SELLER/Default/2023/6/315683551/RJ/TF/TE/24841635/rain-tree-plant.jpg', 'Wide-spreading canopy for maximum shade.'),
(43, 'Banyan Tree', 9, 500.00, 'https://m.media-amazon.com/images/I/71BZ6qgUCiL._AC_UF1000,1000_QL80_.jpg', 'Traditional shade tree with aerial roots.'),
(44, 'Debdaru Tree', 9, 380.00, 'https://images.meesho.com/images/products/294291142/axdex_512.webp', 'Evergreen tree with dense shade.'),
(45, 'Amaltas Tree', 9, 420.00, 'https://m.media-amazon.com/images/I/718I2Fo3nHL._AC_UF350,350_QL80_.jpg', 'Golden shower tree with beautiful flowers.'),
(46, 'Ficus Bonsai', 10, 480.00, 'https://www.bonsaiempire.com/images/carrousel/ficus01-retusa-small.jpg', 'Indoor bonsai with small leaves.'),
(47, 'Mango Bonsai', 10, 500.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2qnkzAUqjrJhCbrx74cEkFJzhToKL2jdCXw&s', 'Fruit-bearing miniature tree.'),
(48, 'Bougainvillea Bonsai', 10, 450.00, 'https://www.bonsaiempire.com/images/carrousel/bougainvillea01-purple-flowers.jpg', 'Flowering bonsai with vibrant colors.'),
(49, 'Kamini Bonsai', 10, 400.00, 'https://i.ytimg.com/vi/m4lxzrd3CIQ/maxresdefault.jpg', 'Fragrant flowering bonsai.'),
(50, 'Jade Bonsai', 10, 350.00, 'https://5.imimg.com/data5/ANDROID/Default/2023/10/353766095/UQ/DX/DS/68815117/product-jpeg-500x500.jpg', 'Easy to maintain succulent bonsai.'),
(51, 'Date Palm', 11, 500.00, 'https://static.wixstatic.com/media/11062b_f4d4a06ff93a4b6f9747bbeaffe5775f~mv2.jpeg/v1/crop/x_181,y_95,w_2574,h_1858/fill/w_640,h_462,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/Date%20Palms.jpeg', 'Fruit-bearing palm tree.'),
(52, 'Royal Palm', 11, 450.00, 'https://5.imimg.com/data5/SELLER/Default/2022/3/JE/ET/ZW/82187425/roystonea-royal-palm-tree-500x500.jpg', 'Majestic tall palm for avenues.'),
(53, 'Coconut Palm', 11, 400.00, 'https://i.etsystatic.com/23697056/r/il/27443e/4459864417/il_1080xN.4459864417_ktr4.jpg', 'Traditional fruit-bearing palm.'),
(54, 'Foxtail Palm', 11, 480.00, 'https://naplesgardenlandscaping.com/wp-content/uploads/2023/11/foxtail-Palm-Triple.jpg', 'Elegant landscaping palm.'),
(55, 'Rattan Palm', 11, 350.00, 'https://images.squarespace-cdn.com/content/v1/544591e6e4b0135285aeb5b6/1538508997839-K5WQQQ8SYNBOOWYMBOMH/Calamus_gibbsianus.jpg', 'Climbing palm species.'),
(56, 'Madhabilata', 12, 200.00, 'https://i.ytimg.com/vi/EB-SBbR97do/maxresdefault.jpg', 'Fragrant flowering vine.'),
(57, 'Morning Glory', 12, 150.00, 'https://botsocscot.wordpress.com/wp-content/uploads/2023/12/screenshot-2023-12-29-at-14.59.19.png?w=754', 'Fast-growing with blue flowers.'),
(58, 'Bougainvillea Vine', 12, 250.00, 'https://gardenerspath.com/wp-content/uploads/2022/09/How-to-Grow-Bougainvillea-Feature.jpg', 'Colorful climbing plant.'),
(59, 'Jasmine Climber', 12, 180.00, 'https://hips.hearstapps.com/hmg-prod/images/star-jasmine-in-the-rain-royalty-free-image-1720728061.jpg?crop=0.88847xw:1xh;center,top&resize=1200:*', 'Sweet-scented white flowers.'),
(60, 'Money Plant XL', 12, 220.00, 'https://growurban.uk/cdn/shop/products/pilea-peperomioides-xl-hangpot-705389.jpg?v=1694221944&width=2048', 'Large variety of pothos.'),
(61, 'Lotus Plant', 13, 300.00, 'https://cff2.earth.com/uploads/2022/09/12074246/lotus-2.jpg', 'Sacred flower for water gardens.'),
(62, 'Water Lily', 13, 250.00, 'https://www.planetnatural.com/wp-content/uploads/2024/06/Water-Lily.jpg', 'Decorative pond plant.'),
(63, 'Hyacinth', 13, 150.00, 'https://dutch-bulbs.com/media/catalog/category/hyacinths_1_1.jpg', 'Floating water plant.'),
(64, 'Reed Plant', 13, 200.00, 'https://www.semsgarden.com/blog/wp-content/uploads/2021/12/reed-1.jpg', 'Tall water edge plant.'),
(65, 'Marsh Marigold', 13, 180.00, 'https://www.pondplants.co.uk/wp-content/uploads/2017/12/Caltha_palustris_marsh-marigold_Marginal_Merebrook_pondplants.jpg', 'Yellow flowering water plant.'),
(66, 'Barrel Cactus', 14, 250.00, 'https://upload.wikimedia.org/wikipedia/commons/0/0d/Echinocactus_grusonii_1.jpg', 'Round shaped desert cactus.'),
(67, 'Jade Plant', 14, 200.00, 'https://gardengoodsdirect.com/cdn/shop/files/mini-leaf-jade-plants-29150187651114.jpg?v=1695415921', 'Lucky plant succulent.'),
(68, 'Aloe Vera Large', 14, 180.00, 'https://planetdesert.com/cdn/shop/files/Aloe-Vera-5-Gallon_10_1080x.jpg?v=1692177349', 'Medicinal succulent plant.'),
(69, 'Snake Cactus', 14, 220.00, 'https://i.pinimg.com/originals/91/35/e2/9135e2d3255b6aea0a9893fe96d90267.jpg', 'Tall growing cactus variety.'),
(70, 'Zebra Plant', 14, 150.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7O-OBb0TgZmR_IpCyzCG_srk8uGtCbaA__Q&s', 'Striped pattern succulent.'),
(71, 'Rose Plant', 15, 200.00, 'https://mygreenleaf.ae/wp-content/uploads/2024/01/rose-pink.jpg', 'Hybrid tea rose variety.'),
(72, 'Marigold', 15, 120.00, 'https://gardenseason.com/wp-content/uploads/2020/07/Marigold-seedlings-in-small-pots-in-the-garden-_-marigold-flowers-_-ss-_-featured.jpg', 'Yellow-orange flowering plant.'),
(73, 'Dahlia', 15, 180.00, 'https://media.greg.app/Y2FyZS1wbGFudC1wcm9maWxlL3VzZXJzLzQ0NDE5OC9wbGFudC1waG90b3MvMjA3NzMxNy8xNzAwNjA1NTk1MjIxLTIwMjMtMTEtMjItMDktMjYtMzItNTIxLmpwZw==?auto=webp&width=860&fit=cover&format=pjpg&height=860&optimize=medium&precrop=860:860,smart', 'Multiple color varieties available.'),
(74, 'Hibiscus', 15, 250.00, 'https://nurserylive.com/cdn/shop/products/nurserylive-g-hibiscus-gudhal-flower-red-plant-213118_420x.jpg?v=1679750250', 'Large flowering shrub.'),
(75, 'Jasmine', 15, 150.00, 'https://5.imimg.com/data5/SELLER/Default/2024/6/430667139/ZB/XB/NO/24642325/jasmine-flower-plant.png', 'Fragrant white flowering plant.'),
(76, 'Litchi', 1, 450.00, 'https://shrigramorganics.com/wp-content/uploads/2020/06/gardens-lychee-litchi-lichi-fruit-tree-plant-for-landscaping-1-original-imafrf4kpyfaya57.jpeg', 'A tall evergreen tree, it bears small fleshy sweet fruits.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
