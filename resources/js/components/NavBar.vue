<template>
    <nav class="navbar fixed-top navbar-light bg-light shadow p-3 mb-5 bg-white rounded">
        <div class="container justify-content-center">
            <router-link :to="{ name: 'home' }">Home</router-link>
        </div>
    </nav>
</template>
<script>
export default {
    name: 'nav-bar'
}
</script>
