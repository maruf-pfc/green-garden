<?php
session_start();

// Include the database connection
require 'db_connection.php';

// Check if the user is already logged in
if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true) {
    // Show the product upload form if logged in
} else {
    // Handle login form submission
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $username = $_POST['username'];
        $password = $_POST['password'];

        // // Prepare and execute query
        // $stmt = $conn->prepare("SELECT * FROM admin_users WHERE username = ?");
        // $stmt->bind_param("s", $username);
        // $stmt->execute();
        // $result = $stmt->get_result();
        // $user = $result->fetch_assoc();

        // // Verify password
        // if ($user && password_verify($password, $user['password'])) {
        //     // Set session variables
        //     $_SESSION['loggedin'] = true;
        //     $_SESSION['username'] = $username; // Store username if needed
        // } else {
        //     // If login fails, show error message
        //     echo "<p style='color: red;'>Sorry, you don't have access to this page.</p>";
        // }


        // Prepare and execute query
        $stmt = $conn->prepare("SELECT * FROM admin_users WHERE username = ?");
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result = $stmt->get_result();
        $user = $result->fetch_assoc();

        // Debugging information
        if ($user) {
            echo "User found: " . $user['username'] . "<br>";
            echo "Password hash: " . $user['password'] . "<br>";

            // Verify password
            if (password_verify($password, $user['password'])) {
                echo "Password verified.<br>";
            } else {
                echo "Password verification failed.<br>";
            }

            $psd = "admin123";
            $hash = password_hash($psd, PASSWORD_DEFAULT);
            echo "Hashed password: " . $hash . "<br>";
        } else {
            echo "No user found with that username.<br>";
        }

        // Verify password
        if ($user && password_verify($password, $user['password'])) {
            // Set session variables
            $_SESSION['loggedin'] = true;
            $_SESSION['username'] = $username; // Store username if needed
        } else {
            echo "<p style='color: red;'>Sorry, you don't have access to this page.</p>";
        }

    }
}

// If the user is logged in, show the product upload form
if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true) {
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Product</title>
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
    </style>
</head>
<body>
    <h1>Upload Product</h1>
    <form action="product_upload_process.php" method="POST">
        <label for="name">Product Name:</label>
        <input type="text" name="name" required>

        <label for="category">Category:</label>
        <select name="category" required>
            <option value="" disabled selected>Select a category</option>
            <option value="1">Flowers</option>
            <option value="2">Fruits</option>
            <option value="3">Leafy Vegetables</option>
            <option value="4">Shrubs</option>
            <option value="5">Trees</option>
            <option value="6">Herbs</option>
            <option value="7">Cacti</option>
            <option value="8">Indoor Plants</option>
            <option value="9">Succulents</option>
            <option value="10">Outdoor Plants</option>
            <option value="11">Potted Plants</option>
            <option value="12">Seasonal Flowers</option>
            <option value="13">Medicinal Plants</option>
            <option value="14">Ornamental Plants</option>
            <option value="15">Edible Plants</option>
        </select>

        <label for="price">Price:</label>
        <input type="number" name="price" required step="0.01" min="0">

        <label for="image">Product Image URL:</label>
        <input type="url" name="image" required placeholder="https://example.com/image.jpg">

        <label for="description">Description:</label>
        <textarea name="description" rows="4" required></textarea>

        <button type="submit" name="upload">Upload Product</button>
    </form>
</body>
</html>
<?php
} else {
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
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
</head>
<body>

<h1>Admin Login</h1>
<form method="POST">
    <label for="username">Username:</label>
    <input type="text" name="username" required>

    <label for="password">Password:</label>
    <input type="password" name="password" required>

    <button type="submit">Login</button>
</form>

</body>
</html>
<?php
}
?>
