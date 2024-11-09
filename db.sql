-- Create database
CREATE DATABASE green_garden;

-- Create admin_users table
CREATE TABLE admin_users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Insert a sample admin user
INSERT INTO admin_users (username, password) VALUES ('admin', 'admin123');

-- Create categories table
CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

-- Create products table
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    category_id INT,
    price DECIMAL(10, 2),
    image_url VARCHAR(255),
    description TEXT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- First, insert all categories
INSERT INTO categories (category_name) VALUES
('Fruit Trees'),
('Flowering Trees'),
('Vegetable Plants'),
('Medicinal Plants'),
('Ornamental Trees'),
('Indoor Plants'),
('Herb Plants'),
('Bamboo Plants'),
('Shade Trees'),
('Bonsai Trees'),
('Palm Trees'),
('Climbing Plants'),
('Aquatic Plants'),
('Cactus & Succulents'),
('Garden Flowers');

-- Now you can run the product insertions
-- Fruit Trees
INSERT INTO products (product_name, category_id, price, image_url, description) VALUES
('Mango Tree (Amrapali)', 1, 450.00, 'images/fruits/mango-amrapali.jpg', 'Dwarf variety, fruits within 2-3 years. Sweet taste.'),
('Guava Tree (Thai)', 1, 350.00, 'images/fruits/guava-thai.jpg', 'Large fruits with pink flesh. Disease resistant.'),
('Lemon Tree (Kagoji)', 1, 250.00, 'images/fruits/lemon-kagoji.jpg', 'Year-round fruiting. Perfect for home gardens.'),
('Jackfruit Tree', 1, 400.00, 'images/fruits/jackfruit.jpg', 'High-yielding variety suitable for Bangladesh climate.'),
('Dragon Fruit Plant', 1, 300.00, 'images/fruits/dragon-fruit.jpg', 'Easy to grow climbing cactus with nutritious fruits.');

-- Flowering Trees
INSERT INTO products (product_name, category_id, price, image_url, description) VALUES
('Krishnachura', 2, 350.00, 'images/flowering/krishnachura.jpg', 'Royal Poinciana with vibrant red flowers.'),
('Radhachura', 2, 300.00, 'images/flowering/radhachura.jpg', 'Yellow flowering tree, perfect for gardens.'),
('Jarul', 2, 280.00, 'images/flowering/jarul.jpg', 'Purple flowers blooming in summer.'),
('Bokul', 2, 320.00, 'images/flowering/bokul.jpg', 'Fragrant white flowers, traditional Bengali tree.'),
('Shimul', 2, 400.00, 'images/flowering/shimul.jpg', 'Red cotton tree with spectacular blooms.');

-- Vegetable Plants
INSERT INTO products (product_name, category_id, price, image_url, description) VALUES
('Tomato Plant', 3, 120.00, 'images/vegetables/tomato.jpg', 'High-yielding hybrid variety.'),
('Brinjal Plant', 3, 100.00, 'images/vegetables/brinjal.jpg', 'Long purple variety, disease resistant.'),
('Chili Plant', 3, 150.00, 'images/vegetables/chili.jpg', 'Hot variety suitable for local climate.'),
('Lady Finger Plant', 3, 130.00, 'images/vegetables/ladyfinger.jpg', 'Early fruiting okra variety.'),
('Bitter Gourd', 3, 140.00, 'images/vegetables/bitter-gourd.jpg', 'Nutritious climbing vegetable.');

-- Medicinal Plants
INSERT INTO products (product_name, category_id, price, image_url, description) VALUES
('Neem Tree', 4, 280.00, 'images/medicinal/neem.jpg', 'Traditional medicinal tree with multiple benefits.'),
('Tulsi Plant', 4, 150.00, 'images/medicinal/tulsi.jpg', 'Holy basil with medicinal properties.'),
('Aloe Vera', 4, 200.00, 'images/medicinal/aloe-vera.jpg', 'Healing plant good for skin care.'),
('Ashwagandha', 4, 250.00, 'images/medicinal/ashwagandha.jpg', 'Ayurvedic medicinal herb.'),
('Stevia Plant', 4, 180.00, 'images/medicinal/stevia.jpg', 'Natural sweetener plant.');

