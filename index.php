<?php
session_start();
require "db_connection.php";
include "./utilities/header.php";

// Check if there is a message in the URL
if (isset($_SESSION["message"])) {
    $message = htmlspecialchars($_SESSION["message"]);
    echo "<script>alert('$message');</script>";
    unset($_SESSION["message"]);
}
?>
    <header>
        <h1>Welcome to Green Garden</h1>
        <p>Explore a variety of flowers, fruits, and trees!</p>
    </header>

    <section id="filter">
        <h2>Filter Products</h2>

        <div class="filter-products">
            <div>
                <label for="categoryFilter">Category:</label>
                <select id="categoryFilter" onchange="filterProducts()">
                    <option value="">All Categories</option>
                    <?php
                    // Fetch categories from the database
                    $result = $conn->query("SELECT * FROM categories");
                    while ($row = $result->fetch_assoc()) {
                        echo '<option value="' .
                            $row["category_id"] .
                            '">' .
                            $row["category_name"] .
                            "</option>";
                    }
                    ?>
                </select>
            </div>

            <div>
                <label for="priceRange">Price Range:</label>
                <input type="range" id="priceRange" min="0" max="2000" step="20" oninput="document.getElementById('priceRangeValue').innerText = 'Up to: TK' + this.value" onchange="filterProducts()">
                <span id="priceRangeValue">Up to: 2000 TK</span>
            </div>
        </div>
    </section>

    <section id="products"></section>
    
       
<?php include "./utilities/footer.php"; ?>
