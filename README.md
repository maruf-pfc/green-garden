# Green Garden Website

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
- About Us, Services descriptions, and contact form
- User-friendly design with responsive layout
- Database integration for storing uploaded products
- Form submission with email notification upon successful contact

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
 ┃ ┗ 📜styles.css
 ┣ 📂js
 ┃ ┗ 📜app.js
 ┣ 📂uploads
 ┃ ┗ 📜wave.png
 ┣ 📂utilities
 ┃ ┣ 📜footer.php
 ┃ ┗ 📜header.php
 ┣ 📂vendor
 ┣ 📜README.md
 ┣ 📜about.php
 ┣ 📜composer.json
 ┣ 📜composer.lock
 ┣ 📜contact.php
 ┣ 📜db.sql
 ┣ 📜db_connection.php
 ┣ 📜fetch_products.php
 ┣ 📜index.php
 ┣ 📜product_upload.php
 ┣ 📜product_upload_process.php
 ┣ 📜services.php
 ┗ 📜submit_contact.php
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

   - Open **phpMyAdmin** and create a new database named `green_garden`.
   - Import the `green_garden.sql` file into this database to create the necessary tables.

5. **Install PHPMailer:**

The project uses PHPMailer for sending emails. Install it via Composer with the following command:

```bash
composer require phpmailer/phpmailer:^6.9
```

This will add the following to your composer.json file:

```json
{
    "require": {
        "phpmailer/phpmailer": "^6.9"
    }
}
```

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

    To upload a product you have to sign in as an admin. The default admin credentials are:

    - Username: `admin`
    - Password: `admin123`

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

<div align="center">
  
![image](https://github.com/user-attachments/assets/c2202b0b-6a4f-4081-815f-8944d7fae243)
![image](https://github.com/user-attachments/assets/d24a7309-73be-4b96-bdef-ee8948d0e739)
![image](https://github.com/user-attachments/assets/ce71914f-cabb-4829-b6c9-00852a46e2ec)
![image](https://github.com/user-attachments/assets/30347211-9037-450f-b72d-ca15e0059c6f)
![image](https://github.com/user-attachments/assets/3dcdb5a6-bbd8-4733-a424-2e061becc47a)
![image](https://github.com/user-attachments/assets/a1954498-e25b-49af-bc83-4c8de7f4f0dc)
![image](https://github.com/user-attachments/assets/c6d74bf7-946f-4a65-88b4-9bbf804b50ca)

</div>

## Contributing

If you'd like to contribute, follow these steps:

1. Fork the repository
2. Create a new branch (`git checkout -b feature-branch`)
3. Make your changes and commit (`git commit -m 'Add new feature'`)
4. Push to the branch (`git push origin feature-branch`)
5. Open a Pull Request

## License

This project is licensed under the MIT License.
