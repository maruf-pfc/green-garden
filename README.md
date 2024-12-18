# Green Garden Website

## Project Goal

The primary goal of the Green Garden Website is to streamline the purchasing process for users who operate businesses on Facebook pages and groups by providing an efficient platform for showcasing gardening products. This project aims to:

1. **Enhance User Experience:** Allow consumers to easily filter products based on categories and price ranges, minimizing the time spent scrolling through social media for product details.

2. **Simplify Communication:** Enable users to take screenshots of products and send them directly to the business's Facebook page for inquiries. The screenshots will include unique code numbers, allowing admins to quickly identify and retrieve relevant product information.

3. **Facilitate Product Management:** Provide admins with a secure login feature to upload and manage products seamlessly. The system will include a database query functionality, enabling admins to efficiently retrieve product details and relay information to workers.

4. **Encourage User Engagement:** Allow users to contact the website owner via email for any queries, promoting a responsive and customer-oriented approach.

By achieving these goals, the Green Garden Website will significantly improve the interaction between consumers and business owners, making the shopping experience more accessible, organized, and effective.

## Table of Contents

- [Green Garden Website](#green-garden-website)
  - [Project Goal](#project-goal)
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
 ┣ 📂.github
 ┃ ┗ 📂ISSUE_TEMPLATE
 ┃ ┃ ┣ 📜bug_report.md
 ┃ ┃ ┗ 📜feature_request.md
 ┣ 📂assets
 ┃ ┗ 📂images
 ┃ ┃ ┗ 📜placeholder.jpg
 ┣ 📂css
 ┃ ┗ 📜styles.css
 ┣ 📂js
 ┃ ┗ 📜app.js
 ┣ 📂utilities
 ┃ ┣ 📜footer.php
 ┃ ┗ 📜header.php
 ┣ 📂vendor
 ┃ ┣ 📂composer
 ┃ ┣ 📂phpmailer
 ┃ ┗ 📜autoload.php
 ┣ 📜LICENSE
 ┣ 📜README.md
 ┣ 📜about.php
 ┣ 📜composer.json
 ┣ 📜composer.lock
 ┣ 📜contact.php
 ┣ 📜db.sql
 ┣ 📜db_connection.php
 ┣ 📜fetch_products.php
 ┣ 📜green_garden.sql
 ┣ 📜index.php
 ┣ 📜product_detail.php
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

![image](https://github.com/user-attachments/assets/ef8679cd-0abc-4cde-babf-3a5b8378612b)
![image](https://github.com/user-attachments/assets/d9c78269-1813-4916-bdeb-8d8a5365b55c)
![image](https://github.com/user-attachments/assets/404f31ec-5c54-43e5-b50d-e63af6b3f5c4)
![image](https://github.com/user-attachments/assets/b0b677ae-740a-4abe-bdc1-dbcf44c102ba)
![image](https://github.com/user-attachments/assets/3392495d-aed2-4b33-a595-910c9e11e7de)
![image](https://github.com/user-attachments/assets/a1954498-e25b-49af-bc83-4c8de7f4f0dc)
![image](https://github.com/user-attachments/assets/c6d74bf7-946f-4a65-88b4-9bbf804b50ca)
![image](https://github.com/user-attachments/assets/d24a7309-73be-4b96-bdef-ee8948d0e739)
![image](https://github.com/user-attachments/assets/ce71914f-cabb-4829-b6c9-00852a46e2ec)
![image](https://github.com/user-attachments/assets/30347211-9037-450f-b72d-ca15e0059c6f)
![image](https://github.com/user-attachments/assets/3dcdb5a6-bbd8-4733-a424-2e061becc47a)

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
