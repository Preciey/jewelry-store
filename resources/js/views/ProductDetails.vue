<template>
    <div class="container mx-auto py-10 px-4">
        <div v-if="product" class="flex flex-col md:flex-row gap-8">
            <!-- Product Image -->
            <div class="md:w-1/2">
                <img
                    :src="product.image"
                    :alt="product.name"
                    class="w-full rounded-lg shadow-lg"
                />
            </div>

            <!-- Product Details -->
            <div class="md:w-1/2 flex flex-col justify-start">
                <h1 class="text-4xl font-bold mb-4">{{ product.name }}</h1>

                <div class="flex items-center gap-4 mb-4">
                    <span class="text-pink-700 font-bold text-2xl">${{ product.price }}</span>
                    <span v-if="product.old_price" class="line-through text-gray-400 text-lg">
                        ${{ product.old_price }}
                    </span>
                </div>

                <p class="text-gray-600 mb-4 capitalize">
                    Category:
                    <span class="font-medium">{{ product.category }}</span>
                </p>

                <p class="text-gray-700 mb-6">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
                    elementum justo at justo gravida, sed pharetra turpis
                    consequat.
                </p>

                <!-- Stock & Quantity -->
                <p class="text-green-600 font-semibold mb-4">In Stock</p>
                <div class="flex items-center gap-4 mb-6">
                    <label for="quantity" class="font-medium">Quantity:</label>
                    <input
                        id="quantity"
                        type="number"
                        min="1"
                        v-model="quantity"
                        class="border rounded w-20 px-2 py-1"
                    />
                </div>

                <!-- Add to Cart Button -->
                <button
                    @click="addToCart()"
                    class="mt-4 px-4 py-2 bg-pink-700 text-white rounded hover:bg-pink-800"
                >
                    Add to Cart
                </button>
            </div>
        </div>

        <div v-else class="text-center text-gray-500">
            <p>Product not found.</p>
        </div>
    </div>
</template>

<script>
import { useProductStore } from "../stores/product";
import { computed, ref, onMounted } from "vue";
import { useRoute } from "vue-router";
import { useCartStore } from "../stores/cart";

export default {
    setup() {
        const route = useRoute();
        const productStore = useProductStore();
        const cartStore = useCartStore();
        const quantity = ref(1);

        // Load products if not already loaded
        onMounted(() => {
            if (!productStore.products.length) {
                productStore.fetchProducts();
            }
        });

        // Find the product by slug
        const product = computed(() => {
            return productStore.products.find(p => p.slug === route.params.slug);
        });

        // Add to cart function
        const addToCart = () => {
            if (product.value) {
                cartStore.addToCart(product.value, quantity.value);
                alert(`${quantity.value} x ${product.value.name} added to cart`);
            }
        };

        return { product, quantity, addToCart };
    },
};
</script>
