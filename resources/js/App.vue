<template>
  <div class="container">
    <div class="row text-center mt-2">
      <NavBar />
    </div>
    <!-- Страницы -->
      <router-view v-slot="{ Component }">
        <transition name="fade" mode="out-in">
          <component :is="Component" />
        </transition>
      </router-view>
  </div>
</template>

<script>
import { defineAsyncComponent } from "vue";
const NavBar = defineAsyncComponent(() => import("@/js/components/NavBar.vue"));
export default {
    components: {
    NavBar,
  }
};
</script>

<style>
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.5s ease;
}

.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}
</style>

