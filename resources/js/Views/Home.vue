<template>
  <div class="home-page">
      <div class="container">
        <Cars />
      </div>
  </div>
</template>

<script>
import { defineAsyncComponent } from "vue";
const Cars = defineAsyncComponent(() => import("@/js/components/Cars.vue"));

export default {
  name: "home",
  components: {
    Cars
  }
};
</script>

<style scoped>
  .home-page {
    margin-top: 80px;
  }
</style>
