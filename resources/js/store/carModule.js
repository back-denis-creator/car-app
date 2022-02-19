export const carModule = {

    state() {
        return {
            cars: [],
            car: null
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
            state.car = data
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
            console.log(data);
            await axios.get('/api/car/' + data.id).then((res) => {
                commit('setCar', res.data.data);
            }).catch((err) => {

            })
        },
    },

    namespaced: true
}