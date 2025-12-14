<template>
  <div class="relative w-screen">

    <!-- Hero Section -->
    <div class="-z-10 relative">
      <div class="flex justify-center items-center relative">
        <img class="w-screen object-cover" src="https://via.placeholder.com/1600x600" alt="home image">
        <router-link to="/products" class="absolute bg-black text-white p-4 px-8 hover:bg-black/80">
          Shop All
        </router-link>
      </div>
    </div>

    <!-- About / Intro Section -->
    <div class="flex justify-center py-10">
      <div class="container flex flex-col items-center px-8 md:px-14">
        <h1 class="text-xl md:text-3xl font-serif text-center">
          <strong class="block">EXPERIENCE • QUALITY • AFFORDABLE</strong>
        </h1>
        <p class="text-center md:text-xl mt-4">
          We believe that how we create our pieces matters just as much as why people wear them.
          Luxury for everyone.
        </p>
      </div>
    </div>

    <!-- Categories Section -->
    <div class="py-10 w-screen bg-pink-50">
      <div class="text-3xl uppercase px-8 md:px-48 mb-6">
        Categories
      </div>
      <div class="grid lg:grid-cols-3 md:grid-cols-2 grid-cols-1 gap-8 px-8 md:px-48">
        <div v-for="category in categories" :key="category.name">
          <router-link :to="category.link" class="relative block">
            <h1 class="absolute z-50 p-2 m-6 font-bold bg-black/60 text-white text-3xl">
              {{ category.name }}
            </h1>
            <img :src="category.image" alt="" class="w-full h-96 object-cover rounded-2xl transition ease-in-out delay-150 hover:-translate-y-1 hover:scale-105">
          </router-link>
        </div>
      </div>
    </div>

    <!-- Featured Products Section -->
    <div class="w-screen p-8">
      <h1 class="text-3xl font-bold mb-6 text-center">Featured Products</h1>
      <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
        <div v-for="product in products" :key="product.id" class="border rounded-lg p-4 hover:shadow-lg transition">
          <router-link :to="`/product/${product.slug}`">
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
    </div>

  </div>
</template>

<script>
export default {
  name: 'Home',
  data() {
    return {
      categories: [
        { name: 'Necklaces', image: 'https://via.placeholder.com/400x400', link: '/category/necklace' },
        { name: 'Bracelets', image: 'https://via.placeholder.com/400x400', link: '/category/bracelet' },
        { name: 'Earrings', image: 'https://via.placeholder.com/400x400', link: '/category/earring' },
        { name: 'Rings', image: 'https://via.placeholder.com/400x400', link: '/category/ring' },
        { name: 'Anklets', image: 'https://via.placeholder.com/400x400', link: '/category/anklet' },
        { name: 'Accessories', image: 'https://via.placeholder.com/400x400', link: '/category/accessory' },
      ],
      products: [
        { id: 1, name: 'Pearl Necklace', slug: 'pearl-necklace', price: 50, old_price: 75, image: 'https://via.placeholder.com/300x300', category: 'necklace' },
        { id: 2, name: 'Bee Pendant Necklace', slug: 'bee-necklace', price: 50, old_price: 60, image: 'https://via.placeholder.com/300x300', category: 'necklace' },
        { id: 3, name: 'Star Choker', slug: 'star-choker', price: 40, image: 'https://via.placeholder.com/300x300', category: 'necklace' },
        { id: 4, name: 'Gold Earrings', slug: 'gold-earrings', price: 30, old_price: 50, image: 'https://via.placeholder.com/300x300', category: 'earring' },
      ],
    }
  }
}
</script>
