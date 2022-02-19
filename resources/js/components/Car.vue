<template>
    <div>
        <div>{{ car }}</div>
        <div>
            <form @submit.prevent="submitForm" >
                <input
                    id="price"
                    v-model="price"
                    type="number"
                    step="0.01"
                    name="price"
                >
                <input
                    id="volume"
                    v-model="volume"
                    type="number"
                    step="0.01"
                    name="volume"
                >
                <input
                    id="year"
                    v-model="year"
                    type="number"
                    step="1"
                    name="year"
                >
                <button type="submit">Calculate</button>
            </form>
        </div>
        <div>
    
        </div>
    </div>
</template>
<script>
import { mapActions, mapGetters, mapMutations } from 'vuex';

export default {
    name: 'car',
    computed: {
        ...mapGetters({
            car: "car/car"
        }),
        price: {
            get() {
                return this.$store.state.car.car.price;
            },
            set(value) {
                this.$store.commit("car/setCarPrice", value);
            },
        },
        volume: {
            get() {
                return this.$store.state.car.car.volume;
            },
            set(value) {
                this.$store.commit("car/setCarVolume", value);
            },
        },
        year: {
            get() {
                return this.$store.state.car.car.year;
            },
            set(value) {
                this.$store.commit("car/setCarYear", value);
            },
        },
    },
    methods: {
        ...mapActions({
            getCar: "car/getCar",
            customPayments: "car/customPayments"
        }),
        ...mapMutations({
            setCarClear: "car/setCarClear"
        }),
        async submitForm(ev) {
            this.customPayments({
                price: this.price,
                volume: this.volume,
                year: this.year,
                fuel: this.car.fuel
            });
        }
    },
    mounted() {
        this.getCar({ id: this.$route.params.id });
    },
    unmounted() {
        this.setCarClear();
    }
}
</script>

<style scoped>
    
</style>
