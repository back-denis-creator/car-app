import { createStore } from 'vuex'
import createPersistedState from "vuex-persistedstate"
import { carModule } from "./carModule"

export default createStore({
  plugins: [createPersistedState()],
  modules: {
    car: carModule,
  }
})
