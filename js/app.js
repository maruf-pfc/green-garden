// Filter products by category and price range
function filterProducts() {
	const category = document.getElementById("categoryFilter").value;
	const priceRange = document.getElementById("priceRange").value;

	// Construct the query parameters for filtering
	let query = `fetch_products.php?max_price=${priceRange}`;
	if (category) {
		query += `&category=${category}`;
	}

	fetch(query)
		.then((response) => response.json())
		.then((data) => {
			displayProducts(data);
		});
}

// Search products by name or description
function searchProducts() {
	const searchQuery = document.getElementById("search").value;

	fetch(`fetch_products.php?search_query=${searchQuery}`)
		.then((response) => response.json())
		.then((data) => {
			displayProducts(data);
		});
}

// Display products dynamically
function displayProducts(products) {
	const productsContainer = document.getElementById("products");
	productsContainer.innerHTML = ""; // Clear previous products

	if (products.length === 0) {
		productsContainer.innerHTML = "<p>No products found.</p>";
	} else {
		products.forEach((product) => {
			const productCard = `
                <div class="product">
                    <span>C${product.category_id}:P${product.product_id}</span>
                    <img src="${product.image_url}" alt="${product.product_name}">
                    <h3>${product.product_name}</h3>
                    <p>Price: ${product.price} TK</p>
                    <p>${product.description}</p>
                </div>
            `;
			productsContainer.innerHTML += productCard;
		});
	}
}

// Run default product fetch when the page loads
filterProducts();