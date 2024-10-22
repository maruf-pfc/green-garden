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
