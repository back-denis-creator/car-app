require('@/js/bootstrap');
import "bootstrap/dist/css/bootstrap.min.css"
import "bootstrap"

import { createApp } from 'vue'
import App from '@/js/App.vue';
import router from '@/js/router';
import store from '@/js/store';

const app = createApp(App)

app
    .use(router)
    .use(store)
    .mount('#app')
