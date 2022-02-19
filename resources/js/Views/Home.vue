<template>
  <div class="home-page mt-4">
      <div class="row">
        <TableCars />
      </div>
  </div>
</template>

<script>
import { defineAsyncComponent } from "vue";
const TableCars = defineAsyncComponent(() => import("@/js/components/TableCars.vue"));


export default {
  name: "home",
  components: {
    TableCars
  }
};
</script>
