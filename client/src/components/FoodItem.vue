<template>
    <div class="card" @click="processDisplayModal">
        <img class="card-img-top" :src="require(`../assets/foods/${foodItem.image_name}`)" alt="Card image cap">

        
        <div class="card-body">
            <h5 class="card-title">
                <span>{{ index + 1 + ". " }}</span>
                <span>{{ foodItem.food_name }}</span>
            </h5>
            <p class="card-text d-flex justify-content-between align-items-center">
                <span class="content">{{ "$" + foodItem.food_price }}</span>
                <span id="cart-icon" class="fa-stack fa-1x content" @click="processAddCartItem" @click.stop>
                    <i class="fa fa-square fa-stack-2x icon-b"></i>
                    <i class="fas fa-shopping-cart fa-stack-1x fa-inverse icon-a"></i>
                </span>
            </p>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {

        }
    },
    methods: {
        processAddCartItem() {
            this.$emit("process-add-cart-item", this.index);
        },

        
        processDisplayModal() {
            this.$root.$emit("process-display-modal", this.foodItem);
        }
    },

    props: ["index", "foodItem"],
}
</script>

<style scoped>

.card {
    width: 65%;
    height: auto;
    margin: 10px auto;  
    border-radius: 5%; 
    cursor: pointer;

}

.icon-b {
    font-size: 16px;
}


.content {
    color: red; 
    font-weight: 900;
    font-size: 18px;
}

.card-title span:first-child {
    color: red;
    font-weight: 700;
}

.card-title span:last-child {
    font-weight: 900;
}

#cart-icon:hover {
    color: rgb(168, 2, 2);
}

img {
    display: inline-block;
    height: 80%;
    border-radius: 5%;
}
</style>