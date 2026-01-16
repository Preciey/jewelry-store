import { createRouter, createWebHistory } from "vue-router";

// Import your views
import Home from "../views/Home.vue";
import Products from "../views/Products.vue";
import Category from "../views/Category.vue";
import ProductDetails from "../views/ProductDetails.vue";
import Cart from "../views/Cart.vue";
import Payment from "../views/Payment.vue";
import NotFound from "../views/NotFound.vue";
import ContactUs from "../components/ContactUs.vue";

const routes = [
    {
        path: "/",
        name: "Home",
        component: Home,
    },
    {
        path: "/products",
        name: "Products",
        component: Products,
    },
    {
        path: "/category/:category",
        name: "Category",
        component: Category,
    },
    {
        path: "/product/:slug",
        name: "product-details",
        component: () => import("../views/ProductDetails.vue"),
    },

    {
        path: "/cart",
        name: "Cart",
        component: Cart,
    },
    {
        path: "/checkout",
        name: "checkout",
        component: Payment
    },

    {
        path: "/:pathMatch(.*)*", // Catch all unmatched routes
        name: "NotFound",
        component: NotFound,
    },
        {
        path: "/contact",
        name: "contact",
        component: ContactUs
    },
      {
        path: "/about",
        name: "about",
        component: AboutUs
    },
];

const router = createRouter({
    history: createWebHistory(),
    routes,
});

export default router;