-- Ornamental Trees
INSERT INTO products (product_name, category_id, price, image_url, description) VALUES
('Areca Palm', 5, 450.00, 'images/ornamental/areca-palm.jpg', 'Popular indoor and outdoor decorative palm.'),
('Ficus Benjamin', 5, 400.00, 'images/ornamental/ficus.jpg', 'Elegant weeping fig tree.'),
('Bottle Palm', 5, 500.00, 'images/ornamental/bottle-palm.jpg', 'Unique shaped ornamental palm.'),
('Cyprus Tree', 5, 350.00, 'images/ornamental/cyprus.jpg', 'Tall evergreen ornamental tree.'),
('Rubber Plant', 5, 300.00, 'images/ornamental/rubber-plant.jpg', 'Large leaves with glossy finish.');

-- Indoor Plants
INSERT INTO products (product_name, category_id, price, image_url, description) VALUES
('Money Plant', 6, 200.00, 'images/indoor/money-plant.jpg', 'Easy to grow vine with heart-shaped leaves.'),
('Snake Plant', 6, 250.00, 'images/indoor/snake-plant.jpg', 'Air purifying plant with striking appearance.'),
('Peace Lily', 6, 300.00, 'images/indoor/peace-lily.jpg', 'Beautiful white flowers, low maintenance.'),
('Spider Plant', 6, 180.00, 'images/indoor/spider-plant.jpg', 'Hanging plant with air cleaning properties.'),
('ZZ Plant', 6, 280.00, 'images/indoor/zz-plant.jpg', 'Low light tolerant indoor plant.');

-- Herb Plants
INSERT INTO products (product_name, category_id, price, image_url, description) VALUES
('Mint Plant', 7, 120.00, 'images/herbs/mint.jpg', 'Fresh aromatic mint for cooking and beverages.'),
('Coriander Plant', 7, 100.00, 'images/herbs/coriander.jpg', 'Essential herb for Bengali cuisine.'),
('Basil Plant', 7, 150.00, 'images/herbs/basil.jpg', 'Sweet basil variety for cooking.'),
('Lemongrass', 7, 180.00, 'images/herbs/lemongrass.jpg', 'Aromatic herb for tea and cooking.'),
('Bay Leaf Plant', 7, 200.00, 'images/herbs/bay-leaf.jpg', 'Traditional cooking herb tree.');

-- Bamboo Plants
INSERT INTO products (product_name, category_id, price, image_url, description) VALUES
('Golden Bamboo', 8, 400.00, 'images/bamboo/golden.jpg', 'Fast-growing yellow-stemmed bamboo.'),
('Buddha Belly Bamboo', 8, 450.00, 'images/bamboo/buddha-belly.jpg', 'Unique knotted stem pattern.'),
('Black Bamboo', 8, 500.00, 'images/bamboo/black.jpg', 'Striking dark stems, excellent for screening.'),
('Dwarf Green Bamboo', 8, 350.00, 'images/bamboo/dwarf-green.jpg', 'Perfect for containers and small gardens.'),
('Giant Bamboo', 8, 480.00, 'images/bamboo/giant.jpg', 'Tall variety for privacy screens.');

-- Shade Trees
INSERT INTO products (product_name, category_id, price, image_url, description) VALUES
('Mahogany Tree', 9, 450.00, 'images/shade/mahogany.jpg', 'Large shade tree with valuable timber.'),
('Rain Tree', 9, 400.00, 'images/shade/rain-tree.jpg', 'Wide-spreading canopy for maximum shade.'),
('Banyan Tree', 9, 500.00, 'images/shade/banyan.jpg', 'Traditional shade tree with aerial roots.'),
('Debdaru Tree', 9, 380.00, 'images/shade/debdaru.jpg', 'Evergreen tree with dense shade.'),
('Amaltas Tree', 9, 420.00, 'images/shade/amaltas.jpg', 'Golden shower tree with beautiful flowers.');

