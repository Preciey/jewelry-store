<template>
  <div class="container mx-auto py-10 px-4 max-w-3xl">
    <h1 class="text-4xl font-bold mb-8 text-center">Checkout</h1>

    <div v-if="cart.items.length === 0" class="text-center text-gray-500">
      <p>Your cart is empty. Please add items before checking out.</p>
    </div>

    <div v-else class="space-y-8">
      <!-- Order Summary -->
      <div>
        <h2 class="text-2xl font-bold mb-4">Order Summary</h2>

        <div
          v-for="item in cart.items"
          :key="item.slug"
          class="flex justify-between items-center p-4 border rounded-lg mb-2"
        >
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

        <form class="space-y-4">
  <input v-model="delivery.name" type="text" placeholder="Full Name" required class="input" />
  <input v-model="delivery.email" type="email" placeholder="Email Address" required class="input" />
  <input v-model="delivery.address" type="text" placeholder="Street Address" required class="input" />
  <input v-model="delivery.city" type="text" placeholder="City" required class="input" />
  <input v-model="delivery.postalCode" type="text" placeholder="Postal Code" required class="input" />
  <input v-model="delivery.phone" type="tel" placeholder="Phone Number" required class="input" />

  <button
    type="button"
    @click="payNow"
    class="w-full mt-4 px-6 py-3 bg-pink-700 text-white rounded hover:bg-pink-800"
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

export default {
  setup() {
    const cart = useCartStore();

    const delivery = reactive({
      name: "",
      email: "",
      address: "",
      city: "",
      postalCode: "",
      phone: "",
    });

    const payNow = async () => {

      if (!cart.items.length) return;

      const response = await fetch("/payfast/initiate", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          name: delivery.name,
          email: delivery.email,
          amount: cart.totalPrice.toFixed(2),
        }),
      });

      const { url, data } = await response.json();

      const form = document.createElement("form");
      form.method = "POST";
      form.action = url;

      Object.entries(data).forEach(([key, value]) => {
        const input = document.createElement("input");
        input.type = "hidden";
        input.name = key;
        input.value = value;
        form.appendChild(input);
      });

      document.body.appendChild(form);
      form.submit();
    };

    return { cart, delivery, payNow };
  },
};
</script>

<style scoped>
.input {
  width: 100%;
  padding: 0.6rem;
  border: 1px solid #ccc;
  border-radius: 6px;
}
</style>
