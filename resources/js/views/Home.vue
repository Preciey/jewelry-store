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

                    <button class="btn-dark">BUY NOW</button>
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
                        <button class="btn-dark">BUY NOW</button>
                    </div>

                    <img src="/public/Images/harper-sunday-half.jpg" class="w-40" alt="Perfume" />
                </div>

                <div class="bg-slate-200 rounded-3xl p-14 flex items-center justify-between">
                    <div>
                        <h3 class="text-2xl font-serif mb-3">Elegant Necklaces</h3>
                        <p class="text-gray-600 mb-5 max-w-sm">
                            Elevate your look with subtle elegance and everyday wearability.
                        </p>
                        <button class="btn-dark">BUY NOW</button>
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
        <section class="bg-white py-24 px-6">
            <div class="max-w-6xl mx-auto grid md:grid-cols-2 items-center gap-12">

                <div>
                    <h2 class="text-4xl font-serif mb-6">
                        Flat 30% off <br />
                        limited time offer!
                    </h2>

                    <div class="flex gap-3 mb-8">
                        <div v-for="unit in ['DAYS', 'HOURS', 'MINUTES', 'SECONDS']" :key="unit"
                            class="border px-5 py-4 text-sm">
                            {{ unit }}
                        </div>
                    </div>

                    <button class="btn-dark">BUY NOW</button>
                </div>

                    <img src="/public/Images/harper-sunday-half.jpg" class="w-40 rounded-xl" alt="Necklace" />
            </div>

            <!-- FEATURES -->
            <div class="grid md:grid-cols-4 gap-10 text-center mt-20">
                <div>
                    <div class="text-3xl mb-3">🚚</div>
                    <h4 class="font-medium">Free Shipping</h4>
                    <p class="text-sm text-gray-600">Orders over R400</p>
                </div>

                <div>
                    <div class="text-3xl mb-3">🎧</div>
                    <h4 class="font-medium">Online Support</h4>
                    <p class="text-sm text-gray-600">24/7 Support</p>
                </div>

                <div>
                    <div class="text-3xl mb-3">✔️</div>
                    <h4 class="font-medium">Purchase Confidence</h4>
                    <p class="text-sm text-gray-600">Quality you can trust</p>
                </div>

                <div>
                    <div class="text-3xl mb-3">🔒</div>
                    <h4 class="font-medium">Secure Payment</h4>
                    <p class="text-sm text-gray-600">Protected checkout</p>
                </div>
            </div>
        </section>
    </div>
</template>

<script>
export default {
    name: "Home",
    data() {
        return {
            categories: [
                {
                    name: "Necklaces",
                    image: "https://via.placeholder.com/400x400",
                    link: "/category/necklace",
                },
                {
                    name: "Bracelets",
                    image: "https://via.placeholder.com/400x400",
                    link: "/category/bracelet",
                },
                {
                    name: "Earrings",
                    image: "https://via.placeholder.com/400x400",
                    link: "/category/earring",
                },
                {
                    name: "Rings",
                    image: "https://via.placeholder.com/400x400",
                    link: "/category/ring",
                },
                {
                    name: "Anklets",
                    image: "https://via.placeholder.com/400x400",
                    link: "/category/anklet",
                },
                {
                    name: "Accessories",
                    image: "https://via.placeholder.com/400x400",
                    link: "/category/accessory",
                },
            ],
            products: [
                {
                    id: 1,
                    name: "Pearl Necklace",
                    slug: "pearl-necklace",
                    price: 50,
                    old_price: 75,
                    image: "https://via.placeholder.com/300x300",
                    category: "necklace",
                },
                {
                    id: 2,
                    name: "Bee Pendant Necklace",
                    slug: "bee-necklace",
                    price: 50,
                    old_price: 60,
                    image: "https://via.placeholder.com/300x300",
                    category: "necklace",
                },
                {
                    id: 3,
                    name: "Star Choker",
                    slug: "star-choker",
                    price: 40,
                    image: "https://via.placeholder.com/300x300",
                    category: "necklace",
                },
                {
                    id: 4,
                    name: "Gold Earrings",
                    slug: "gold-earrings",
                    price: 30,
                    old_price: 50,
                    image: "https://via.placeholder.com/300x300",
                    category: "earring",
                },
            ],
        };
    },
};
</script>
