<?php
session_start();
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require "vendor/autoload.php";

$mail = new PHPMailer(true);

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
    $mail->isSMTP();
    $mail->Host = "smtp.gmail.com";
    $mail->SMTPAuth = true;
    $mail->Username = "marufsarkercse2022@gmail.com";
    $mail->Password = "mradurptsatagwkp";
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
    $mail->Port = 465;

    //Recipients
    $mail->setFrom("marufsarkercse2022@gmail.com", "Green Garden");
    $mail->addAddress("marufsarkercse2022@gmail.com", "$name");

    //Content
    $mail->isHTML(true); //Set email format to HTML
    $mail->Subject = "Green Garden Contact Form Submission";
    $mail->Body = "Name: $name <br> Email: $email <br> Message: $message";

    // Send email
    if ($mail->send()) {
        $_SESSION["message"] = "Message sent successfully!";
    } else {
        $_SESSION["message"] = "Message could not be sent!";
    }
    // echo 'Message has been sent';
    $name = "";
    $email = "";
    $message = "";
    header("Location: index.php");
} catch (Exception $e) {
    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
    header("Location: contact.php");
    exit();
}
