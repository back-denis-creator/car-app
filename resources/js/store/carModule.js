export const carModule = {

    state() {
        return {
            cars: [],
            car: {
                name: '',
                image: '',
                manufacturer: '',
                mark: '',
                year: null,
                volume: null,
                price: null,
                vin: '',
                fuel: '',
                country: '',
                //calculations values
                excise: null,
                importDuty: null,
                vat: null,
            },
        }
    },

    getters: {
        cars(state) {
           return state.cars
        },
        car(state) {
            return state.car
        },
    },

    mutations: {
        setCars(state, data) {
            state.cars = data
        },
        setCar(state, data) {
            state.car.name = data.name
            state.car.image = data.image
            state.car.manufacturer = data.manufacturer
            state.car.mark = data.mark
            state.car.year = data.year
            state.car.volume = data.engine_capacity
            state.car.price = data.price
            state.car.vin = data.vin
            state.car.fuel = data.fuel
            state.car.country = data.country
        },
        setCarClear(state) {
            for (var key in state.car) {
                state.car[key] = null
            }
        },
        setCarPrice(state, price) {
            state.car.price = price
        },
        setCarVolume(state, volume) {
            state.car.volume = volume
        },
        setCarYear(state, year) {
            state.car.year = year
        },
        setCarExcise(state, excise) {
            state.car.excise = excise
        },
        setCarImportDuty(state, importDuty) {
            state.car.importDuty = importDuty
        },
        setCarVat(state, vat) {
            state.car.vat = vat
        },
    },

    actions: {
        async getCars({ commit }) {
            await axios.get('/api/cars').then((res) => {
                commit('setCars', res.data.data);
            }).catch((err) => {

            })
        },
        async getCar({ commit }, data) {
            await axios.get('/api/car/' + data.id).then((res) => {
                commit('setCar', res.data.data);
            }).catch((err) => {

            })
        },
        async customPayments({ commit }, data) {
            await axios.post('/api/car/calculate', data).then((res) => {
                commit('setCarExcise', res.data['E']);
                commit('setCarImportDuty', res.data['F']);
                commit('setCarVat', res.data['T']);
            }).catch((err) => {

            })
        },
    },

    namespaced: true
}