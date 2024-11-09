// Add this function to update price label
function updatePriceLabel(value) {
  document.getElementById("priceRangeValue").innerText = `Up to: ${value} TK`;
}

// Update the initialization in your DOMContentLoaded event
document.addEventListener("DOMContentLoaded", function () {
  // Set default price range value to maximum
  const priceRange = document.getElementById("priceRange");
  if (priceRange) {
    priceRange.value = 500; // Set to maximum of 500 TK
    updatePriceLabel(priceRange.value);
  }

  // Add event listeners
  document
    .getElementById("categoryFilter")
    .addEventListener("change", filterProducts);
  document.getElementById("priceRange").addEventListener("input", function () {
    updatePriceLabel(this.value);
  });
  document
    .getElementById("priceRange")
    .addEventListener("change", filterProducts);

  // Load initial products
  filterProducts();
});

// Update filterProducts function to use new price range
function filterProducts() {
  const category = document.getElementById("categoryFilter").value;
  const priceRange = document.getElementById("priceRange").value;

  console.log("Filtering - Category:", category);
  console.log("Filtering - Price Range:", priceRange);

  let query = `fetch_products.php?max_price=${priceRange}`;
  if (category !== "") {
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
// function displayProducts(products) {
//     const productsContainer = document.getElementById("products");
//     productsContainer.innerHTML = "";

//     if (products.length === 0) {
//         productsContainer.innerHTML = "<p>No products found.</p>";
//         return;
//     }

//     // Create grid container
//     const gridContainer = document.createElement('div');
//     gridContainer.className = 'products-grid';

//     products.forEach((product) => {
//         const productDiv = document.createElement('div');
//         productDiv.className = 'product';
//         productDiv.onclick = () => window.open(`product_detail.php?pid=${product.product_id}&cid=${product.category_id}`, '_blank');

//         productDiv.innerHTML = `
//             <div class="product-image">
//                 <img src="${product.image_url}"
//                      alt="${product.product_name}"
//                      onerror="this.onerror=null; this.src='assets/images/placeholder.jpg'">
//             </div>
//             <div class="product-info">
//                 <h3>${product.product_name}</h3>
//                 <p class="price">৳${product.price}</p>
//                 <p class="description">${product.description || ''}</p>
//                 <p class="category">${product.category_name || ''}</p>
//             </div>
//         `;

//         gridContainer.appendChild(productDiv);
//     });

//     productsContainer.appendChild(gridContainer);
// }

function displayProducts(products) {
  const productsContainer = document.getElementById("products");
  productsContainer.innerHTML = "";

  if (products.length === 0) {
    productsContainer.innerHTML = "<p>No products found.</p>";
    return;
  }

  // Create grid container
  const gridContainer = document.createElement("div");
  gridContainer.className = "products-grid";

  products.forEach((product) => {
    const productElement = document.createElement("div");
    productElement.className = "product";
    productElement.onclick = () =>
      window.open(
        `product_detail.php?pid=${product.product_id}&cid=${product.category_id}`,
        "_blank"
      );

    productElement.innerHTML = `
            <div class="product-image">
				<p style="text-align: right; display: block;">C${product.category_id}:P${product.product_id}</p>
                <img src="${product.image_url}" 
                     alt="${product.product_name}" 
                     onerror="this.onerror=null; this.src='assets/images/placeholder.jpg'">
            </div>
            <div class="product-info">
                <h3>${product.product_name}</h3>
                <p class="price">৳${product.price}</p>
                <p class="description">${product.description || ""}</p>
                <p class="category">${product.category_name || ""}</p>
            </div>
        `;

    gridContainer.appendChild(productElement);
  });

  productsContainer.appendChild(gridContainer);
}
// Run default product fetch when the page loads
filterProducts();
