export const linkModule = {

    state() {
        return {
            links: [],
            statusCreated: false
        }
    },

    getters: {
       links(state) {
           return state.links
       },
       statusCreated(state) {
           return state.statusCreated
       }
    },

    mutations: {
        setLinks(state, data) {
            state.links= data
        },
        setStatusCreated(state, data) {
            state.statusCreated = data
        }
    },

    actions: {
        async getLinks({ commit }) {
            await axios.get('/api/links').then((res) => {
                commit('setLinks', res.data.data);
            }).catch((err) => {

            })
        },
        async createLink({ commit }, data) {
            await axios.post('/api/link', data).then((res) => {
                console.log(res);
                if(res.status === 201) {
                    commit('setStatusCreated', true);
                }else{
                    commit('setStatusCreated', false);
                }
            }).catch((err) => {

            })
        },
    },

    namespaced: true
}