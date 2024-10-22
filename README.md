# Green Garden Website

Work on upload product feature:

```markdown
If a user go to upload_product page then check if the user is logged in or not. If the user already logged in then show him upload product form where the categories are fetched from database. If the user not logged in then show him a login interface in the same page. Ask him to enter username and password. Fetch the username and password and check it with database admin_user username and password. Don't need to check with the hashed password because we store plain text as admin password on the database. If everything is okay then show him the product_upload form, get the response and insert it to the database table.
```

This project is a website for a gardening service business, offering about us, services, an FAQ section, a contact page, and a product upload feature for gardening products. The website includes database interaction and dynamic content handling.

## Table of Contents

- [Green Garden Website](#green-garden-website)
  - [Table of Contents](#table-of-contents)
  - [Features](#features)
  - [Technologies](#technologies)
  - [Project Structure](#project-structure)
  - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
    - [Running the Project](#running-the-project)
  - [Contributing](#contributing)
  - [License](#license)

## Features

- Dynamic product upload functionality
- About us, Services descriptions and contact form
- User-friendly design with responsive layout
- Database integration for storing uploaded products

## Technologies

- HTML5
- CSS3 (Stylesheets in `css/styles.css`)
- JavaScript (app logic in `js/app.js`)
- PHP (server-side)
- MySQL (database for storing product and contact information)

## Project Structure

```
📦green-garden
 ┣ 📂css
 ┃ ┗ 📜styles.css                # Styles for the website
 ┣ 📂js
 ┃ ┗ 📜app.js                    # Client-side scripts
 ┣ 📂uploads
 ┃ ┗ 📜wave.png                  # Uploaded images
 ┣ 📂utilities
 ┃ ┣ 📜footer.php                # Footer file to include across pages
 ┃ ┗ 📜header.php                # Header file to include across pages
 ┣ 📜README.md                   # Documentation
 ┣ 📜about.php                   # About page
 ┣ 📜contact.php                 # Contact page
 ┣ 📜db.sql                      # Database schema
 ┣ 📜db_connection.php           # Database connection file
 ┣ 📜fetch_products.php          # Fetch products dynamically
 ┣ 📜index.php                   # Home page
 ┣ 📜product_upload.php          # Product upload form page
 ┣ 📜product_upload_process.php  # Product upload processing script
 ┣ 📜services.php                # Services page
 ┗ 📜upload_form.php             # Form for uploading product images
```

## Getting Started

These instructions will help you set up the project on your local machine for development and testing purposes.

### Prerequisites

You need the following to run this project:

- A local server (XAMPP, WAMP, or MAMP)
- PHP 7.4 or higher
- MySQL database
- Code editor (e.g., VSCode)

### Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/maruf-pfc/green-garden.git
   ```

2. **Move the project to your local server directory:**

   If you're using XAMPP, place the project folder in:

   ```bash
   /opt/lampp/htdocs/green-garden
   ```

3. **Start your local server:**

   Open XAMPP or MAMP and start **Apache** and **MySQL**.

4. **Set up the database:**

   - Open **phpMyAdmin** and create a new database named `green_garden_db`.
   - Import the `db.sql` file into this database to create the necessary tables.

### Running the Project

1. **Access the website:**

   In your web browser, navigate to:

   ```bash
   http://localhost/green-garden
   ```

2. **Test product uploads:**

   You can visit the product upload page at:

   ```bash
   http://localhost/green-garden/product_upload.php
   ```

3. **Database Configuration:**

   Ensure that the `db_connection.php` file contains the correct database credentials:

   ```php
   $host = 'localhost';
   $user = 'root';
   $password = '';
   $dbname = 'green_garden';
   ```

4. **Browse the website:**

   Test all pages, including the home page (`index.php`), about us page (`about.php`), services page (`services.php`), and contact page (`contact.php`).

## Contributing

If you'd like to contribute, follow these steps:

1. Fork the repository
2. Create a new branch (`git checkout -b feature-branch`)
3. Make your changes and commit (`git commit -m 'Add new feature'`)
4. Push to the branch (`git push origin feature-branch`)
5. Open a Pull Request

## License

This project is licensed under the MIT License.
