<template>
  <header class="w-full border-b border-gray-200 bg-white">
    <nav class="max-w-7xl mx-auto px-6 py-5 flex items-center justify-between">

      <!-- LEFT LINKS -->
      <div class="hidden md:flex items-center space-x-8 text-sm">
        <router-link to="/" class="nav-link">Home</router-link>
        <router-link to="/products" class="nav-link">Shop</router-link>
        <router-link to="/about" class="nav-link">About</router-link>
      </div>

      <!-- LOGO -->
      <router-link
        to="/"
        class="text-2xl font-serif tracking-wide text-black"
      >
        mimie<span class="opacity-60">.</span>
      </router-link>

      <!-- RIGHT ICONS -->
      <div class="flex items-center space-x-6">

        <!-- Search (optional) -->
        <button class="hidden md:block hover:opacity-70 transition">
          🔍
        </button>

        <!-- Account -->
        <router-link to="/account" class="hover:opacity-70 transition">
          👤
        </router-link>

        <!-- Cart -->
        <router-link to="/cart" class="relative hover:opacity-70 transition">
          👜
          <span
            class="absolute -top-2 -right-3 bg-black text-white text-[10px] px-1.5 rounded-full"
          >
            2
          </span>
        </router-link>

        <!-- Mobile Menu Button -->
        <button
          @click="open = !open"
          class="md:hidden text-xl"
        >
          ☰
        </button>
      </div>

    </nav>

    <!-- MOBILE MENU -->
  
  </header>
</template>

<script setup>
import { ref } from 'vue'

const open = ref(false)
</script>


