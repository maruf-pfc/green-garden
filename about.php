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

    <main class="about_container">
        <h1 class="page-title">About Green Garden</h1>
        <section class="about-intro">
            <img src="https://cdn.pixabay.com/photo/2016/02/27/18/07/clover-1225988_640.jpg" alt="Green Garden Store" class="about-image">
            <div class="about-content">
                <h2>Our Mission</h2>
                <p>At Green Garden, we're on a mission to revolutionize the way gardening enthusiasts shop for their favorite products. We aim to bridge the gap between social media commerce and efficient online shopping, providing a seamless experience for both consumers and business owners.</p>
                <p>Our platform combines the best of modern e-commerce with the personal touch of social media interaction, making plant shopping more accessible and enjoyable than ever.</p>
            </div>
        </section>

        <section class="about-vision">
            <div class="vision-content">
                <h2 class="section-title">Our Vision</h2>
                <div class="vision-grid">
                    <div class="vision-item">
                        <img src="https://images.unsplash.com/photo-1466692476868-aef1dfb1e735" alt="Sustainable Gardening">
                        <h3>Sustainable Future</h3>
                        <p>We envision a greener future where every home has its own sustainable garden, contributing to environmental wellness and personal well-being.</p>
                    </div>
                    <div class="vision-item">
                        <img src="https://images.unsplash.com/photo-1534710961216-75c88202f43e" alt="Community Building">
                        <h3>Community Growth</h3>
                        <p>Building a thriving community of plant enthusiasts who share knowledge, experiences, and passion for gardening.</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="about-features">
            <h2 class="section-title">What Sets Us Apart</h2>
            <div class="features-grid">
                <!-- Existing feature cards with enhanced styling -->
            </div>
        </section>

        <section class="achievements">
            <h2 class="section-title">Our Impact</h2>
            <div class="achievement-grid">
                <div class="achievement-card">
                    <span class="achievement-number">10K+</span>
                    <p>Happy Customers</p>
                </div>
                <div class="achievement-card">
                    <span class="achievement-number">5000+</span>
                    <p>Plants Delivered</p>
                </div>
                <div class="achievement-card">
                    <span class="achievement-number">500+</span>
                    <p>Plant Varieties</p>
                </div>
                <div class="achievement-card">
                    <span class="achievement-number">50+</span>
                    <p>Expert Gardeners</p>
                </div>
            </div>
        </section>

        <section class="about-team">
            <h2 class="section-title">Meet Our Team</h2>
            <div class="team-grid">
                <div class="team-member">
                    <img src="https://pbs.twimg.com/profile_images/1781749081821597696/LcVEA7U__400x400.jpg" alt="Team Member 1">
                    <h3>Maruf Sarker</h3>
                    <p>Founder & Garden Expert</p>
                </div>
                <div class="team-member">
                    <img src="https://avatars.githubusercontent.com/u/95375334?v=4" alt="Team Member 2">
                    <h3>Sakib Islam</h3>
                    <p>Plant Specialist</p>
                </div>
                <div class="team-member">
                    <img src="https://mir-s3-cdn-cf.behance.net/user/276/921b1d775457109.614cc0387763a.png" alt="Team Member 3">
                    <h3>Asif Rahman</h3>
                    <p>Customer Experience Lead</p>
                </div>
            </div>
        </section>

        <section class="core-values">
            <h2 class="section-title">Our Core Values</h2>
            <div class="values-grid">
                <div class="value-card">
                    <i class="fas fa-leaf"></i>
                    <h3>Quality First</h3>
                    <p>We ensure every plant and product meets our high-quality standards before reaching your doorstep.</p>
                </div>
                <div class="value-card">
                    <i class="fas fa-heart"></i>
                    <h3>Customer Care</h3>
                    <p>Your satisfaction is our priority. We provide dedicated support throughout your gardening journey.</p>
                </div>
                <div class="value-card">
                    <i class="fas fa-globe"></i>
                    <h3>Sustainability</h3>
                    <p>We're committed to eco-friendly practices in packaging and plant cultivation.</p>
                </div>
                <div class="value-card">
                    <i class="fas fa-users"></i>
                    <h3>Community</h3>
                    <p>We foster a supportive community where plant lovers can connect and grow together.</p>
                </div>
            </div>
        </section>

        <section class="testimonials">
            <h2 class="section-title">What Our Customers Say</h2>
            <div class="testimonial-grid">
                <div class="testimonial-card">
                    <img src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80" alt="Customer 1" class="testimonial-image">
                    <p class="testimonial-text">"Green Garden has transformed my home into a beautiful indoor jungle. Their expert advice and quality plants are unmatched!"</p>
                    <p class="testimonial-author">- Sarah Johnson</p>
                </div>
                <div class="testimonial-card">
                    <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d" alt="Customer 2" class="testimonial-image">
                    <p class="testimonial-text">"The community aspect of Green Garden makes plant shopping a delightful social experience."</p>
                    <p class="testimonial-author">- Michael Chen</p>
                </div>
            </div>
        </section>
    </main>
       
<?php include "./utilities/footer.php"; ?>
