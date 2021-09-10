<template>
    <div class="card d-flex">
        {{ foodInCart.food_price }}
        {{ foodInCart.food_name }}
        
    </div>    
</template>

<script>
export default {
    data() {
        return {

        }
    },
    props: ["foodInCart"]
}
</script>

<style scoped>

</style>