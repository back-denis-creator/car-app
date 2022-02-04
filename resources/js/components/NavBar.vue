<template>
    <div>
        <router-link :to="{name: 'Home'}">Home</router-link> / 
        <router-link :to="{name: 'Statistic'}">Statistic</router-link>
    </div>
</template>
<script>
export default {
    name: 'nav-bar'
}
</script>