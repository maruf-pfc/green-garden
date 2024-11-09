<?php
require "db_connection.php";

// Get product and category IDs from URL
$product_id = isset($_GET['pid']) ? intval($_GET['pid']) : 0;
$category_id = isset($_GET['cid']) ? intval($_GET['cid']) : 0;

// Fetch product details
$stmt = $conn->prepare("
    SELECT p.*, c.category_name 
    FROM products p 
    JOIN categories c ON p.category_id = c.category_id 
    WHERE p.product_id = ? AND p.category_id = ?
");
$stmt->bind_param("ii", $product_id, $category_id);
$stmt->execute();
$result = $stmt->get_result();
$product = $result->fetch_assoc();

// If product not found, redirect to home
if (!$product) {
    header("Location: index.php");
    exit();
}
?>

<?php
require "db_connection.php";
include "./utilities/header.php";
?>
        <header>
        <h1>Product Detail Page</h1>
        <nav>
            <ul>
            <li>
                <a href="index.php">Home</a>
            </li>
            <span>></span>
            <li>
                <a href="about.php">About</a>
            </li>
            <span>></span>
            <li>
                <a href="services.php">Services</a>
            </li>
            <span>></span>
            <li>
                <a href="contact.php">Contact</a>
            </li>
            </ul>
        </nav>
        </header>
        <div class="product-detail">
            <div class="product-image">
                <img src="<?php echo htmlspecialchars($product['image_url']); ?>" 
                     alt="<?php echo htmlspecialchars($product['product_name']); ?>">
            </div>
            <div class="product-info">
                <h1><?php echo htmlspecialchars($product['product_name']); ?></h1>
                <p class="price">৳<?php echo htmlspecialchars($product['price']); ?></p>
                <p class="description"><?php echo htmlspecialchars($product['description']); ?></p>
                <div class="category">
                    <?php echo htmlspecialchars($product['category_name']); ?>
                </div>
                <a href="index.php" class="back-button">Back to Products</a>
            </div>
        </div>
<?php include "./utilities/footer.php"; ?>