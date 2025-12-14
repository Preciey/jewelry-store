# Mimie Jewellery E-commerce Application

Mimie Jewellery is a modern full-stack e-commerce web application built with **Laravel 12** and **Vue 3**. It provides a complete shopping experience, allowing users to browse products by category, view product details, manage a shopping cart, and proceed through a checkout flow with delivery information.

---

## Features

- **Dynamic Product Listings:** Browse products by category or view featured items on the homepage.  
- **Product Details:** Each product has a dedicated page showing price, old price, stock status, category, and description.  
- **Shopping Cart:** Add, remove, or update product quantities with live cart updates.  
- **Checkout Page:** Collect delivery details and proceed to payment.  
- **Responsive Design:** Optimized for mobile, tablet, and desktop.  
- **State Management:** Uses **Pinia** for managing cart and product state.

---

## Tech Stack

- **Backend:** Laravel 12  
- **Frontend:** Vue 3, Vue Router, Pinia  
- **Database:** MySQL  
- **Styling:** Tailwind CSS via CDN  
- **Development Tools:** Vite, Node.js, npm

---

## Installation

1. **Clone the repository:**  
   ```bash
   git clone https://github.com/your-username/mimie-jewellery.git
   cd mimie-jewellery
````

2. **Install PHP dependencies:**

   ```bash
   composer install
   ```

3. **Install Node.js dependencies:**

   ```bash
   npm install
   ```

4. **Configure environment variables:**
   Copy `.env.example` to `.env` and update the database credentials.

   ```bash
   cp .env.example .env
   php artisan key:generate
   ```

5. **Run migrations and seed the database:**

   ```bash
   php artisan migrate --seed
   ```

6. **Run the application:**

   ```bash
   php artisan serve
   npm run dev
   ```

7. Open your browser at `http://127.0.0.1:8000`.

---

## Project Structure

```
resources/
├─ js/
│  ├─ components/     # Reusable Vue components
│  ├─ views/          # Page-level Vue components (Home, ProductDetails, Cart, Checkout)
│  ├─ stores/         # Pinia stores for products and cart
│  └─ App.vue
├─ css/
│  └─ app.css
routes/
├─ web.php            # Laravel web routes
database/
├─ migrations/
├─ seeders/           # ProductSeeder for initial product data
```

---

## Usage

1. Visit the **Home page** to browse featured products.
2. Click on a product to view detailed information.
3. Add items to the **cart** from the product details page.
4. Navigate to the **Cart page** to adjust quantities or remove items.
5. Proceed to **Checkout**, fill in delivery details, and simulate payment.

---

## Screenshots

*(You can add screenshots of the Home page, Product Details page, Cart, and Checkout page here)*

---

## Contributing

Contributions are welcome!

1. Fork the repository
2. Create a new branch (`git checkout -b feature/your-feature`)
3. Commit your changes (`git commit -m "Add new feature"`)
4. Push to the branch (`git push origin feature/your-feature`)
5. Open a Pull Request

---

## License

This project is licensed under the **MIT License**.

---

## Contact

* **Project Owner:** Preciey Rathabane
* **Email:** [Rathabane.sikedi1@gmail.com]
* **GitHub:** [https://github.com/preciey]