-- Bonsai Trees
INSERT INTO products (product_name, category_id, price, image_url, description) VALUES
('Ficus Bonsai', 10, 480.00, 'images/bonsai/ficus.jpg', 'Indoor bonsai with small leaves.'),
('Mango Bonsai', 10, 500.00, 'images/bonsai/mango.jpg', 'Fruit-bearing miniature tree.'),
('Bougainvillea Bonsai', 10, 450.00, 'images/bonsai/bougainvillea.jpg', 'Flowering bonsai with vibrant colors.'),
('Kamini Bonsai', 10, 400.00, 'images/bonsai/kamini.jpg', 'Fragrant flowering bonsai.'),
('Jade Bonsai', 10, 350.00, 'images/bonsai/jade.jpg', 'Easy to maintain succulent bonsai.');

-- Palm Trees
INSERT INTO products (product_name, category_id, price, image_url, description) VALUES
('Date Palm', 11, 500.00, 'images/palms/date.jpg', 'Fruit-bearing palm tree.'),
('Royal Palm', 11, 450.00, 'images/palms/royal.jpg', 'Majestic tall palm for avenues.'),
('Coconut Palm', 11, 400.00, 'images/palms/coconut.jpg', 'Traditional fruit-bearing palm.'),
('Foxtail Palm', 11, 480.00, 'images/palms/foxtail.jpg', 'Elegant landscaping palm.'),
('Rattan Palm', 11, 350.00, 'images/palms/rattan.jpg', 'Climbing palm species.');

-- Climbing Plants
INSERT INTO products (product_name, category_id, price, image_url, description) VALUES
('Madhabilata', 12, 200.00, 'images/climbing/madhabilata.jpg', 'Fragrant flowering vine.'),
('Morning Glory', 12, 150.00, 'images/climbing/morning-glory.jpg', 'Fast-growing with blue flowers.'),
('Bougainvillea Vine', 12, 250.00, 'images/climbing/bougainvillea-vine.jpg', 'Colorful climbing plant.'),
('Jasmine Climber', 12, 180.00, 'images/climbing/jasmine.jpg', 'Sweet-scented white flowers.'),
('Money Plant XL', 12, 220.00, 'images/climbing/money-plant-xl.jpg', 'Large variety of pothos.');

-- Aquatic Plants
INSERT INTO products (product_name, category_id, price, image_url, description) VALUES
('Lotus Plant', 13, 300.00, 'images/aquatic/lotus.jpg', 'Sacred flower for water gardens.'),
('Water Lily', 13, 250.00, 'images/aquatic/water-lily.jpg', 'Decorative pond plant.'),
('Hyacinth', 13, 150.00, 'images/aquatic/hyacinth.jpg', 'Floating water plant.'),
('Reed Plant', 13, 200.00, 'images/aquatic/reed.jpg', 'Tall water edge plant.'),
('Marsh Marigold', 13, 180.00, 'images/aquatic/marsh-marigold.jpg', 'Yellow flowering water plant.');

-- Cactus & Succulents
INSERT INTO products (product_name, category_id, price, image_url, description) VALUES
('Barrel Cactus', 14, 250.00, 'images/cactus/barrel.jpg', 'Round shaped desert cactus.'),
('Jade Plant', 14, 200.00, 'images/cactus/jade.jpg', 'Lucky plant succulent.'),
('Aloe Vera Large', 14, 180.00, 'images/cactus/aloe-large.jpg', 'Medicinal succulent plant.'),
('Snake Cactus', 14, 220.00, 'images/cactus/snake.jpg', 'Tall growing cactus variety.'),
('Zebra Plant', 14, 150.00, 'images/cactus/zebra.jpg', 'Striped pattern succulent.');

-- Garden Flowers
INSERT INTO products (product_name, category_id, price, image_url, description) VALUES
('Rose Plant', 15, 200.00, 'images/flowers/rose.jpg', 'Hybrid tea rose variety.'),
('Marigold', 15, 120.00, 'images/flowers/marigold.jpg', 'Yellow-orange flowering plant.'),
('Dahlia', 15, 180.00, 'images/flowers/dahlia.jpg', 'Multiple color varieties available.'),
('Hibiscus', 15, 250.00, 'images/flowers/hibiscus.jpg', 'Large flowering shrub.'),
('Jasmine', 15, 150.00, 'images/flowers/jasmine.jpg', 'Fragrant white flowering plant.');

