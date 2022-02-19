export const carModule = {

    state() {
        return {
            cars: [],
            statusCreated: false
        }
    },

    getters: {
        cars(state) {
           return state.cars
       },
       statusCreated(state) {
           return state.statusCreated
       }
    },

    mutations: {
        setCars(state, data) {
            state.cars = data
        },
        setStatusCreated(state, data) {
            state.statusCreated = data
        }
    },

    actions: {
        async getCars({ commit }) {
            await axios.get('/api/cars').then((res) => {
                commit('setCars', res.data.data);
            }).catch((err) => {

            })
        },
    },

    namespaced: true
}