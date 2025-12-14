<template>
  <div class="container mx-auto p-8">
    <h1 class="text-3xl font-bold mb-6 capitalize">
      {{ categoryName }} Products
    </h1>

    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
     <router-link
  v-for="product in filteredProducts"
  :key="product.id"
  :to="{ name: 'product-details', params: { slug: product.slug } }"
  class="block border rounded-lg p-4 hover:shadow-lg transition">
        <img :src="product.image" alt="" class="w-full h-64 object-cover rounded-lg mb-4">
        <h2 class="text-xl font-semibold">{{ product.name }}</h2>
        <div class="flex items-center gap-2 mt-1">
          <span class="text-pink-700 font-bold text-lg">${{ product.price }}</span>
          <span v-if="product.old_price" class="line-through text-gray-400">${{ product.old_price }}</span>
        </div>
        <p class="mt-2 text-gray-600 capitalize">{{ product.category }}</p>
     </router-link>
    </div>
  </div>
</template>

<script>
import { computed, onMounted } from 'vue';
import { useRoute } from 'vue-router';
import { useProductStore } from '../stores/product';

export default {
  setup() {
    const route = useRoute(); // <-- get the route
    const productStore = useProductStore();

    // dynamic category from route param
    const categoryName = computed(() => route.params.category || 'all');

    const filteredProducts = computed(() => {
      if (!categoryName.value || categoryName.value === 'all') {
        return productStore.products;
      }
      return productStore.products.filter(
        p => p.category.toLowerCase() === categoryName.value.toLowerCase()
      );
    });

    onMounted(() => {
      if (!productStore.products.length) {
        productStore.fetchProducts(); // make sure products are loaded
      }
    });

    return { filteredProducts, categoryName };
  },
};
</script>
