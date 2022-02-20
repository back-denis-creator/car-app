
import routes from './routes.js'
import { createWebHistory, createRouter } from "vue-router";

const router = createRouter({
  history: createWebHistory(),
  routes,
});

//Отработает ПОСЛЕ вызова роутинга
router.afterEach((to, from, next) => {
  window.scrollTo(0, 0);
});

export default router;