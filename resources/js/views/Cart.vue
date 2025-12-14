<template>
  <div class="container mx-auto py-10 px-4">
    <h1 class="text-4xl font-bold mb-8 text-center">Your Cart</h1>

    <div v-if="cart.items.length === 0" class="text-center text-gray-500">
      <p>Your cart is empty.</p>
      <router-link
        to="/products"
        class="mt-4 inline-block px-6 py-2 bg-pink-700 text-white rounded hover:bg-pink-800"
      >
        Continue Shopping
      </router-link>
    </div>

    <div v-else class="space-y-6">
      <div
        v-for="item in cart.items"
        :key="item.slug"
        class="flex flex-col md:flex-row items-center gap-4 p-4 border rounded-lg shadow hover:shadow-lg transition"
      >
        <img
          :src="item.image"
          :alt="item.name"
          class="w-32 h-32 object-cover rounded"
        />

        <div class="flex-1">
          <h2 class="text-2xl font-semibold">{{ item.name }}</h2>
          <p class="text-gray-700">
            Price: ${{ item.price }} <span v-if="item.old_price" class="line-through text-gray-400">${{ item.old_price }}</span>
          </p>
          <p class="text-gray-700 mt-1">
            Subtotal: ${{ (item.price * item.quantity).toFixed(2) }}
          </p>

          <div class="flex items-center gap-2 mt-3">
            <button
              @click="cart.decreaseQuantity(item.slug)"
              class="px-3 py-1 border rounded hover:bg-gray-100"
            >
              -
            </button>
            <input
              type="number"
              min="1"
              v-model.number="item.quantity"
              class="w-16 text-center border rounded px-2 py-1"
            />
            <button
              @click="cart.increaseQuantity(item.slug)"
              class="px-3 py-1 border rounded hover:bg-gray-100"
            >
              +
            </button>
            <button
              @click="cart.removeFromCart(item.slug)"
              class="ml-4 px-3 py-1 border rounded text-red-600 hover:bg-red-50"
            >
              Remove
            </button>
          </div>
        </div>
      </div>

      <!-- Cart Summary -->
      <div class="text-right mt-8">
        <p class="text-2xl font-bold">
          Total Items: {{ cart.totalItems }}
        </p>
        <p class="text-3xl font-extrabold text-pink-700">
          Total: ${{ cart.totalPrice.toFixed(2) }}
        </p>
        <div class="mt-4 space-x-2">
          <button
            @click="cart.clearCart()"
            class="px-6 py-2 bg-red-500 text-white rounded hover:bg-red-600"
          >
            Clear Cart
          </button>
         <router-link
  to="/checkout"
  class="px-6 py-2 bg-green-600 text-white rounded hover:bg-green-700"
>
  Checkout
</router-link>

        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { useCartStore } from "../stores/cart";

export default {
  setup() {
    const cart = useCartStore();

    return { cart };
  },
};
</script>


