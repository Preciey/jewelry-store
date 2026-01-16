<template>
    <footer class="bg-[#111] text-gray-300 pt-20 pb-10">
        <div class="max-w-7xl mx-auto px-6">
            <!-- TOP GRID -->
            <div class="grid md:grid-cols-4 gap-10 mb-16">
                <!-- BRAND -->
                <div>
                    <h2 class="text-2xl font-serif text-white mb-4">
                        mimie<span class="opacity-60">.</span>
                    </h2>
                    <p class="text-sm leading-relaxed text-gray-400">
                        Thoughtfully curated fragrances and jewellery designed
                        to elevate your everyday elegance.
                    </p>
                </div>

                <!-- SHOP -->
                <div>
                    <h3 class="text-sm text-white mb-4 tracking-widest uppercase">
                        Shop
                    </h3>
                    <ul class="space-y-3 text-sm">
                        <li>
                            <router-link to="/products" class="hover:text-white">All Products</router-link>
                        </li>
                        <li>
                            <router-link to="/category/jewellery" class="hover:text-white">Jewellery</router-link>
                        </li>
                        <li>
                            <router-link to="/category/perfume" class="hover:text-white">Perfumes</router-link>
                        </li>
                        <li>
                            <router-link to="/category/accessories" class="hover:text-white">Accessories</router-link>
                        </li>
                    </ul>
                </div>

                <!-- INFO -->
                <div>
                    <h3 class="text-sm text-white mb-4 tracking-widest uppercase">
                        Information
                    </h3>
                    <ul class="space-y-3 text-sm">
                        <li>
                            <router-link to="/about" class="hover:text-white">About Us</router-link>
                        </li>
                        <li>
                            <router-link to="/contact" class="hover:text-white">Contact</router-link>
                        </li>
                        <li>
                            <router-link to="/shipping" class="hover:text-white">Shipping & Returns</router-link>
                        </li>
                        <li>
                            <router-link to="/privacy-policy" class="hover:text-white">Privacy Policy</router-link>
                        </li>
                    </ul>
                </div>

                <!-- NEWSLETTER -->
              <div>
  <h3 class="text-sm text-white mb-4 tracking-widest uppercase">
    Stay Connected
  </h3>

  <p class="text-sm text-gray-400 mb-4">
    Join our newsletter for exclusive drops and offers.
  </p>

  <form @submit.prevent="submitNewsletter" class="flex flex-col sm:flex-row gap-2">
    <input
      type="email"
      v-model="email"
      placeholder="Your email"
      required
      class="w-full px-4 py-3 text-sm bg-transparent border border-gray-600 text-white focus:outline-none rounded"
    />
    <button
      type="submit"
      :disabled="loading"
      class="bg-white text-black px-5 text-sm hover:bg-gray-200 transition rounded"
    >
      {{ loading ? 'Submitting...' : '→' }}
    </button>
  </form>

  <p v-if="success" class="text-green-500 mt-2">Thank you! Email sent successfully.</p>
  <p v-if="error" class="text-red-500 mt-2">{{ error }}</p>

  <!-- SOCIALS -->
  <div class="flex space-x-6 mt-6 text-lg">
    <a href="#" class="hover:text-white">
      <img src="/public/Images/instagram.png" class="w-6 object-cover rounded-lg" alt="instagram" />
    </a>
    <a href="#" class="hover:text-white">
      <img src="/public/Images/facebook.png" class="w-7 object-cover rounded-lg" alt="facebook" />
    </a>
    <a href="#" class="hover:text-white">
      <img src="/public/Images/tiktok.png" class="w-6 object-cover rounded-lg" alt="tiktok" />
    </a>
  </div>
</div>

            </div>

            <!-- DIVIDER -->
            <div
                class="border-t border-gray-800 pt-6 flex flex-col md:flex-row justify-center items-center text-xs text-gray-500">
                <p>© {{ year }} Mimie Store. All rights reserved.</p>
            </div>
        </div>
    </footer>
</template>

<script setup>
const year = new Date().getFullYear();

import { ref } from 'vue'
import axios from 'axios'

const email = ref('')
const loading = ref(false)
const success = ref(false)
const error = ref('')

const submitNewsletter = async () => {
  loading.value = true
  success.value = false
  error.value = ''

  try {
    await axios.post('/api/newsletter', { email: email.value })
    success.value = true
    email.value = ''
  } catch (err) {
    error.value = 'Failed to send email. Please try again later.'
  } finally {
    loading.value = false
  }
}
</script>


<style scoped>
/* Optional subtle hover animation */
a {
    transition: color 0.2s ease;
}
</style>
