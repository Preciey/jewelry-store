import { defineStore } from 'pinia'

export const useCartStore = defineStore('cart', {
  state: () => ({
    items: JSON.parse(localStorage.getItem('cart_items')) || [],
  }),

  getters: {
    totalPrice: (state) =>
      state.items.reduce((total, item) => total + item.price * item.quantity, 0),

    totalItems: (state) =>
      state.items.reduce((total, item) => total + item.quantity, 0),
  },

  actions: {
    saveCart() {
      localStorage.setItem('cart_items', JSON.stringify(this.items))
    },

    addToCart(product, quantity = 1) {
      const existing = this.items.find(item => item.id === product.id)

      if (existing) {
        existing.quantity += quantity
      } else {
        this.items.push({ ...product, quantity })
      }

      this.saveCart()
    },

    removeFromCart(productId) {
      this.items = this.items.filter(item => item.id !== productId)
      this.saveCart()
    },

    clearCart() {
      this.items = []
      this.saveCart()
    },

    increaseQuantity(productId) {
      const item = this.items.find(i => i.id === productId)
      if (item) {
        item.quantity++
        this.saveCart()
      }
    },

    decreaseQuantity(productId) {
      const item = this.items.find(i => i.id === productId)
      if (item && item.quantity > 1) {
        item.quantity--
        this.saveCart()
      }
    },
  },
})
