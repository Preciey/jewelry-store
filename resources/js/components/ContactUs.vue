<template>
  <div class="max-w-7xl mx-auto px-6 py-20">
    <!-- Header -->
    <div class="text-center mb-16">
      <h1 class="text-4xl font-serif mb-4">Contact Us</h1>
      <p class="text-gray-600 max-w-2xl mx-auto">
        Have a question about our products, orders, or collaborations?
        We’d love to hear from you.
      </p>
    </div>

    <div class="grid md:grid-cols-2 gap-16 items-start">
      <!-- Contact Info -->
      <div class="space-y-6">
        <div>
          <h3 class="text-lg font-medium mb-2">Customer Care</h3>
          <p class="text-gray-600">Email us anytime and we’ll get back to you within 24 hours.</p>
          <p class="mt-2 font-medium">care@mimiestore.co.za</p>
        </div>

        <div>
          <h3 class="text-lg font-medium mb-2">Location</h3>
          <p class="text-gray-600">
            South Africa <br />
            Online-only store
          </p>
        </div>

        <div>
          <h3 class="text-lg font-medium mb-2">Follow Us</h3>
          <div class="flex gap-4 mt-3">
      <img src="/public/Images/instagram.png" class="w-6 object-cover rounded-lg" alt="instagram" />
      <img src="/public/Images/facebook.png" class="w-7 object-cover rounded-lg" alt="facebook" />
      <img src="/public/Images/tiktok.png" class="w-6 object-cover rounded-lg" alt="tiktok" />
          </div>
        </div>
      </div>

      <!-- Contact Form -->
      <div class="bg-white border rounded-2xl p-8 shadow-sm">
        <form @submit.prevent="submitForm" class="space-y-5">
          <div>
            <label class="block text-sm mb-1">Full Name</label>
            <input
              v-model="form.name"
              type="text"
              required
              class="w-full border px-4 py-3 rounded focus:outline-none"
            />
          </div>

          <div>
            <label class="block text-sm mb-1">Email Address</label>
            <input
              v-model="form.email"
              type="email"
              required
              class="w-full border px-4 py-3 rounded focus:outline-none"
            />
          </div>

          <div>
            <label class="block text-sm mb-1">Message</label>
            <textarea
              v-model="form.message"
              rows="5"
              required
              class="w-full border px-4 py-3 rounded focus:outline-none"
            ></textarea>
          </div>

          <button
            type="submit"
            :disabled="loading"
            class="w-full bg-black text-white py-3 rounded hover:bg-black/80 transition"
          >
            {{ loading ? 'Sending...' : 'Send Message' }}
          </button>

          <p v-if="success" class="text-green-600 text-sm mt-2">
            Your message has been sent successfully.
          </p>
          <p v-if="error" class="text-red-600 text-sm mt-2">
            {{ error }}
          </p>
        </form>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import axios from 'axios'

const loading = ref(false)
const success = ref(false)
const error = ref('')

const form = ref({
  name: '',
  email: '',
  message: '',
})

const submitForm = async () => {
  loading.value = true
  success.value = false
  error.value = ''

  try {
    await axios.post('/api/contact', form.value)
    success.value = true
    form.value = { name: '', email: '', message: '' }
  } catch (e) {
    error.value = 'Something went wrong. Please try again later.'
  } finally {
    loading.value = false
  }
}
</script>
