<?php
require "db_connection.php";

// Fetch category, price, and search query from GET request
$category = isset($_GET["category"]) ? intval($_GET["category"]) : "";
$max_price = isset($_GET["max_price"]) ? floatval($_GET["max_price"]) : 500;
$search_query = isset($_GET["search_query"]) ? trim($_GET["search_query"]) : "";

// Build the SQL query based on the filters
$query = "SELECT * FROM products WHERE price <= ?";

if ($category) {
    $query .= " AND category_id = ?";
}

if ($search_query) {
    $query .= " AND (product_name LIKE ? OR description LIKE ?)";
}

$stmt = $conn->prepare($query);

// Bind parameters for category and search query
if ($category && $search_query) {
    $search_term = "%" . $search_query . "%";
    $stmt->bind_param(
        "diss",
        $max_price,
        $category,
        $search_term,
        $search_term
    );
} elseif ($category) {
    $stmt->bind_param("di", $max_price, $category);
} elseif ($search_query) {
    $search_term = "%" . $search_query . "%";
    $stmt->bind_param("ds", $max_price, $search_term);
} else {
    $stmt->bind_param("d", $max_price);
}

// Execute and fetch results
$stmt->execute();
$result = $stmt->get_result();
$products = $result->fetch_all(MYSQLI_ASSOC);

// Send the products back as JSON
echo json_encode($products);

?>