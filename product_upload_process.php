<?php
session_start();

// Include the database connection
require 'db_connection.php';

// Check if the user is logged in
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
    die("Access denied. Please log in first.");
}

// Handle product upload
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['upload'])) {
    $name = $_POST['name'];
    $category = $_POST['category'];
    $price = $_POST['price'];
    $image = $_POST['image'];
    $description = $_POST['description'];

    // Prepare and execute insert query
    $stmt = $conn->prepare("INSERT INTO products (name, category, price, image, description) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("ssiss", $name, $category, $price, $image, $description);

    if ($stmt->execute()) {
        echo "<p>Product uploaded successfully!</p>";
        echo '<a href="product_upload.php">Upload another product</a>';
    } else {
        echo "<p>Error uploading product: " . $stmt->error . "</p>";
    }
} else {
    echo "<p>Invalid request.</p>";
}
?>
