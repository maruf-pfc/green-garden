<?php
session_start();
include "db_connection.php";

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["upload"])) {
    // Collect form data
    $product_name = $_POST["product_name"] ?? null;
    $category_id = $_POST["category_id"] ?? null;
    $price = $_POST["price"] ?? null;
    $image_url = $_POST["image_url"] ?? null;
    $description = $_POST["description"] ?? null;

    echo "Product Name: $product_name <br>";
    echo "Category ID: $category_id <br>";
    echo "Price: $price <br>";
    echo "Image URL: $image_url <br>";
    echo "Description: $description <br>";

    // Check if all required fields are present
    if ($product_name && $category_id && $price && $image_url && $description) {
        // Prepare and execute insert query
        $query = "INSERT INTO products (product_name, category_id, price, image_url, description) 
                  VALUES ('$product_name', '$category_id', '$price', '$image_url', '$description')";

        if (mysqli_query($conn, $query)) {
            echo "Product uploaded successfully!";
            header("Location: index.php");
        } else {
            echo "Error: " . mysqli_error($conn);
        }
    } else {
        echo "Please fill in all the required fields!";
    }
}
?>
