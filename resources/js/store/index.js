import { createStore } from 'vuex'
import createPersistedState from "vuex-persistedstate"
import { linkModule } from "./linkModule"

export default createStore({
  plugins: [createPersistedState()],
  modules: {
    link: linkModule,
  }
})
