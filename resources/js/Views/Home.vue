<template>
  <div class="home-page">
      <div class="row">
        <LinkMaker />
      </div>
  </div>
</template>

<script>
import { defineAsyncComponent } from "vue";
const LinkMaker = defineAsyncComponent(() => import("@/js/components/LinkMaker.vue"));


export default {
  name: "home",
  components: {
    LinkMaker
  }
};
</script>
