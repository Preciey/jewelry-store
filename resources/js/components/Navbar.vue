<template>
  <nav class="bg-black text-white p-4">
    <div class="container mx-auto flex justify-between items-center">
      <router-link to="/" class="font-bold text-lg">Mimie Jewellery</router-link>
      <div class="space-x-4 flex items-center">
        <router-link to="/products" class="hover:text-pink-500">Shop</router-link>
        <router-link to="/about" class="hover:text-pink-500">About</router-link>
        <router-link to="/contact" class="hover:text-pink-500">Contact</router-link>

        <router-link to="/cart" class="relative px-4 py-2 hover:text-pink-700">
          Cart
          <span v-if="cartCount > 0" class="absolute -top-2 -right-2 bg-pink-700 text-white rounded-full text-xs w-5 h-5 flex items-center justify-center">
            {{ cartCount }}
          </span>
        </router-link>
      </div>
    </div>
  </nav>
</template>

<script>
import { computed } from 'vue';
import { useCartStore } from '../stores/cart';

export default {
  setup() {
    const cart = useCartStore();
    const cartCount = computed(() => cart.totalItems);

    return { cartCount };
  }
}
</script>
