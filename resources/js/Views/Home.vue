<template>
  <div class="home-page mt-4">
      <div class="row">
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