-- 1. Fruit Trees
UPDATE products 
SET image_url = CASE product_name
    WHEN 'Mango Tree (Amrapali)' THEN 'https://5.imimg.com/data5/SELLER/Default/2023/9/345703358/LN/YL/XI/36981854/amrapali-mango-plant.jpg'
    WHEN 'Guava Tree (Thai)' THEN 'https://images.meesho.com/images/products/182819891/ttsa6_512.webp'
    WHEN 'Lemon Tree (Kagoji)' THEN 'https://www.newnessplant.com/uploads/115a74a3d6de1ad51dd245abbe99a71e.jpeg'
    WHEN 'Jackfruit Tree' THEN 'https://m.media-amazon.com/images/I/61eE-1D1jrL._AC_UF1000,1000_QL80_.jpg'
    WHEN 'Dragon Fruit Plant' THEN 'https://www.planetnatural.com/wp-content/uploads/2023/07/Dragon-fruit-plantation.jpg'
END
WHERE category_id = 1;

-- 2. Flowering Trees
UPDATE products 
SET image_url = CASE product_name
    WHEN 'Krishnachura' THEN 'https://media.istockphoto.com/id/2164871846/photo/flambuoyant-tree-flame-of-the-forest-peacock-flower.jpg?s=612x612&w=0&k=20&c=PxmVy-Dbf1ztG7aelSQDiT0raqcKgqqWMbwsMOtKfk4='
    WHEN 'Radhachura' THEN 'https://m.media-amazon.com/images/I/61PhZjElnGL.jpg'
    WHEN 'Jarul' THEN 'https://seedsandall.co.za/wp-content/uploads/2023/07/Lagerstroemia-speciosa5.jpg'
    WHEN 'Bokul' THEN 'https://greenparadiselive.com/cdn/shop/files/bakul_tree.png?v=1729416006&width=1920'
    WHEN 'Shimul' THEN 'https://cdn.pixabay.com/photo/2017/02/19/12/34/flower-2079618_1280.jpg'
END
WHERE category_id = 2;

-- 3. Vegetable Plants
UPDATE products 
SET image_url = CASE product_name
    WHEN 'Tomato Plant' THEN 'https://images.unsplash.com/photo-1592841200221-a6898f307baa'
    WHEN 'Brinjal Plant' THEN 'https://m.media-amazon.com/images/I/51Af6K-jwWL._AC_UF1000,1000_QL80_.jpg'
    WHEN 'Chili Plant' THEN 'https://chilicraze.com/img/how-to-grow/koreanchili.jpg'
    WHEN 'Lady Finger Plant' THEN 'https://organicbazar.net/cdn/shop/files/UntreatedOkra.jpg?v=1721299752'
    WHEN 'Bitter Gourd' THEN 'https://i.ytimg.com/vi/_pVBsSN26-Y/maxresdefault.jpg'
END
WHERE category_id = 3;

-- 4. Medicinal Plants
UPDATE products 
SET image_url = CASE product_name
    WHEN 'Neem Tree' THEN 'https://rootwoot.com/wp-content/uploads/2018/10/9.png'
    WHEN 'Tulsi Plant' THEN 'https://ommrudraksha.com/images/thumbs/0003269_Tulsi%20leaves%20or%20a%20Tulsi%20plant%20in%20a%20pot,%20symbolizing%20growth%20and%20harmony_950.png'
    WHEN 'Aloe Vera' THEN 'https://plantify.co.za/cdn/shop/products/aloevera1200x1200.jpg?v=1620828484&width=1080'
    WHEN 'Ashwagandha' THEN 'https://kalamundaplants.com.au/wp-content/uploads/2022/03/Ashwagandha-1.jpeg'
    WHEN 'Stevia Plant' THEN 'https://m.media-amazon.com/images/I/61zRD9ciSUL._AC_UF1000,1000_QL80_.jpg'
