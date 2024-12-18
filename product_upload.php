<?php
session_start();
$timeout_duration = 600;

if (isset($_SESSION["LAST_ACTIVITY"])) {
    if (time() - $_SESSION["LAST_ACTIVITY"] > $timeout_duration) {
        session_unset();
        session_destroy();
        header("Location: login.php");
        exit();
    }
}

$_SESSION["LAST_ACTIVITY"] = time();

$product_name = "";
$category_id = "";
$price = "";
$image_url = "";
$description = "";
include "db_connection.php";

error_reporting(E_ALL);
ini_set("display_errors", 1);

if (!isset($_SESSION["username"])) {
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        $username = $_POST["username"];
        $password = $_POST["password"];

        $query =
            "SELECT * FROM admin_users WHERE username = ? AND password = ?";
        $stmt = $conn->prepare($query);
        $stmt->bind_param("ss", $username, $password);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            $_SESSION["username"] = $username;
            header("Location: product_upload.php");
            exit();
        } else {
            $login_error = "Invalid username or password.";
        }
    } ?>
    <h1>Admin Login</h1>
    <form method="POST">
        <label for="username">Username:</label>
        <input type="text" name="username" required>

        <label for="password">Password:</label>
        <input type="password" name="password" required>

        <button type="submit">Login</button>
        <?php if (isset($login_error)) {
            echo "<p style='color:red;'>$login_error</p>";
        } ?>
    </form>
    <style>
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 300px;
            margin: auto;
        }
        label {
            display: block;
            margin-bottom: 8px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
    <?php
} else {

    if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST["upload"])) {
        $product_name = $_POST["name"] ?? "";
        $category_id = (int) ($_POST["category"] ?? 0);
        $price = (float) ($_POST["price"] ?? 0.0);
        $image_url = $_POST["image"] ?? "";
        $description = $_POST["description"] ?? "";

        echo "<pre>";
        print_r($_POST);
        echo "</pre>";

        $stmt = $conn->prepare(
            "INSERT INTO products (product_name, category_id, price, image_url, description) VALUES (?, ?, ?, ?, ?)"
        );
        $stmt->bind_param(
            "siiss",
            $product_name,
            $category_id,
            $price,
            $image_url,
            $description
        );

        if ($stmt->execute()) {
            echo "<p style='color:green;'>Product uploaded successfully!</p>";
            $product_name = "";
            $category_id = 0;
            $price = 0.0;
            $image_url = "";
            $description = "";
        } else {
            echo "<p style='color:red;'>Error uploading product: " .
                $stmt->error .
                "</p>";
        }
    }

    // Fetch categories from the database
    $categories = [];
    $query = "SELECT * FROM categories";
    $result = $conn->query($query);
    while ($row = $result->fetch_assoc()) {
        $categories[] = $row;
    }

    // Show the product upload form
    ?>
    <h1>Upload Product</h1>
    <form action="product_upload.php" method="POST">
        <label for="name">Product Name:</label>
        <input type="text" name="name" value="<?php echo htmlspecialchars(
            $product_name
        ); ?>" required>

        <label for="category">Category:</label>
        <select name="category" required>
            <option value="" disabled selected>Select a category</option>
            <?php foreach ($categories as $category): ?>
                <option value="<?php echo $category[
                    "category_id"
                ]; ?>" <?php echo isset($category_id) &&
$category_id == $category["category_id"]
    ? "selected"
    : ""; ?>>
                    <?php echo htmlspecialchars($category["category_name"]); ?>
                </option>
            <?php endforeach; ?>
        </select>

        <label for="price">Price:</label>
        <input type="number" name="price" value="<?php echo htmlspecialchars(
            $price
        ); ?>" required step="0.01" min="0">

        <label for="image">Product Image URL:</label>
        <input type="url" name="image" value="<?php echo htmlspecialchars(
            $image_url
        ); ?>" required placeholder="https://example.com/image.jpg">

        <label for="description">Description:</label>
        <textarea name="description" rows="4" required><?php echo htmlspecialchars(
            $description
        ); ?></textarea>

        <div style="display: flex; flex-direction: row; justify-content: space-between; gap: 20px;">
            <button type="submit" name="upload">Upload Product</button>
            <button type="reset" id="resetButton" style="background-color: red;">Reset</button>
        </div>
        <a href="index.php" style="padding: 10px 20px; background-color: dodgerblue; color: white; border: none; cursor: pointer; display: block; cursor: pointer; text-decoration: none; text-align: center; margin: 20px auto 0px auto; border-radius: 5px;">Back to Home</a>
    </form>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 500px;
            margin: auto;
        }
        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
        }
        input[type="text"],
        input[type="number"],
        input[type="url"],
        select,
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }
        button:hover {
            background-color: #45a049;
        }
        .error {
            color: red;
            text-align: center;
        }
        .success {
            color: green;
            text-align: center;
        }
    </style>
    <?php
}
?>
<script>
document.getElementById('resetButton').addEventListener('click', function() {
    document.querySelectorAll('input, select, textarea').forEach(function(el) {
        el.value = '';
    });
});
</script>
