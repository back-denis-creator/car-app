<template>
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <div class="col" v-for="car in cars" :key="car.id">
            <div class="card shadow p-3 mb-5 bg-white rounded">
                <router-link :to="{ name: 'car', params: { id: car.id }}" class="text-center p-2">
                    <img class="picture car-img-top" :src="car.image" width="100" height="100" alt="lorem">
                </router-link>
                <div class="card-body">
                    <h5 class="card-title">
                        <router-link :to="{ name: 'car', params: { id: car.id }}">{{ car.name }}</router-link>
                    </h5>
                    <div class="col">
                        <div class="row">
                            <div class="col">
                                <p>Price: </p>
                                <p>Mark: </p>
                                <p>Model: </p>
                                <p>Volume: </p>
                                <p>Fuel: </p>
                                <p>Year: </p>
                                <p>Country: </p>
                            </div>
                            <div class="col">
                                <div class="text-end">
                                    <p><b>{{ car.price }}</b></p>
                                    <p><b>{{ car.manufacturer }}</b></p>
                                    <p><b>{{ car.mark }}</b></p>
                                    <p><b>{{ car.engine_capacity }}</b></p>
                                    <p><b>{{ car.fuel }}</b></p>
                                    <p><b>{{ car.year }}</b></p>
                                    <p><b>{{ car.country }}</b></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import { mapActions, mapGetters } from 'vuex';

export default {
    name: 'cars',
    computed: {
        ...mapGetters({
            cars: "car/cars"
        })
    },
    methods: {
        ...mapActions({
            getCars: "car/getCars"
        }),
    },
    mounted() {
        this.getCars();
    }
}
</script>

<style scoped>
    .picture {
        max-width: 100px;
        max-height: 100px;
        border-radius: 100px;
    }
    .table {
        text-align: center;
        vertical-align: inherit;
    }
    .card-title {
        margin-bottom: 25px;
    }
</style>
