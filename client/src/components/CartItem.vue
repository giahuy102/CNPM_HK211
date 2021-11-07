<template>
    <div class="custom-card d-flex flex-row">
        <button id="delete" type="button" class="btn-close" aria-label="Close" @click="deleteCartItem"></button>
        <div class="container-img d-flex align-items-center">
            <img :src="require(`../assets/foods/${foodInCart.image_name}`)"  alt="Card image cap">
        </div>
        
        <!-- <div class="d-flex flex-row">

            <div class="d-flex flex-column">
                <h3>
                    <span>{{ index + 1 + ". " }}</span>
                    <span>{{ foodInCart.food_name }}</span>
                </h3>
                <p>
                    <i class="far fa-minus-square"></i>
                    {{ numberInCart }}
                    <i class="far fa-plus-square"></i>    
                </p>
                    

            </div>
            <div class="d-flex flex-column">
                <p>{{ foodInCart.food_price }}</p>
                <p>fsfsfsfsfsfsf</p>
            </div>
        </div> -->
        
        <div class="d-flex justify-content-between" id="right-cart">
            <div>
                <h3>
                    <span>{{ index + 1 + ". " }}</span>
                    <span>{{ foodInCart.food_name }}</span>
                </h3>            
                <div class="extra-food" v-for="(extraFood, index) in foodInCart.extraFoods"
                    :key="index"
                
                >{{ extraFood }}</div>

                <div class="d-flex">
                    <!-- <div class="control-amount">
                        <i class="far fa-minus-square decrease"></i>
                        {{ numberInCart }}
                        <i class="far fa-plus-square increase"></i>    
                    </div>
                    <div class="d-flex">
                        <p>{{ foodInCart.food_price }}</p>
                        <p>fsfsfsfsfsfsf</p>
                    </div> -->

                    <button class="amount-type" @click="decrease">
                        <i class="far fa-minus-square control-amount decrease"></i>
                    </button>
                    <p id="amount">{{ foodInCart.numberInCart }}</p>
                    <button class="amount-type" @click="increase">
                        <i class="far fa-plus-square control-amount increase"></i> 
                    </button>


                
                </div>
            </div>
            <div id="price" class="d-flex flex-column justify-content-end">
                <p>
                        ${{ foodInCart.food_price * foodInCart.numberInCart }}
                </p>
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
    methods: {
        decrease() {
            if (this.foodInCart.numberInCart > 1) {
                this.foodInCart.numberInCart--;
            }
        },
        increase() {
            this.foodInCart.numberInCart++;
        },
        deleteCartItem() {
            this.foodInCart.isInCart = false;
            this.foodInCart.numberInCart = 0;
            this.foodInCart.numberInModal = 0;
            this.foodInCart.extraFoods = [];
            this.foodInCart.extraFoodStates = [];
            this.$emit('delete-cart-item', this.foodInCart.food_id);
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


#right-cart {
    width: 90%;
}

h3 {
    font-size: 20px;
    font-weight: 700;
    margin-top: 16px;
}

h3 span:first-child {
    color: red;
}

h3 span:last-child {
    color: rgb(59, 57, 85);
}

.decrease {
    color: rgb(0, 119, 255);  
}

.decrease:hover {
    color: rgb(10, 61, 202);
}

.increase {
    color: red;
}

.increase:hover {
    color: rgb(168, 2, 2);
}

.control-amount {
    font-size: 35px;
    margin-bottom: 13px;
}

#amount {
    font-size: 30px;
    margin-right: 30px;
    color: rgb(66, 66, 100);
}

.amount-type {
    margin-right: 30px;
}

#price {
    color: red; 
    font-weight: 600;
    font-size: 25px;
    
}

.custom-card {
    border: 1px solid rgba(78, 74, 74, 0.192);
    margin-bottom: 10px;
    position: relative;
}

#delete {
    position: absolute;
    right: 0;
    top: 0;

}


.extra-food {
    font-size: 700;
    color: rgb(61, 57, 102);
    font-size: 25;
}
</style>