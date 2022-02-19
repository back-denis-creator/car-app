import { createWebHistory, createRouter } from "vue-router";
const Home = () => import('@/js/Views/Home.vue');
const Car = () => import('@/js/Views/Car.vue');

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/:url?",
    name: "Car",
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