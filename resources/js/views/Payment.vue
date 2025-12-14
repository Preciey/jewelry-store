<template>
  <div class="container mx-auto py-10 px-4 max-w-3xl">
    <h1 class="text-4xl font-bold mb-8 text-center">Checkout</h1>

    <div v-if="cart.items.length === 0" class="text-center text-gray-500">
      <p>Your cart is empty. Please add items before checking out.</p>
    </div>

    <div v-else class="space-y-8">
      <!-- Cart Summary -->
      <div>
        <h2 class="text-2xl font-bold mb-4">Order Summary</h2>
        <div v-for="item in cart.items" :key="item.slug" class="flex justify-between items-center p-4 border rounded-lg mb-2">
          <p>{{ item.name }} x {{ item.quantity }}</p>
          <p>${{ (item.price * item.quantity).toFixed(2) }}</p>
        </div>
        <div class="text-right mt-4 font-bold text-xl">
          Total: ${{ cart.totalPrice.toFixed(2) }}
        </div>
      </div>

      <!-- Delivery Details -->
      <div>
        <h2 class="text-2xl font-bold mb-4">Delivery Details</h2>
        <form @submit.prevent="payNow" class="space-y-4">
          <div>
            <label class="block font-medium">Full Name</label>
            <input v-model="delivery.name" type="text" required class="w-full border rounded px-3 py-2" />
          </div>
          <div>
            <label class="block font-medium">Address</label>
            <input v-model="delivery.address" type="text" required class="w-full border rounded px-3 py-2" />
          </div>
          <div>
            <label class="block font-medium">City</label>
            <input v-model="delivery.city" type="text" required class="w-full border rounded px-3 py-2" />
          </div>
          <div>
            <label class="block font-medium">Postal Code</label>
            <input v-model="delivery.postalCode" type="text" required class="w-full border rounded px-3 py-2" />
          </div>
          <div>
            <label class="block font-medium">Phone Number</label>
            <input v-model="delivery.phone" type="tel" required class="w-full border rounded px-3 py-2" />
          </div>

          <button
            type="submit"
            class="mt-4 w-full px-6 py-2 bg-pink-700 text-white rounded hover:bg-pink-800"
          >
            Pay Now
          </button>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
import { reactive } from "vue";
import { useCartStore } from "../stores/cart";
import { useRouter } from "vue-router";

export default {
  setup() {
    const cart = useCartStore();
    const router = useRouter();

    const delivery = reactive({
      name: "",
      address: "",
      city: "",
      postalCode: "",
      phone: "",
    });

    const payNow = () => {
      if (!cart.items.length) return;
      console.log("Order details:", {
        items: cart.items,
        delivery: delivery,
        total: cart.totalPrice,
      });
      alert(`Thank you ${delivery.name}! Proceeding to payment of $${cart.totalPrice.toFixed(2)}`);
      cart.clearCart();
      router.push("/thank-you"); // optional thank-you page
    };

    return { cart, delivery, payNow };
  },
};
</script>
