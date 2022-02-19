<template>
    <div>
        {{ car }}
    </div>
</template>
<script>
import { mapActions, mapGetters, mapMutations } from 'vuex';

export default {
    name: 'car',
    computed: {
        ...mapGetters({
            car: "car/car"
        })
    },
    methods: {
        ...mapActions({
            getCar: "car/getCar"
        }),
        ...mapMutations({
            setCar: "car/setCar"
        })
    },
    mounted() {
        this.getCar({ id: this.$route.params.id });
    },
    unmounted() {
        this.setCar(null);
    }
}
</script>

<style scoped>
    
</style>
