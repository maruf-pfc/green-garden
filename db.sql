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

-- Insert sample categories
INSERT INTO categories (category_name) VALUES
('Flowers'),
('Fruits'),
('Leafy Vegetables'),
('Shrubs'),
('Trees'),
('Herbs'),
('Cacti'),
('Indoor Plants'),
('Succulents'),
('Outdoor Plants'),
('Potted Plants'),
('Seasonal Flowers'),
('Medicinal Plants'),
('Ornamental Plants'),
('Edible Plants');


-- Insert sample products
INSERT INTO products (product_name, category_id, price, image_url, description) VALUES
('Jasmine', 1, 20.00, 'https://36vine.com/wp-content/uploads/2023/12/jasmine-flower.webp', 'A fragrant flower often used in garlands.'),
('Marigold', 1, 15.00, 'https://www.tomatobible.com/wp-content/uploads/2021/05/marigolds.jpg', 'Bright and vibrant flowers, popular for festivals.'),
('Rose', 1, 30.00, 'https://www.bhg.com/thmb/QmByQNKmqoIe53ntTQUrjOgZjz4=/1280x0/filters:no_upscale():strip_icc()/just-joey-rose-169abc2e-0e8a4f5cdd8843d6b354d06fc398412b.jpg', 'A classic flower available in multiple colors.'),
('Gerbera Daisy', 1, 25.00, 'https://www.thespruce.com/thmb/_44VLn8sjjY3jydsxDoltNVKwAI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/gerber-daises-4121360-hero-bfd1a98e8bb44c45891b84d9df63b5ac.jpeg', 'Colorful flowers perfect for bouquets.'),
('Lily', 1, 35.00, 'https://mynortherngarden.com/wp-content/uploads/2021/04/orange-lily-in-pot.jpg', 'Elegant flowers that bloom in various colors.'),
('Sunflower', 1, 40.00, 'https://m.media-amazon.com/images/I/81xSCvGBUFL._AC_UF350,350_QL80_.jpg', 'Large, bright flowers that turn toward the sun.'),
('Mango', 2, 100.00, 'https://ilovenursery.com/wp-content/uploads/2023/03/Mango-Tree-Amrapali-Grafted2-1.jpg', 'Sweet and juicy, the king of fruits.'),
('Banana', 2, 40.00, 'https://rukminim2.flixcart.com/image/720/864/kzd147k0/plant-sapling/s/x/a/no-annual-yes-kela16-1-aprix-original-imagbdbjcdcvy7ne.jpeg?q=60&crop=false', 'A common fruit, rich in potassium.'),
('Guava', 2, 50.00, 'https://rukminim2.flixcart.com/image/850/1000/kwqq1zk0/plant-sapling/m/v/x/no-perennial-yes-hybrid-dwarf-variant-guava-live-plant-cf30-1-original-imag9cxtxsp48j8c.jpeg?q=90&crop=false', 'Tropical fruit with a unique flavor.'),
('Pineapple', 2, 60.00, 'https://i.ytimg.com/vi/5FZebA8jzos/maxresdefault.jpg', 'Tropical fruit known for its sweetness.'),
('Jackfruit', 2, 80.00, 'https://rukminim2.flixcart.com/image/850/1000/xif0q/plant-sapling/e/y/w/no-perennial-yes-vietnam-all-time-jackfruit-very-sweet-taste-1-original-imahyrf4bgejr9yq.jpeg?q=90&crop=false', 'The largest fruit, great for savory dishes.');







