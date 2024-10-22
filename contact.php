<?php
require "db_connection.php";
include "./utilities/header.php";
?>

<header>
    <h1>Contact Page</h1>
</header>

<div class="container">
        <h1>Contact Us</h1>

        <div class="contact-info">
            <div>
                <h2>Contact via Facebook Page</h2>
                <p>If you have taken a screenshot of the product you're interested in, please visit our Facebook page and send it via our chat box. Our support team will get back to you as soon as possible.</p>
                <a href="https://facebook.com/your-facebook-page" target="_blank">Go to Facebook Page</a>
            </div>

            <div>
                <h2>Join Our Facebook Group</h2>
                <p>You can also share the screenshot and discuss the product in our Facebook group. It's a great place to ask questions, get feedback, and interact with other users.</p>
                <a href="https://facebook.com/your-facebook-group" target="_blank">Go to Facebook Group</a>
            </div>

            <div>
                <h2>Email Us Directly</h2>
                <p>If you'd prefer to contact us via email, feel free to reach out at:</p><a href="mailto:marufsarkercse2022@gmail.com">marufsarkercse2022@gmail.com</a>
            </div>
        </div>

        <div class="contact-form">
            <h2>Send Us a Message</h2>
            <form action="submit_contact.php" method="POST">
                <label for="name">Your Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Your Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="6" required></textarea>

                <button type="submit">Send Message</button>
            </form>
        </div>
    </div>
       
<?php include "./utilities/footer.php"; ?>
