import { defineStore } from 'pinia'

export const useCartStore = defineStore('cart', {
  state: () => ({
    items: [], // each item: id, name, price, quantity, image, slug
  }),

  getters: {
    totalPrice: (state) =>
      state.items.reduce((total, item) => total + item.price * item.quantity, 0),
    totalItems: (state) =>
      state.items.reduce((total, item) => total + item.quantity, 0),
  },

  actions: {
    addToCart(product, quantity = 1) {
      const existing = this.items.find((item) => item.slug === product.slug)
      if (existing) {
        existing.quantity += quantity
      } else {
        this.items.push({ ...product, quantity })
      }
    },

    removeFromCart(slug) {
      this.items = this.items.filter((item) => item.slug !== slug)
    },

    clearCart() {
      this.items = []
    },

    increaseQuantity(slug) {
      const item = this.items.find((i) => i.slug === slug)
      if (item) item.quantity++
    },

    decreaseQuantity(slug) {
      const item = this.items.find((i) => i.slug === slug)
      if (item && item.quantity > 1) item.quantity--
    },
  },
})