END
WHERE category_id = 4;

-- 5. Ornamental Trees
UPDATE products 
SET image_url = CASE product_name
    WHEN 'Areca Palm' THEN 'https://m.media-amazon.com/images/I/71E4WiewW1L._AC_UF1000,1000_QL80_.jpg'
    WHEN 'Ficus Benjamin' THEN 'https://www.thetutuguru.com.au/wp-content/uploads/2023/05/Ficus-benjamina-variegata-Starlight-Weeping-Fig.jpg'
    WHEN 'Bottle Palm' THEN 'https://www.toothmountainnursery.com/wp-content/uploads/2020/02/bottle-palm.jpg'
    WHEN 'Cyprus Tree' THEN 'https://cdn.shopify.com/s/files/1/0555/8363/7660/files/images_-_2022-03-19T134435.486.jpg?v=1647677712'
    WHEN 'Rubber Plant' THEN 'https://m.media-amazon.com/images/I/619nE7KdJoL._AC_UF1000,1000_QL80_.jpg'
END
WHERE category_id = 5;

-- 6. Indoor Plants
UPDATE products 
SET image_url = CASE product_name
    WHEN 'Money Plant' THEN 'https://admin.thegreenyard.in/uploads/product_images/648506264-Hanging-Money-Plant_Large.jpg'
    WHEN 'Snake Plant' THEN 'https://cdn.mos.cms.futurecdn.net/pNug7bBksRVsL54EEE5Wu9.jpg'
    WHEN 'Peace Lily' THEN 'https://www.mydomaine.com/thmb/N3StDx3PyGbF0Pwafv-P9-qiNZU=/900x0/filters:no_upscale():strip_icc()/1566417254329_20190821-1566417255317-b9314f1d9f7a4668a466c5ffb1913a8f.jpg'
    WHEN 'Spider Plant' THEN 'https://www.gardenia.net/wp-content/uploads/2024/04/shutterstock_370927343.jpg'
    WHEN 'ZZ Plant' THEN 'https://planthouse.us/cdn/shop/files/ZZplant-2.jpg?v=1715492132'
END
WHERE category_id = 6;

-- 7. Herb Plants
UPDATE products 
SET image_url = CASE product_name
    WHEN 'Mint Plant' THEN 'https://decormatters-blog-uploads.s3.amazonaws.com/eleanor_chen_Iyt_U_Vi_Sv3_GQ_unsplash_b7056964fc.jpg'
    WHEN 'Coriander Plant' THEN 'https://www.greenie.ae/cdn/shop/files/coriander_1.jpg?v=1684842866'
    WHEN 'Basil Plant' THEN 'https://www.marthastewart.com/thmb/w1f38EKcAYkVTe2JjqIccB7qOeY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/ms-how-to-grow-basil-69c2254cf454424fbc55992cc8155dbe.jpg'
    WHEN 'Lemongrass' THEN 'https://www.mygardenbd.com/wp-content/uploads/2022/01/Lemongrass-2sq.jpg'
    WHEN 'Bay Leaf Plant' THEN 'https://www.marthastewart.com/thmb/6qjghGNStEq6c8f-NO9zJgAVshk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/caring-for-bay-leaf-plant-indoor-getty-0323-2000-f5107d9df7084446bfd6d50187edeb73.jpg'
END
WHERE category_id = 7;

