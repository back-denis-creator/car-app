<template>
    <div class="table-responsive">
        <table class="table">
        <thead>
            <tr>
            <th scope="col">ID</th>
            <th scope="col">Link</th>
            <th scope="col">To Url</th>
            <th scope="col">Transitions</th>
            <th scope="col">Lifetime</th>
            <th scope="col">Created</th>
            </tr>
        </thead>
        <tbody>
            <tr v-for="link in links" :key="link.id">
                <th scope="row">{{ link.id }}</th>
                <td><a :href="url + '/link/' + link.name" target="_blank">{{ url + '/link/' + link.name }}</a></td>
                <td><a :href="link.url" target="_blank">{{ link.url.slice(0,24) + '...' }}</a></td>
                <td>{{ link.transitions }}</td>
                <td>{{ link.lifetime }}</td>
                <td>{{ moment(link.created_at) }}</td>
            </tr>
        </tbody>
        </table>
    </div>
</template>
<script>
import { mapActions, mapGetters } from 'vuex';
import moment from "moment";

export default {
    name: 'table-statistic',
    computed: {
        ...mapGetters({
            links: "link/links"
        })
    },
    data() {
        return {
            url: null
        }
    },
    methods: {
        ...mapActions({
            getLinks: "link/getLinks"
        }),
        moment(date) {
            return moment(date).format("DD.MM.YY, HH:mm:ss");
        }
    },
    created(){
        this.url = window.location.origin;
    },
    mounted() {
        this.getLinks();
    }
}
</script>
