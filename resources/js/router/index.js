import { createWebHistory, createRouter } from "vue-router";
const Home = () => import('@/js/Views/Home.vue');
const Car = () => import('@/js/Views/Car.vue');

const routes = [
  {
    path: "/",
    name: "home",
    component: Home,
  },
  {
    path: "/car/:id",
    name: "car",
    component: Car,
  },
  {
    path: '/:pathMatch(.*)*',
    redirect: '/',
  }
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;