('Lychee', 2, 120.00, 'https://example.com/images/lychee.jpg', 'Sweet tropical fruit with a floral taste.'),
('Spinach', 3, 30.00, 'https://example.com/images/spinach.jpg', 'Leafy green vegetable rich in iron.'),
('Mustard Greens', 3, 25.00, 'https://example.com/images/mustard_greens.jpg', 'A common leafy vegetable in Bangladeshi cuisine.'),
('Fenugreek Leaves', 3, 20.00, 'https://example.com/images/fenugreek.jpg', 'Used for cooking and medicinal purposes.'),
('Amaranth Leaves', 3, 15.00, 'https://example.com/images/amaranth.jpg', 'Nutritious leafy vegetable often used in curries.'),
('Cabbage', 3, 20.00, 'https://example.com/images/cabbage.jpg', 'Common vegetable used in salads and dishes.'),
('Bougainvillea', 4, 100.00, 'https://example.com/images/bougainvillea.jpg', 'Colorful shrubs that thrive in tropical climates.'),
('Hibiscus', 4, 50.00, 'https://example.com/images/hibiscus.jpg', 'A flowering plant known for its large blooms.'),
('Ixora', 4, 70.00, 'https://example.com/images/ixora.jpg', 'A shrub with clusters of small, colorful flowers.'),
('Gardenia', 4, 80.00, 'https://example.com/images/gardenia.jpg', 'Fragrant white flowers that bloom in summer.'),
('Azalea', 4, 90.00, 'https://example.com/images/azalea.jpg', 'Ornamental shrub with stunning blooms.'),
('Neem Tree', 5, 200.00, 'https://example.com/images/neem.jpg', 'A medicinal tree with various health benefits.'),
('Mango Tree', 5, 250.00, 'https://example.com/images/mango_tree.jpg', 'A fruit tree that provides delicious mangoes.'),
('Papaya Tree', 5, 150.00, 'https://example.com/images/papaya_tree.jpg', 'Produces sweet and nutritious papayas.'),
('Coconut Tree', 5, 300.00, 'https://example.com/images/coconut_tree.jpg', 'Provides coconuts and is known as the tree of life.'),
('Banyan Tree', 5, 500.00, 'https://example.com/images/banyan_tree.jpg', 'A large, sprawling tree often found in rural areas.'),
('Coriander', 6, 15.00, 'https://example.com/images/coriander.jpg', 'A fragrant herb used in many dishes.'),
('Mint', 6, 20.00, 'https://example.com/images/mint.jpg', 'A refreshing herb, great for drinks and salads.'),
('Basil', 6, 25.00, 'https://example.com/images/basil.jpg', 'A common herb in Italian cuisine.'),
('Curry Leaf', 6, 30.00, 'https://example.com/images/curry_leaf.jpg', 'Essential for South Asian cooking.'),
('Lemongrass', 6, 20.00, 'https://example.com/images/lemongrass.jpg', 'A fragrant herb used in various cuisines.'),
('Saguaro Cactus', 7, 100.00, 'https://example.com/images/saguaro_cactus.jpg', 'A tall cactus native to the Americas.'),
('Golden Barrel Cactus', 7, 80.00, 'https://example.com/images/golden_barrel_cactus.jpg', 'Round and spiky cactus, great for dry gardens.'),
('Easter Cactus', 7, 90.00, 'https://example.com/images/easter_cactus.jpg', 'Flowering cactus that blooms in spring.'),
('Opuntia (Prickly Pear)', 7, 70.00, 'https://example.com/images/prickly_pear.jpg', 'Cactus known for its edible fruits.'),
('Peace Lily', 8, 80.00, 'https://example.com/images/peace_lily.jpg', 'A beautiful indoor plant known for air purification.'),
('Rubber Plant', 8, 120.00, 'https://example.com/images/rubber_plant.jpg', 'An easy-to-care-for indoor plant.'),
('Spider Plant', 8, 50.00, 'https://example.com/images/spider_plant.jpg', 'A hardy indoor plant, great for beginners.'),
('Snake Plant', 8, 90.00, 'https://example.com/images/snake_plant.jpg', 'An indoor plant that thrives in low light.'),
('Pothos', 8, 60.00, 'https://example.com/images/pothos.jpg', 'A trailing plant known for its air-purifying properties.'),
('Echeveria', 9, 70.00, 'https://example.com/images/echeveria.jpg', 'A rosette-forming succulent, very popular.'),
('Aloe Vera', 9, 50.00, 'https://example.com/images/aloe_vera.jpg', 'Known for its medicinal properties.'),
('Jade Plant', 9, 90.00, 'https://example.com/images/jade_plant.jpg', 'A succulent that symbolizes good luck.'),
('Sedum', 9, 60.00, 'https://example.com/images/sedum.jpg', 'A low-growing succulent that thrives in sunlight.'),
('Haworthia', 9, 80.00, 'https://example.com/images/haworthia.jpg', 'A small succulent ideal for indoor gardening.'),
('Bougainvillea', 10, 100.00, 'https://example.com/images/bougainvillea_outdoor.jpg', 'A colorful shrub that thrives outdoors.'),
('Hibiscus', 10, 50.00, 'https://example.com/images/hibiscus_outdoor.jpg', 'A flowering plant popular in outdoor gardens.'),
('Plumeria', 10, 120.00, 'https://example.com/images/plumeria.jpg', 'Known for its fragrant flowers, often used in leis.'),
('Marigold', 10, 30.00, 'https://example.com/images/marigold_outdoor.jpg', 'A bright flower commonly used in gardens.');

