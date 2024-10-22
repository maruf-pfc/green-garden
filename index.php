<?php
require 'db_connection.php';
include('./utilities/header.php');
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
                        echo '<option value="'.$row['category_id'].'">'.$row['category_name'].'</option>';
                    }
                    ?>
                </select>
            </div>

            <div>
                <label for="priceRange">Price Range:</label>
                <input type="range" id="priceRange" min="0" max="100" step="10" oninput="document.getElementById('priceRangeValue').innerText = 'Up to: $' + this.value" onchange="filterProducts()">
                <span id="priceRangeValue">Up to: $100</span>
            </div>
        </div>
    </section>

    <section id="products">
        <!-- Products will be dynamically populated here -->
    </section>
    
       
<?php include('./utilities/footer.php'); ?>