<template>
    <header class="w-full border-b border-gray-200 relative">

        <!-- MESSAGE BAR -->
        <div class="bg-black text-white text-xs md:text-sm px-4 py-2">

            <!-- DESKTOP MESSAGE BAR -->
            <div class="hidden md:flex items-center justify-between px-12">
                <p class="tracking-wide">Free delivery on orders over R450!</p>
                <p class="tracking-wide">Welcome to Mimie Store!</p>
                <p class="tracking-wide">Sign up and get 10% off your first order!</p>
            </div>

            <!-- MOBILE MESSAGE BAR -->
            <div class="md:hidden text-center min-h-[1.25rem]">
                <transition name="fade" mode="out-in">
                    <p :key="currentMessage" class="tracking-wide">
                        {{ messages[currentMessage] }}
                    </p>
                </transition>
            </div>

        </div>

        <!-- NAVBAR -->
        <nav class="max-w-7xl mx-auto px-6 py-5 flex items-center justify-between relative z-50">

            <!-- LEFT LINKS -->
            <div class="hidden md:flex items-center space-x-8 text-sm">

                <router-link to="/" class="nav-link">Home</router-link>

                <!-- JEWELLERY MEGA MENU -->
                <div class="relative group">
                    <span class="nav-link cursor-pointer">Jewellery <i class="fa-light fa-caret-down"></i></span>

                    <div class="absolute left-1/2 top-full mt-6 w-[700px] -translate-x-1/2
                               bg-white border border-gray-200 shadow-xl
                               opacity-0 invisible group-hover:opacity-100 group-hover:visible
                               transition-all duration-300 z-50">
                        <div class="grid grid-cols-3 gap-8 p-8">

                            <div class="space-y-4 flex flex-col">
                                <p class="text-xs uppercase tracking-widest text-gray-500">
                                    Shop Jewellery
                                </p>

                                <router-link to="/jewellery/necklaces" class="mega-link">Necklaces</router-link>
                                <router-link to="/jewellery/bracelets" class="mega-link">Bracelets</router-link>
                                <router-link to="/jewellery/earrings" class="mega-link">Earrings</router-link>
                                <router-link to="/jewellery/rings" class="mega-link">Rings</router-link>
                            </div>

                            <div class="space-y-4 flex flex-col">
                                <p class="text-xs uppercase tracking-widest text-gray-500">
                                    Featured
                                </p>

                                <router-link to="/jewellery/new" class="mega-link">New Arrivals</router-link>
                                <router-link to="/jewellery/bestsellers" class="mega-link">Best Sellers</router-link>
                                <router-link to="/jewellery/gifts" class="mega-link">Gift Sets</router-link>
                            </div>

                            <div class="relative">
                                <img src="/public/Images/harper-sunday-half.jpg"
                                    class="w-full h-48 object-cover rounded-lg" alt="Jewellery" />
                                <span class="absolute bottom-4 left-4 text-white text-sm tracking-wide">
                                    Timeless pieces
                                </span>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- SCENTS MEGA MENU -->
                <div class="relative group">
                    <span class="nav-link cursor-pointer">Scents</span>

                    <div class="absolute left-1/2 top-full mt-6 w-[700px] -translate-x-1/2
                               bg-white border border-gray-200 shadow-xl
                               opacity-0 invisible group-hover:opacity-100 group-hover:visible
                               transition-all duration-300 z-50">
                        <div class="grid grid-cols-3 gap-8 p-8">

                            <div class="space-y-4 flex flex-col">
                                <p class="text-xs uppercase tracking-widest text-gray-500">
                                    Shop Scents
                                </p>

                                <router-link to="/scents/perfumes" class="mega-link">Perfumes</router-link>
                                <router-link to="/scents/candles" class="mega-link">Lotions</router-link>
                                <router-link to="/scents/body-mists" class="mega-link">Body Mists</router-link>
                                <router-link to="/scents/oils" class="mega-link">Fragrance Oils</router-link>
                            </div>

                            <div class="space-y-4 flex flex-col">
                                <p class="text-xs uppercase tracking-widest text-gray-500">
                                    Collections
                                </p>

                                <router-link to="/scents/signature" class="mega-link">Signature Line</router-link>
                                <router-link to="/scents/gifting" class="mega-link">Gifting</router-link>
                            </div>

                            <div class="relative">
                                <img src="/public/Images/harper-sunday-half.jpg"
                                    class="w-full h-48 object-cover rounded-lg" alt="Scents" />
                                <span class="absolute bottom-4 left-4 text-white text-sm tracking-wide">
                                    Luxury aromas
                                </span>
                            </div>

                        </div>
                    </div>
                </div>

                <router-link to="/about" class="nav-link">About Us</router-link>
            </div>

            <!-- LOGO -->
            <router-link to="/" class="text-2xl font-serif tracking-wide text-black">
                mimie<span class="opacity-60">.</span>
            </router-link>

            <!-- RIGHT ICONS -->
            <div class="flex items-center space-x-6 relative">

                <!-- DESKTOP SEARCH BUTTON -->
                <button @click="showSearch = !showSearch" class="hidden md:block hover:opacity-70 transition">
                    <img class="w-4" src="/public/Images/magnifying-glass.png" />
                </button>

                <!-- MOBILE SEARCH BUTTON -->
                <button @click="showSearch = !showSearch" class="md:hidden text-xl">
                    <img class="w-4" src="/public/Images/magnifying-glass.png" />

                </button>

                <router-link to="/account" class="hover:opacity-70 transition">
                    <img class="w-4" src="/public/Images/user.png" />
                </router-link>

                <router-link to="/cart" class="relative hover:opacity-70 transition">
                    <img class="w-4" src="/public/Images/shopping-bag.png" />
                    <span class="absolute -top-2 -right-3 bg-black text-white text-[10px] px-1.5 rounded-full">
                        2
                    </span>
                </router-link>

                <!-- MOBILE MENU BUTTON -->
                <button @click="open = !open" class="md:hidden text-xl">
                    ☰
                </button>
            </div>
        </nav>

        <!-- SEARCH BAR BELOW NAV -->
        <transition name="slide-fade">
    <div v-if="showSearch" ref="searchRef"
         class="w-full bg-gray-50 border-t border-gray-200 px-6 py-4 md:px-12 absolute top-full flex justify-center left-0 z-40">
        <input type="text" placeholder="Search products..."
               class="w-full md:w-1/2 px-4 py-2 border border-gray-300 rounded focus:outline-none focus:ring-2 focus:ring-black" />
    </div>
