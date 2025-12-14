<template>
  <div class="flex flex-col items-center justify-center h-screen bg-gray-100 text-gray-800">
    <h1 class="text-6xl font-bold mb-4">404</h1>
    <h2 class="text-2xl mb-6">Page Not Found</h2>
    <p class="mb-6">Sorry, the page you are looking for does not exist.</p>
    <router-link
      to="/"
      class="px-6 py-3 bg-pink-600 text-white rounded hover:bg-pink-700 transition"
    >
      Go Home
    </router-link>
  </div>
</template>

<script>
export default {
  name: "NotFound",
};
</script>

<style scoped>
/* optional additional styling */
</style>
