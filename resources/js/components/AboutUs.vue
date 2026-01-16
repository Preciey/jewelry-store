<template>
  <div class="w-full">

    <!-- HERO SECTION -->
    <section class="bg-gray-50 py-20 px-6 md:px-12 text-center">
      <h1 class="text-4xl md:text-5xl font-serif font-bold mb-4 text-black">
        About Us
      </h1>
      <p class="text-gray-600 max-w-2xl mx-auto text-lg md:text-xl">
        Discover the story behind Mimie Store and what drives our passion for exquisite jewellery and luxury scents.
      </p>
    </section>

    <!-- OUR STORY -->
    <section class="py-20 px-6 md:px-12 bg-white">
      <div class="max-w-5xl mx-auto grid md:grid-cols-2 gap-10 items-center">
        <img src="/public/Images/about-hero.jpg" alt="Our Story" class="w-full rounded-lg shadow-lg object-cover h-80 md:h-96" />
        <div>
          <h2 class="text-3xl font-serif font-bold mb-4 text-black">Our Story</h2>
          <p class="text-gray-700 mb-4">
            Mimie Store started with a simple mission: to bring timeless jewellery and luxurious scents to everyone. Our journey began with a small collection, and through passion and dedication, we’ve grown into a brand known for elegance, quality, and care.
          </p>
          <p class="text-gray-700">
            We believe that every piece of jewellery and every fragrance tells a story. At Mimie Store, we craft experiences that leave lasting impressions.
          </p>
        </div>
      </div>
    </section>

    <!-- OUR VALUES -->
    <section class="py-20 px-6 md:px-12 bg-gray-50">
      <div class="max-w-5xl mx-auto text-center">
        <h2 class="text-3xl font-serif font-bold mb-12 text-black">Our Values</h2>
        <div class="grid md:grid-cols-3 gap-10">
          <div class="bg-white p-6 rounded-lg shadow hover:shadow-lg transition">
            <h3 class="text-xl font-semibold mb-2">Quality</h3>
            <p class="text-gray-600">
              We prioritize premium materials and craftsmanship in every product we offer.
            </p>
          </div>
          <div class="bg-white p-6 rounded-lg shadow hover:shadow-lg transition">
            <h3 class="text-xl font-semibold mb-2">Customer Care</h3>
            <p class="text-gray-600">
              Your satisfaction is our priority. We provide a seamless and personal shopping experience.
            </p>
          </div>
          <div class="bg-white p-6 rounded-lg shadow hover:shadow-lg transition">
            <h3 class="text-xl font-semibold mb-2">Sustainability</h3>
            <p class="text-gray-600">
              We strive to source ethically and reduce our environmental impact wherever possible.
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- TEAM SECTION -->
    <section class="py-20 px-6 md:px-12 bg-white">
      <div class="max-w-5xl mx-auto text-center">
        <h2 class="text-3xl font-serif font-bold mb-12 text-black">Meet the Team</h2>
        <div class="grid md:grid-cols-3 gap-10">
          <div class="space-y-4">
            <img src="/public/Images/team1.jpg" alt="Team Member" class="w-full h-72 object-cover rounded-lg shadow-lg" />
            <h3 class="text-xl font-semibold">Jane Doe</h3>
            <p class="text-gray-600 text-sm">Founder & CEO</p>
          </div>
          <div class="space-y-4">
            <img src="/public/Images/team2.jpg" alt="Team Member" class="w-full h-72 object-cover rounded-lg shadow-lg" />
            <h3 class="text-xl font-semibold">John Smith</h3>
            <p class="text-gray-600 text-sm">Head of Design</p>
          </div>
          <div class="space-y-4">
            <img src="/public/Images/team3.jpg" alt="Team Member" class="w-full h-72 object-cover rounded-lg shadow-lg" />
            <h3 class="text-xl font-semibold">Mary Johnson</h3>
            <p class="text-gray-600 text-sm">Marketing Lead</p>
          </div>
        </div>
      </div>
    </section>

    <!-- CTA -->
    <section class="bg-gray-50 py-16 px-6 md:px-12 text-center">
      <h2 class="text-3xl font-serif font-bold mb-4 text-black">Join Our Journey</h2>
      <p class="text-gray-600 mb-6">
        Be part of our community and explore exclusive collections, offers, and updates.
      </p>
      <router-link to="/account" class="bg-black text-white px-6 py-3 rounded-md hover:opacity-80 transition">
        Sign Up Now
      </router-link>
    </section>

  </div>
</template>
