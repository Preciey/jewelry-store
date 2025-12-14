<template>
  <div class="container mx-auto p-8">
    <h1 class="text-3xl font-bold mb-6 text-center">Featured Products</h1>

    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
      <div v-for="product in products" :key="product.id" class="border rounded-lg p-4 hover:shadow-lg transition">
        <!-- Link to Product Details -->
        <router-link :to="{ name: 'product-details', params: { slug: product.slug } }">
          <img :src="product.image" alt="" class="w-full h-64 object-cover rounded-lg mb-4">
          <h2 class="text-xl font-semibold">{{ product.name }}</h2>
        </router-link>

        <div class="flex items-center gap-2 mt-1">
          <span class="text-pink-700 font-bold text-lg">${{ product.price }}</span>
          <span v-if="product.old_price" class="line-through text-gray-400">${{ product.old_price }}</span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { onMounted } from 'vue'
import { useProductStore } from '../stores/product'

export default {
  setup() {
    const productStore = useProductStore()

    onMounted(() => {
      if (!productStore.products.length) productStore.fetchProducts()
    })

    return {
      products: productStore.products,
    }
  },
}
</script>
