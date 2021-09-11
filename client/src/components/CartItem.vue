<template>
    <div class="card d-flex flex-row">
        <div class="container-img d-flex align-items-center">
            <img :src="require(`../assets/foods/${foodInCart.image_name}`)"  alt="Card image cap">
        </div>
        
        <div class="d-flex flex-row">

            <div class="d-flex flex-column">
                <h3>
                    <span>{{ index + 1 + ". " }}</span>
                    <span>{{ foodInCart.food_name }}</span>
                </h3>
                <div>
                    <p>{{ numberInCart }}</p>
                </div>

            </div>
            <div class="d-flex flex-column">
                <p>{{ foodInCart.food_price }}</p>
                <p>fsfsfsfsfsfsf</p>
            </div>
        </div>
        
    </div>    
</template>

<script>
export default {
    data() {
        return {
            numberInCart: 1
        }
    },
    props: ["foodInCart", "index"],

}
</script>

<style scoped>  
.card {
    width: auto;
    margin: 5%;
    height: 110px;
}

.container-img {
    display: inline-block;
    width: 20%;
    padding: 2%;
}

img {
    width: 100%;
}


</style>