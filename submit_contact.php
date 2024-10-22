<?php
session_start();
//Import PHPMailer classes into the global namespace
//These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

//Load Composer's autoloader
require "vendor/autoload.php";

//Create an instance; passing `true` enables exceptions
$mail = new PHPMailer(true);

// validate the form
$name = $_POST["name"] ?? null;
$email = $_POST["email"] ?? null;
$message = $_POST["message"] ?? null;

if (!$name || !$email || !$message) {
    echo "Please fill in all the required fields!";
    exit();
}

if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    echo "Invalid email address!";
    exit();
}

if (strlen($message) < 50) {
    echo "Message should be at least 50 characters long!";
    exit();
}

try {
    //Server settings
    // $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
    $mail->isSMTP(); //Send using SMTP
    $mail->Host = "smtp.gmail.com"; //Set the SMTP server to send through
    $mail->SMTPAuth = true; //Enable SMTP authentication
    $mail->Username = "marufsarkercse2022@gmail.com"; //SMTP username
    $mail->Password = "mradurptsatagwkp"; //SMTP password
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS; //Enable implicit TLS encryption
    $mail->Port = 465; //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

    //Recipients
    $mail->setFrom("marufsarkercse2022@gmail.com", "Green Garden");
    $mail->addAddress("marufsarkercse2022@gmail.com", "$name");

    //Content
    $mail->isHTML(true); //Set email format to HTML
    $mail->Subject = "Green Garden Contact Form Submission";
    $mail->Body = "Name: $name <br> Email: $email <br> Message: $message";

    // Send email
    if ($mail->send()) {
        $_SESSION["message"] = "Message sent successfully!"; // Set session message
    } else {
        $_SESSION["message"] = "Message could not be sent!"; // Set session message
    }
    // echo 'Message has been sent';
    // clear the form fields
    $name = "";
    $email = "";
    $message = "";
    header("Location: index.php");
} catch (Exception $e) {
    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
    header("Location: contact.php");
    exit();
}
