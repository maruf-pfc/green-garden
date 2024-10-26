<?php
require "db_connection.php";
include "./utilities/header.php";
?>

    <header>
        <h1>About Page</h1>
        <nav>
            <ul>
            <li>
                <a href="index.php">Home</a>
            </li>
            <span>></span>
            <li class="active">
                <a href="about.php">About</a>
            </li>
            <span>></span>
            <li>
                <a href="services.php">Services</a>
            </li>
            <span>></span>
            <li>
                <a href="contact.php">Contact</a>
            </li>
            </ul>
        </nav>
    </header>

    <main class="container">
        <h1>About Green Garden</h1>
        <section class="about-intro">
            <img src="https://placehold.co/600x400" alt="Green Garden Store" class="about-image">
            <div class="about-content">
                <h2>Our Mission</h2>
                <p>At Green Garden, we're on a mission to revolutionize the way gardening enthusiasts shop for their favorite products. We aim to bridge the gap between social media commerce and efficient online shopping, providing a seamless experience for both consumers and business owners.</p>
            </div>
        </section>

        <section class="about-features">
            <h2>What Sets Us Apart</h2>
            <div class="features-grid">
                <div class="feature-card">
                    <img src="https://placehold.co/100x100" alt="User Experience Icon" class="feature-icon">
                    <h3>Enhanced User Experience</h3>
                    <p>Our platform allows easy filtering of products by categories and price ranges, saving you time and effort.</p>
                </div>
                <div class="feature-card">
                    <img src="https://placehold.co/100x100" alt="Communication Icon" class="feature-icon">
                    <h3>Simplified Communication</h3>
                    <p>Take screenshots of products and send inquiries directly to our Facebook page for quick responses.</p>
                </div>
                <div class="feature-card">
                    <img src="https://placehold.co/100x100" alt="Product Management Icon" class="feature-icon">
                    <h3>Efficient Product Management</h3>
                    <p>Our secure admin panel allows for seamless product uploads and management.</p>
                </div>
                <div class="feature-card">
                    <img src="https://placehold.co/100x100" alt="User Engagement Icon" class="feature-icon">
                    <h3>User Engagement</h3>
                    <p>We encourage direct communication, ensuring a responsive and customer-oriented approach.</p>
                </div>
            </div>
        </section>

        <section class="about-team">
            <h2>Our Team</h2>
            <p>Green Garden is powered by a passionate team of gardening enthusiasts, tech experts, and customer service professionals. Together, we work tirelessly to bring you the best online gardening shopping experience.</p>
            <img src="https://placehold.co/300x300" alt="Green Garden Team" class="team-image">
        </section>
    </main>
       
<?php include "./utilities/footer.php"; ?>
