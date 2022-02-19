<template>
    <div class="statistic-page mt-4">
        <div class="row">
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