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
                <span id="cart-icon" class="fa-stack fa-1x" @click="processAddCartItem" @click.stop v-bind:class="{ active: !foodItem.isInCart }">
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
    props: ["index", "foodItem"],
    methods: {
        processAddCartItem() {
            if (this.foodItem.numberInModal == 0) this.foodItem.numberInModal = 1;
            this.$emit("process-add-cart-item", this.index, this.foodItem.numberInModal);
        },
        processDisplayModal() {
            this.$root.$emit("process-display-modal", this.foodItem, this.index);
        }
    }
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

#cart-icon {
    font-weight: 900;
    font-size: 18px;
}

.active {
    color: red;
}

.active:hover {
    color: rgb(223, 33, 33);
}

.card-title span:first-child {
    color: red;
    font-weight: 700;
}

.card-title span:last-child {
    font-weight: 900;
}



img {
    display: inline-block;
    height: 80%;
    border-radius: 5%;
}


</style>