-- 8. Bamboo Plants
UPDATE products 
SET image_url = CASE product_name
    WHEN 'Golden Bamboo' THEN 'https://www.thespruce.com/thmb/DQ-jv9DxkNUT3sduOu-FkM7a_V0=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/how-to-grow-golden-bamboo-5077107-01-667ff5f2e49c49928ab91724728b498a.jpg'
    WHEN 'Buddha Belly Bamboo' THEN 'https://m.media-amazon.com/images/I/51zk5sY+W8L._AC_UF1000,1000_QL80_.jpg'
    WHEN 'Black Bamboo' THEN 'https://cdn.mos.cms.futurecdn.net/DD4nByD3Yoq4qL5qcAD4Pn-1200-80.jpg'
    WHEN 'Dwarf Green Bamboo' THEN 'https://4.imimg.com/data4/ET/PA/ANDROID-15330654/product.jpeg'
    WHEN 'Giant Bamboo' THEN 'https://static1.squarespace.com/static/5e5cd082c50ea102c52e5bb0/5e5cd926bcd48e5c8c71851d/6148d04f08ebf4165402dda4/1661047027935/dendrocalamus-sinicus-17.jpg?format=1500w'
END
WHERE category_id = 8;

-- 9. Shade Trees
UPDATE products 
SET image_url = CASE product_name
    WHEN 'Mahogany Tree' THEN 'https://m.media-amazon.com/images/I/91b459BlifL._AC_UF1000,1000_QL80_.jpg'
    WHEN 'Rain Tree' THEN 'https://5.imimg.com/data5/SELLER/Default/2023/6/315683551/RJ/TF/TE/24841635/rain-tree-plant.jpg'
    WHEN 'Banyan Tree' THEN 'https://m.media-amazon.com/images/I/71BZ6qgUCiL._AC_UF1000,1000_QL80_.jpg'
    WHEN 'Debdaru Tree' THEN 'https://images.meesho.com/images/products/294291142/axdex_512.webp'
    WHEN 'Amaltas Tree' THEN 'https://m.media-amazon.com/images/I/718I2Fo3nHL._AC_UF350,350_QL80_.jpg'
END
WHERE category_id = 9;

-- 10. Bonsai Trees
UPDATE products 
SET image_url = CASE product_name
    WHEN 'Ficus Bonsai' THEN 'https://www.bonsaiempire.com/images/carrousel/ficus01-retusa-small.jpg'
    WHEN 'Mango Bonsai' THEN 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2qnkzAUqjrJhCbrx74cEkFJzhToKL2jdCXw&s'
    WHEN 'Bougainvillea Bonsai' THEN 'https://www.bonsaiempire.com/images/carrousel/bougainvillea01-purple-flowers.jpg'
    WHEN 'Kamini Bonsai' THEN 'https://i.ytimg.com/vi/m4lxzrd3CIQ/maxresdefault.jpg'
    WHEN 'Jade Bonsai' THEN 'https://5.imimg.com/data5/ANDROID/Default/2023/10/353766095/UQ/DX/DS/68815117/product-jpeg-500x500.jpg'
END
WHERE category_id = 10;

-- 11. Palm Trees
UPDATE products 
SET image_url = CASE product_name
    WHEN 'Date Palm' THEN 'https://static.wixstatic.com/media/11062b_f4d4a06ff93a4b6f9747bbeaffe5775f~mv2.jpeg/v1/crop/x_181,y_95,w_2574,h_1858/fill/w_640,h_462,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/Date%20Palms.jpeg'
    WHEN 'Royal Palm' THEN 'https://5.imimg.com/data5/SELLER/Default/2022/3/JE/ET/ZW/82187425/roystonea-royal-palm-tree-500x500.jpg'
    WHEN 'Coconut Palm' THEN 'https://i.etsystatic.com/23697056/r/il/27443e/4459864417/il_1080xN.4459864417_ktr4.jpg'
    WHEN 'Foxtail Palm' THEN 'https://naplesgardenlandscaping.com/wp-content/uploads/2023/11/foxtail-Palm-Triple.jpg'
    WHEN 'Rattan Palm' THEN 'https://images.squarespace-cdn.com/content/v1/544591e6e4b0135285aeb5b6/1538508997839-K5WQQQ8SYNBOOWYMBOMH/Calamus_gibbsianus.jpg'
END
WHERE category_id = 11;

