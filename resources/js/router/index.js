import { createWebHistory, createRouter } from "vue-router";
const Home = () => import('@/js/Views/Home.vue');
const Statistic = () => import('@/js/Views/Statistic.vue');

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/statistic",
    name: "Statistic",
    component: Statistic,
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