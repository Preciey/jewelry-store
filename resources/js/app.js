import { createApp } from 'vue';
import { createPinia } from 'pinia';
import App from './App.vue';
import router from './router';

// Create Vue app
const app = createApp(App);

// Use router and Pinia
app.use(router);
app.use(createPinia());

// Mount app
app.mount('#app');
