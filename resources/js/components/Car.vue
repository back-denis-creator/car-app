<template>
    <div class="card">
        <div class="card-body">
            <h3 class="card-title">{{ car.name }}</h3>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="white-box text-center"><img :src="car.image" class="img-responsive mw-100" ></div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="calculator col">
                        <form class="calculateForm" @submit.prevent="submitForm">
                            <div class="form-group">
                                <label for="shipping" class="m-2">Shipping cost</label>
                                <input
                                    class="form-control"
                                    id="shipping"
                                    v-model="shipping"
                                    type="number"
                                    step="0.01"
                                    name="shipping"
                                >
                            </div>
                            <div class="form-group mt-2">
                                <label for="price" class="m-2">Price</label>
                                <input
                                    class="form-control"
                                    id="price"
                                    v-model="price"
                                    type="number"
                                    step="0.01"
                                    name="price"
                                >
                            </div>
                            <div class="form-group mt-2">
                                <label for="volume" class="m-2">Volume</label>
                                <input
                                    class="form-control"
                                    id="volume"
                                    v-model="volume"
                                    type="number"
                                    step="0.01"
                                    name="volume"
                                    min="0.01"
                                    max="15"
                                >
                            </div>
                            <div class="form-group mt-2">
                                <label for="year" class="m-2">Year</label>
                                <input
                                    class="form-control"
                                    id="year"
                                    v-model="year"
                                    type="number"
                                    step="1"
                                    name="year"
                                    min="1970"
                                    max="2022"
                                >
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary mt-4">Calculate</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="result col-lg-4 col-md-4 col-sm-4">
                    <div class="col">
                        <div class="row">
                            <div class="col">
                                <p>Excise:</p>
                                <p>Import duty: </p>
                                <p>VAT: </p>
                            </div>
                            <div class="col">
                                <div class="calculate text-end">
                                    <p><b>{{ car.excise }}</b></p>
                                    <p><b>{{ car.importDuty }}</b></p>
                                    <p><b>{{ car.vat }}</b></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <h3 class="box-title mt-5 mb-4">Information</h3>
                    <div class="table-responsive">
                        <table class="table table-striped table-product">
                            <tbody>
                                <tr>
                                    <td width="390">Mark</td>
                                    <td>{{ car.manufacturer }}</td>
                                </tr>
                                <tr>
                                    <td>Model</td>
                                    <td>{{ car.mark }}</td>
                                </tr>
                                <tr>
                                    <td>VIN</td>
                                    <td>{{ car.vin }}</td>
                                </tr>
                                <tr>
                                    <td>Fuel</td>
                                    <td>{{ car.fuel }}</td>
                                </tr>
                                <tr>
                                    <td>Volume</td>
                                    <td>{{ car.volume }}</td>
                                </tr>
                                <tr>
                                    <td>Year</td>
                                    <td>{{ car.year }}</td>
                                </tr>
                                <tr>
                                    <td>Price</td>
                                    <td>{{ car.price }}</td>
                                </tr>
                                <tr>
                                    <td>Country</td>
                                    <td>{{ car.country }}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
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
        shipping: {
            get() {
                return this.$store.state.car.car.shippingCost;
            },
            set(value) {
                this.$store.commit("car/setCarShippingCost", value);
            },
        },
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
            setCarClear: "car/setCarClear",
        }),
        async submitForm(ev) {
            this.customPayments({
                price: this.price,
                volume: this.volume,
                year: this.year,
                fuel: this.car.fuel,
                cost: this.shipping
            });
        }
    },
    mounted() {
        this.setCarClear();
        this.getCar({ id: this.$route.params.id });
    }
}
</script>

<style scoped>
    .calculateForm {
        max-width: 300px;
    }
    body {
        background-color: #edf1f5;
        margin-top:20px;
    }
    .card {
        margin-bottom: 30px;
    }
    .card {
        position: relative;
        display: flex;
        flex-direction: column;
        min-width: 0;
        word-wrap: break-word;
	    background-color: #d7d7d745;
        background-clip: border-box;
        border: 0 solid transparent;
        border-radius: 0;
    }
    .card-title {
        margin-top: 25px;
        margin-left: 25px;
        margin-bottom: 20px;
    }
    .result {
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .calculate {
        margin-right: 20px;
    }
    .calculator {
        padding-left: 50px;
        padding-right: 50px;
    }
</style>
