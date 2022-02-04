<template>
    <div class="statistic-page">
        <div class="row">
            <TableStatistic />
        </div>
    </div>
</template>
<script>
import { defineAsyncComponent } from "vue";
const TableStatistic = defineAsyncComponent(() => import("@/js/components/TableStatistic.vue"));

export default {
    name: "statistic",
    components: {
        TableStatistic
    }
}
</script>