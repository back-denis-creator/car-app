const Home = () => import('@/js/Views/Home.vue');
const Car = () => import('@/js/Views/Car.vue');

export default [
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
