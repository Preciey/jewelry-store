# E-commerce Store Checklist (Laravel + Vue + Pinia)

## 1. Frontend (Vue + Pinia)

### Navigation & Layout
- Navbar with links: Home, Shop, About, Contact, Cart ✅
- Route views rendered using `<router-view>` ✅
- Responsive design using Tailwind CDN ✅

### Home Page
- Featured products displayed ✅
- Categories section ✅
- Dynamic content from Pinia store ✅
- Search bar for products ❌

### Product Pages
- Product list page ✅
- Filter by category ✅
- Individual product page (ProductDetails.vue) ✅
- Breadcrumb navigation for categories ❌
- Related products / suggestions ❌

### Cart
- Add to cart button on product details ✅
- View cart page with all items ✅
- Increase / decrease quantity ✅
- Remove item ✅
- Cart total price & item count ✅
- Persist cart after page refresh ✅

### Checkout
- Display cart items in checkout ✅
- Enter delivery details ✅
- Integration with payment gateway (PayFast / Stripe) ❌
- Validation for delivery details ❌

---

## 2. Backend (Laravel)

### Database
- Products table ✅
- Categories included in products table ✅
- Orders table ❌
- Users table (for registered users) ❌
- Order items table ❌

### Seeders
- ProductSeeder with multiple products ✅
- UserSeeder ❌

### Controllers & API
- ProductsController (for API / dynamic fetching) ❌
- CartController (optional if backend cart) ❌
- CheckoutController ❌
- OrderController ❌

---

## 3. Stores (Pinia)

### Product Store
- Fetch products ✅
- Featured products getter ✅
- Filter products by category ✅

### Cart Store
- Add / remove / clear cart ✅
- Increase / decrease quantity ✅
- Get total items and total price ✅
- Persist cart in local storage or backend ❌

---

## 4. Routing (Vue Router)
- Home route `/` ✅
- Product list `/products` ✅
- Category `/category/:category` ✅
- Product details `/product/:slug` ✅
- Cart `/cart` ✅
- Checkout `/checkout` ✅
- User account / login routes ❌

---

## 5. Extra Features
- Search functionality ❌
- Discounts / promo codes ❌
- Wishlist / favorites ❌
- Product reviews / ratings ❌
- Related / recommended products ❌
- SEO optimization ❌

---

## 6. Deployment & Git
- GitHub repository ✅
- Push frontend and backend code ❌
- Environment variables (.env) ✅
- Hosting backend (Laravel) ❌
- Hosting frontend (Vue) ❌
- SSL and domain ❌
