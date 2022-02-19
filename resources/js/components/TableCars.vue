<template>
    <div class="table-responsive">
        <table class="table">
        <thead>
            <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Year</th>
            <th scope="col">Engine Capacity</th>
            <th scope="col">Fuel</th>
            <th scope="col">Price</th>
            </tr>
        </thead>
        <tbody>
            <tr v-for="car in cars" :key="car.id">
                <th scope="row">{{ car.id }}</th>
                <td><router-link :to="{ name: 'car', params: { id: car.id }}">{{ car.name }}</router-link></td>
                <td>{{ car.year }}</td>
                <td>{{ car.engine_capacity }}</td>
                <td>{{ car.fuel }}</td>
                <td>{{ car.price }}</td>
            </tr>
        </tbody>
        </table>
    </div>
</template>
<script>
import { mapActions, mapGetters } from 'vuex';

export default {
    name: 'table-cars',
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