</transition>

        <!-- MOBILE MENU -->
        <transition enter-active-class="transition-all duration-300 ease-out"
            enter-from-class="opacity-0 -translate-y-4" enter-to-class="opacity-100 translate-y-0"
            leave-active-class="transition-all duration-200 ease-in" leave-from-class="opacity-100 translate-y-0"
            leave-to-class="opacity-0 -translate-y-4">
            <div v-if="open" class="md:hidden bg-white border-t border-gray-200">
                <div class="px-6 py-6 space-y-6 text-sm">

                    <router-link to="/" @click="open = false" class="block font-medium">
                        Home
                    </router-link>

                    <div class="space-y-3">
                        <p class="text-xs uppercase tracking-widest text-gray-500">Jewellery</p>
                        <router-link to="/jewellery/necklaces" @click="open = false"
                            class="block">Necklaces</router-link>
                        <router-link to="/jewellery/bracelets" @click="open = false"
                            class="block">Bracelets</router-link>
                        <router-link to="/jewellery/earrings" @click="open = false" class="block">Earrings</router-link>
                        <router-link to="/jewellery/rings" @click="open = false" class="block">Rings</router-link>
                    </div>

                    <div class="space-y-3">
                        <p class="text-xs uppercase tracking-widest text-gray-500">Scents</p>
                        <router-link to="/scents/perfumes" @click="open = false" class="block">Perfumes</router-link>
                        <router-link to="/scents/lotions" @click="open = false" class="block">Lotions</router-link>
                        <router-link to="/scents/body-mists" @click="open = false" class="block">Body
                            Mists</router-link>
                        <router-link to="/scents/oils" @click="open = false" class="block">Fragrance Oils</router-link>
                    </div>

                    <router-link to="/about" @click="open = false" class="block font-medium">
                        About Us
                    </router-link>

                    <div class="pt-4 border-t border-gray-200 space-y-4">
                        <router-link to="/account" @click="open = false" class="block">My Account</router-link>
                        <router-link to="/cart" @click="open = false" class="block">Cart</router-link>
                    </div>

                </div>
            </div>
        </transition>

    </header>
</template>

<script setup>
import { ref, watch, onMounted } from 'vue'
import { useRoute } from 'vue-router'

const open = ref(false)
const showSearch = ref(false)
const route = useRoute()
const searchRef = ref(null)

watch(
    () => route.fullPath,
    () => {
        open.value = false
        showSearch.value = false
    }
)

/* MESSAGE BAR ROTATION */
const messages = [
    'Free delivery on orders over R450!',
    'Welcome to Mimie Store!',
    'Sign up and get 10% off your first order!'
]

const currentMessage = ref(0)

onMounted(() => {
    setInterval(() => {
        currentMessage.value =
            (currentMessage.value + 1) % messages.length
    }, 3000)
    
})
</script>

<style scoped>
/* MESSAGE BAR FADE */
.fade-enter-active,
.fade-leave-active {
    transition: opacity 0.5s ease;
}

.fade-enter-from,
.fade-leave-to {
    opacity: 0;
}

/* SEARCH BAR SLIDE */
.slide-fade-enter-active {
    transition: all 0.3s ease-out;
}

.slide-fade-leave-active {
    transition: all 0.2s ease-in;
}

.slide-fade-enter-from {
    opacity: 0;
    transform: translateY(-10px);
}

.slide-fade-enter-to {
    opacity: 1;
    transform: translateY(0);
}

.slide-fade-leave-from {
    opacity: 1;
    transform: translateY(0);
}

.slide-fade-leave-to {
    opacity: 0;
    transform: translateY(-10px);
}
</style>