-- 12. Climbing Plants
UPDATE products 
SET image_url = CASE product_name
    WHEN 'Madhabilata' THEN 'https://i.ytimg.com/vi/EB-SBbR97do/maxresdefault.jpg'
    WHEN 'Morning Glory' THEN 'https://botsocscot.wordpress.com/wp-content/uploads/2023/12/screenshot-2023-12-29-at-14.59.19.png?w=754'
    WHEN 'Bougainvillea Vine' THEN 'https://gardenerspath.com/wp-content/uploads/2022/09/How-to-Grow-Bougainvillea-Feature.jpg'
    WHEN 'Jasmine Climber' THEN 'https://hips.hearstapps.com/hmg-prod/images/star-jasmine-in-the-rain-royalty-free-image-1720728061.jpg?crop=0.88847xw:1xh;center,top&resize=1200:*'
    WHEN 'Money Plant XL' THEN 'https://growurban.uk/cdn/shop/products/pilea-peperomioides-xl-hangpot-705389.jpg?v=1694221944&width=2048'
END
WHERE category_id = 12;

-- 13. Aquatic Plants
UPDATE products 
SET image_url = CASE product_name
    WHEN 'Lotus Plant' THEN 'https://cff2.earth.com/uploads/2022/09/12074246/lotus-2.jpg'
    WHEN 'Water Lily' THEN 'https://www.planetnatural.com/wp-content/uploads/2024/06/Water-Lily.jpg'
    WHEN 'Hyacinth' THEN 'https://dutch-bulbs.com/media/catalog/category/hyacinths_1_1.jpg'
    WHEN 'Reed Plant' THEN 'https://www.semsgarden.com/blog/wp-content/uploads/2021/12/reed-1.jpg'
    WHEN 'Marsh Marigold' THEN 'https://www.pondplants.co.uk/wp-content/uploads/2017/12/Caltha_palustris_marsh-marigold_Marginal_Merebrook_pondplants.jpg'
END
WHERE category_id = 13;

-- 14. Cactus & Succulents
UPDATE products 
SET image_url = CASE product_name
    WHEN 'Barrel Cactus' THEN 'https://upload.wikimedia.org/wikipedia/commons/0/0d/Echinocactus_grusonii_1.jpg'
    WHEN 'Jade Plant' THEN 'https://gardengoodsdirect.com/cdn/shop/files/mini-leaf-jade-plants-29150187651114.jpg?v=1695415921'
    WHEN 'Aloe Vera Large' THEN 'https://planetdesert.com/cdn/shop/files/Aloe-Vera-5-Gallon_10_1080x.jpg?v=1692177349'
    WHEN 'Snake Cactus' THEN 'https://i.pinimg.com/originals/91/35/e2/9135e2d3255b6aea0a9893fe96d90267.jpg'
    WHEN 'Zebra Plant' THEN 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7O-OBb0TgZmR_IpCyzCG_srk8uGtCbaA__Q&s'
END
WHERE category_id = 14;

-- 15. Garden Flowers
UPDATE products 
SET image_url = CASE product_name
    WHEN 'Rose Plant' THEN 'https://mygreenleaf.ae/wp-content/uploads/2024/01/rose-pink.jpg'
    WHEN 'Marigold' THEN 'https://gardenseason.com/wp-content/uploads/2020/07/Marigold-seedlings-in-small-pots-in-the-garden-_-marigold-flowers-_-ss-_-featured.jpg'
    WHEN 'Dahlia' THEN 'https://media.greg.app/Y2FyZS1wbGFudC1wcm9maWxlL3VzZXJzLzQ0NDE5OC9wbGFudC1waG90b3MvMjA3NzMxNy8xNzAwNjA1NTk1MjIxLTIwMjMtMTEtMjItMDktMjYtMzItNTIxLmpwZw==?auto=webp&width=860&fit=cover&format=pjpg&height=860&optimize=medium&precrop=860:860,smart'
    WHEN 'Hibiscus' THEN 'https://nurserylive.com/cdn/shop/products/nurserylive-g-hibiscus-gudhal-flower-red-plant-213118_420x.jpg?v=1679750250'
    WHEN 'Jasmine' THEN 'https://5.imimg.com/data5/SELLER/Default/2024/6/430667139/ZB/XB/NO/24642325/jasmine-flower-plant.png'
END
WHERE category_id = 15;