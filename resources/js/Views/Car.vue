<template>
    <div class="statistic-page">
        <div class="container">
            <Car />
        </div>
    </div>
</template>
<script>
import { defineAsyncComponent } from "vue";
const Car = defineAsyncComponent(() => import("@/js/components/Car.vue"));

export default {
    name: "car",
    components: {
        Car
    }
}
</script>

<style scoped>
    .statistic-page {
        margin-top: 80px;
    }
</style>