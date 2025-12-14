import { defineStore } from 'pinia'

export const useProductStore = defineStore('product', {
  state: () => ({
    products: [],
  }),

  getters: {
    // Home page
    featuredProducts: (state) => state.products.slice(0, 8),

    // Category page
    productsByCategory: (state) => {
      return (category) =>
        state.products.filter(
          (p) => p.category.toLowerCase() === category.toLowerCase()
        )
    },

    // Product details page
    productBySlug: (state) => {
      return (slug) => state.products.find((p) => p.slug === slug)
    },
  },

  actions: {
    fetchProducts() {
      this.products = [
        // Necklaces
        { id: 1, name: 'Pearl Necklace', slug: 'pearl-necklace', price: 50, old_price: 75, image: '/Images/Pearl-necklace.jpg', category: 'necklace' },
        { id: 2, name: 'Star Choker', slug: 'star-choker', price: 35, image: '/Images/Star-choker-necklace.jpg', category: 'necklace' },
        { id: 3, name: 'Bee Pendant Necklace', slug: 'bee-pendant-necklace', price: 40, image: '/Images/bee-pendant.png', category: 'necklace' },
        { id: 4, name: 'Stone Butterfly Necklace', slug: 'stone-butterfly-necklace', price: 45, image: '/Images/Stone-butterfly-necklace.jpg', category: 'necklace' },

        // Bracelets
        { id: 5, name: 'Baroque Pearl Bracelet', slug: 'baroque-pearl-bracelet', price: 60, old_price: 80, image: '/Images/baroque-pearls.jpg', category: 'bracelet' },
        { id: 6, name: 'Gold Chain Bracelet', slug: 'gold-chain-bracelet', price: 50, image: '/Images/gold-chain-bracelet.jpg', category: 'bracelet' },
        { id: 7, name: 'Leather Wrap Bracelet', slug: 'leather-wrap-bracelet', price: 30, image: '/Images/leather-wrap-bracelet.jpg', category: 'bracelet' },

        // Earrings
        { id: 8, name: 'Gold Hoop Earrings', slug: 'gold-hoop-earrings', price: 25, image: '/Images/goldies-2.jpg', category: 'earring' },
        { id: 9, name: 'Diamond Stud Earrings', slug: 'diamond-stud-earrings', price: 80, image: '/Images/diamond-stud.jpg', category: 'earring' },
        { id: 10, name: 'Pearl Drop Earrings', slug: 'pearl-drop-earrings', price: 45, image: '/Images/pearl-drop.jpg', category: 'earring' },

        // Rings
        { id: 11, name: 'Silver Band Ring', slug: 'silver-band-ring', price: 20, image: '/Images/rings.jpg', category: 'ring' },
        { id: 12, name: 'Gold Signet Ring', slug: 'gold-signet-ring', price: 55, image: '/Images/gold-signet-ring.jpg', category: 'ring' },

        // Anklets
        { id: 13, name: 'Layered Anklet', slug: 'layered-anklet', price: 35, image: '/Images/Layered-anklet.jpg', category: 'anklet' },
        { id: 14, name: 'Beaded Anklet', slug: 'beaded-anklet', price: 25, image: '/Images/beaded-anklet.jpg', category: 'anklet' },

        // Accessories
        { id: 15, name: 'Satin Scrunchie', slug: 'satin-scrunchie', price: 10, image: '/Images/Satin-scrunchie-black.jpg', category: 'accessory' },
        { id: 16, name: 'Velvet Hairband', slug: 'velvet-hairband', price: 15, image: '/Images/velvet-hairband.jpg', category: 'accessory' },
      ]

      console.log('✅ Products loaded:', this.products.length)
    },
  },
})
