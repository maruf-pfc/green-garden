<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "green_garden";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
