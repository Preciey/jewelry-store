<template>
    <div class="relative w-screen">
        <!-- Hero Section -->
        <section class="relative">
            <img class="bg-cover w-screen bg-no-repeat" src="/public/Images/harper-sunday-half.jpg" alt="Hero Image" />

            <div class="absolute inset-0 flex items-center justify-center">
                <router-link to="/products" class="bg-black text-white px-8 py-4 hover:bg-black/80 transition">
                    SHOP ALL
                </router-link>
            </div>
        </section>

        <!-- CATEGORY SECTION -->
        <section class="max-w-7xl mx-auto py-20 px-6 grid md:grid-cols-2 gap-8">

            <!-- Left Tall Card -->
            <div class="bg-[#f1e0c8] rounded-3xl p-10 flex flex-col justify-between">
                <div>
                    <h2 class="text-3xl font-serif mb-4">Radient Bracelets</h2>
                    <p class="text-gray-700 mb-6">
                        Crafted to be both minimal and meaningful, our bracelets are more than accessories
                    </p>

                    <button class="btn-dark bg-orange-300 hover:bg-orange-400 rounded-md p-3">BUY NOW</button>
                </div>

                <img src="/public/Images/harper-sunday-half.jpg" class="rounded-xl mt-10" alt="Bracelets" />
            </div>

            <!-- Right Cards -->
            <div class="space-y-8">

                <div class="bg-slate-200 rounded-3xl p-14 flex items-center justify-between">
                    <div>
                        <h3 class="text-2xl font-serif mb-3">Essence of Elegance</h3>
                        <p class="text-gray-600 mb-5 max-w-sm">
                            Discover the timeless allure of our curated perfume collection.
                        </p>
                        <button class="btn-dark bg-slate-300 hover:bg-slate-400 rounded-md p-3">BUY NOW</button>
                    </div>

                    <img src="/public/Images/harper-sunday-half.jpg" class="w-40" alt="Perfume" />
                </div>

                <div class="bg-slate-200 rounded-3xl p-14 flex items-center justify-between">
                    <div>
                        <h3 class="text-2xl font-serif mb-3">Elegant Necklaces</h3>
                        <p class="text-gray-600 mb-5 max-w-sm">
                            Elevate your look with subtle elegance and everyday wearability.
                        </p>
                        <button class="btn-dark bg-slate-300 hover:bg-slate-400 rounded-md p-3">BUY NOW</button>
                    </div>

                    <img src="/public/Images/harper-sunday-half.jpg" class="w-40 rounded-xl" alt="Necklace" />
                </div>

            </div>
        </section>

        <!-- SIGNATURE SELECTIONS -->
        <section class="max-w-7xl mx-auto py-24 px-6 text-center">
            <h2 class="text-4xl font-serif mb-4">Signature Selections</h2>

            <p class="max-w-3xl mx-auto text-gray-600 mb-16">
                These are the pieces everyone’s reaching for and for good reasons.
                From dainty layers to bold accents, these customer favorites speak to effortless luxury.
            </p>

            <div class="grid md:grid-cols-4 gap-10">
                <div v-for="item in products" :key="item.name">
                    <img :src="item.image" class="mx-auto mb-4" />
                    <h3 class="text-sm">{{ item.name }}</h3>
                    <p class="text-sm font-medium mt-1">R {{ item.price }}</p>
                </div>
            </div>
        </section>

        <!-- PROMO -->
        <section class="bg-white py-24 px-6 bg-gray-200">
            <div class="max-w-6xl mx-auto grid md:grid-cols-2 items-center gap-12">

                <div>
                    <h2 class="text-4xl font-serif mb-6">
                        Flat 30% off <br />
                        limited time offer!
                    </h2>

                    <!-- TIMER -->
                    <div class="flex gap-3 mb-8">
                        <div class="border-2 border-slate-400 rounded-md px-3 py-3 text-center">
                            <p class="text-xl font-semibold">{{ time.days }}</p>
                            <span class="text-xs tracking-widest">DAYS</span>
                        </div>

                        <div class="border-2 border-slate-400 rounded-md px-3 py-3 text-center">
                            <p class="text-xl font-semibold">{{ time.hours }}</p>
                            <span class="text-xs tracking-widest">HOURS</span>
                        </div>

                        <div class="border-2 border-slate-400 rounded-md px-3 py-3 text-center">
                            <p class="text-xl font-semibold">{{ time.minutes }}</p>
                            <span class="text-xs tracking-widest">MINUTES</span>
                        </div>

                        <div class="border-2 border-slate-400 rounded-md px-3 py-3 text-center">
                            <p class="text-xl font-semibold">{{ time.seconds }}</p>
                            <span class="text-xs tracking-widest">SECONDS</span>
                        </div>
                    </div>

                    <button class="btn-dark bg-black hover:bg-slate-400 text-white rounded-md p-3 ">BUY NOW</button>
                </div>

                <img src="/public/Images/harper-sunday-half.jpg" class="w-40 rounded-xl" alt="Necklace" />

            </div>
        </section>
        <section class="bg-white py-16 px-6 ">

            <!-- FEATURES -->
         <div class="grid md:grid-cols-4 gap-10 text-center">

  <div>
    <div class="flex justify-center mb-3">
      <img src="/public/Images/shipping.png" class="w-8" alt="shipping" />
    </div>
    <h4 class="font-medium">Free Shipping</h4>
    <p class="text-sm text-gray-600">Free shipping on orders > R450</p>
  </div>

  <div>
    <div class="flex justify-center mb-3">
      <img src="/public/Images/support.png" class="w-8" alt="support" />
    </div>
    <h4 class="font-medium">Online Support</h4>
    <p class="text-sm text-gray-600">Contact us 24 hours, 7 days</p>
  </div>

  <div>
    <div class="flex justify-center mb-3">
      <img src="/public/Images/money-guarantee.png" class="w-8" alt="money-guarantee" />
    </div>
    <h4 class="font-medium">Purchase Confidence</h4>
    <p class="text-sm text-gray-600">Quality you can trust</p>
  </div>

  <div>
    <div class="flex justify-center mb-3">
      <img src="/public/Images/wallet.png" class="w-8" alt="wallet" />
    </div>
    <h4 class="font-medium">Secure Payment</h4>
    <p class="text-sm text-gray-600">We ensure secure payment</p>
  </div>

</div>

        </section>
    </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue'

// SET YOUR END DATE HERE
const endDate = new Date('2026-02-01T23:59:59')

const time = ref({
    days: '00',
    hours: '00',
    minutes: '00',
    seconds: '00',
})

let timerInterval = null

const updateTimer = () => {
    const now = new Date()
    const diff = endDate - now

    if (diff <= 0) {
        clearInterval(timerInterval)
        return
    }

    time.value.days = String(Math.floor(diff / (1000 * 60 * 60 * 24))).padStart(2, '0')
    time.value.hours = String(Math.floor((diff / (1000 * 60 * 60)) % 24)).padStart(2, '0')
    time.value.minutes = String(Math.floor((diff / (1000 * 60)) % 60)).padStart(2, '0')
    time.value.seconds = String(Math.floor((diff / 1000) % 60)).padStart(2, '0')
}

onMounted(() => {
    updateTimer()
    timerInterval = setInterval(updateTimer, 1000)
})

onUnmounted(() => {
    clearInterval(timerInterval)
})
</script>
