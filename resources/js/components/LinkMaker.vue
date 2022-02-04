<template>
  <div>
    <form @submit.prevent="Submit">
      <div class="form-group">
        <div class="row mt-4">
          <div class="col-md-6">
            <div class="input-group">
                <label for="link" class="form-control">Link</label>
                <input type="text" v-model="link" class="form-control w-50" required id="link" placeholder="Enter link">
            </div>
          </div>
          <div class="col-md-6">
            <div class="input-group">
                 <label for="life-time" class="form-control">Lifetime</label>
                 <input type="datetime-local" :min="`${new Date().toLocaleDateString('en-US')}T00:00`" v-model="time" class="form-control w-50" required id="life-time" />
            </div>
          </div>
        </div>
      </div>
      <button type="submit" class="btn btn-primary mt-4">Create Link</button>
    </form>
  </div>
</template>
<script>
import { mapActions, mapGetters, mapMutations } from "vuex";

export default {
  name: 'link-maker',
  computed: {
    ...mapGetters({
      statusCreated: "link/statusCreated"
    })
  },
  data() {
    return {
      link: null,
      time: null
    }
  },
  watch: {
    statusCreated(newVal, oldVal) {
      if(newVal === true) {
        this.$router.push({name: "Statistic"});
      }
    }
  },
  methods: {
    ...mapActions({
      createLink: "link/createLink"
    }),
    ...mapMutations({
      setStatusCreated: "link/setStatusCreated"
    }),
    Submit() {
      this.createLink({url: this.link, lifetime: this.time});
    }
  },
  mounted(){
    this.setStatusCreated(false);
  }

}
</script>