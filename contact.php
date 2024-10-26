<?php
require "db_connection.php";
include "./utilities/header.php";
?>

<header>
  <h1>Contact Page</h1>
  <nav>
    <ul>
      <li>
        <a href="index.php">Home</a>
      </li>
      <span>></span>
      <li>
        <a href="about.php">About</a>
      </li>
      <span>></span>
      <li class="active">
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
    <div class="contact">
        <div class="contact-layout">
            <section class="contact-form">
                <h1>Contact Us</h1>
                <h2>Send Us a Message</h2>
                <form id="contact-form" action="submit_contact.php" method="POST">
                    <div>
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required />
                    </div>
                    <div>
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required />
                    </div>
                    <!-- <div>
                    <label for="subject">Subject:</label>
                    <input type="text" id="subject" name="subject" required />
                    </div> -->
                    <div>
                    <label for="message">Message:</label>
                    <textarea id="message" name="message" required></textarea>
                    </div>
                    <button type="submit" class="btn">Send Message</button>
                </form>
            </section>

            <section class="contact-info">
                <div class="info">
                    <h2>Contact Information</h2>
                    <ul>
                        <li>Email: info@greengarden.com</li>
                        <li>Phone: (555) 123-4567</li>
                        <li>Address: 123 Garden Street, Green City, GC 12345</li>
                    </ul>
                </div>

                <div class="business-hours">
                    <h2>Business Hours</h2>
                    <p>Monday - Friday: 9:00 AM - 6:00 PM</p>
                    <p>Saturday: 10:00 AM - 4:00 PM</p>
                    <p>Sunday: Closed</p>
                </div>

                <div class="find-us">
                    <h2>Find Us</h2>
                    <div class="map-container">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3649.693200265513!2d90.5637373761011!3d23.829506385733357!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755cb0a4c65ef27%3A0xf54f56affbffdc99!2z4KaX4KeN4Kaw4KeA4KaoIOCmh-CmieCmqOCmv-CmreCmvuCmsOCnjeCmuOCmv-Cmn-CmvyDgpoXgpqwg4Kas4Ka-4KaC4Kay4Ka-4Kam4KeH4Ka2!5e0!3m2!1sbn!2sbd!4v1729968351446!5m2!1sbn!2sbd" width="100%" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </section>
        </div>
    </div>
</main>

<?php include "./utilities/footer.php"; ?>
