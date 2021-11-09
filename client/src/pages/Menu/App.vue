<template>
  <div class="b-container fluid" id="app">
    <b-row>
      <b-col cols="8" class="left-side">
        <top-nav-bar/>  
        <b-row align-h="center">
          <b-col cols="11">
            <!-- <VueSlickCarousel v-bind="settings" v-if="numberOfFoodCategories > 0">
              <div 
                class="d-flex justify-content-center"
                v-for="foodCategory in foodCategories"
                :key="foodCategory.category_id"
                @click="setFoodAndCategoryState(foodCategory.category_id, foodCategory.category_name)"
              > 
                <category-item
                  v-bind:category-name="foodCategory.category_name"
                  v-bind:source-img="foodCategory.image_name"
                />
              </div>


            </VueSlickCarousel> -->




            <Flicking :options="{ circular: true }" :plugins="plugins">
                <!-- <div class="card-panel"><img src="/images/harry-potter-1.png" alt=""></div>
                <div class="card-panel"><img src="/images/harry-potter-1.png" alt=""></div>
                <div class="card-panel"><img src="/images/harry-potter-1.png" alt=""></div> -->
                <!-- <div  v-for="category in categories" :key="category.cid" class="card-panel">
                    <a :href="'/category/' + category.cid">
                        <img :src="'/images/' + category.category_image" alt="">
                    </a>
                    
                </div> -->
                <div 
                  class="d-flex justify-content-center adjust-card-width"
                  v-for="foodCategory in foodCategories"
                  :key="foodCategory.category_id"
                  @click="setFoodAndCategoryState(foodCategory.category_id, foodCategory.category_name)"
                > 
                  <category-item
                    v-bind:category-name="foodCategory.category_name"
                    v-bind:source-img="foodCategory.image_name"
                  />
                </div>
                <span slot="viewport" class="flicking-arrow-prev"></span>
                <span slot="viewport" class="flicking-arrow-next"></span>
            </Flicking>  




          </b-col>
        </b-row>

        
        <b-row id="menu-foods">
          <h2>{{currentCategoryName}}</h2>
          <b-col
            class="d-flex justify-content-center"
            cols="4"
            v-for="(food, index) in foodsOfCurrentCategory"
            :key="food.food_id"
          >
            <food-item
              v-on:process-add-cart-item="processAddCartItem"
              v-bind:index="index"
              v-bind:food-item="food"
            />
          </b-col>
        </b-row>

      </b-col>
      <!-- use d-flex flex-column for make scroll bar without setting predefined-height -->
      <b-col id="side-bar" class="d-flex flex-column" cols="4">
        <b-navbar class="d-flex justify-content-between nav" variant="faded" type="light">
          <h4 id="cart-header">
            <i class="fas fa-shopping-cart"></i>
            <span>Your cart ({{ currentNumberInCart() }})</span>
          </h4>
          <span id="dine-in" :class="{dine_in_active: isDineIn}" @click="isDineIn = !isDineIn">DINE IN</span>

        </b-navbar>

        <div id="list-cart">
            <cart-item 
              v-on:delete-cart-item="deleteCartItem"
              v-for="(food, index) in foodsInCart"
              :key="index"
              v-bind:food-in-cart="food"
              v-bind:index="index"
            />

        </div>
        <p class="d-flex justify-content-between" id="total">
          <span>Total</span>
          <span>${{ getTotalPrice() }}</span>
        </p>
        <a id="payment">PAYMENT</a>


      </b-col> 
    </b-row>
    <food-item-modal v-on:process-add-cart-item="processAddCartItem"/>




  </div>
</template>

<script>
import TopNavBar from "../../components/TopNavBar.vue";
import CategoryItem from "../../components/CategoryItem.vue";
import FoodItem from "../../components/FoodItem.vue";
import CartItem from "../../components/CartItem.vue";
import FoodItemModal from "../../components/FoodItemModal.vue";

// import VueSlickCarousel from 'vue-slick-carousel'
import { getAllFoods, getAllFoodCategories } from "../../services/FoodServices";



import { Arrow } from "@egjs/flicking-plugins";
import "@egjs/flicking-plugins/dist/arrow.css";


// import Vue from 'vue'; 


export default {
  name: 'Menu',
  components: {
    TopNavBar,
    CategoryItem,
    FoodItem,
    CartItem,
    FoodItemModal
  },
  data() {
    return {
      foods: [],
      numberOfFoods: 0,
      foodCategories: [],
      numberOfFoodCategories: 0,
      settings: {
        "draggable": false,
        "infinite": false,
        "slidesToShow": 6,
        "slidesToScroll": 1,

      },
      currentCategoryName: "",
      currenCategoryId: -1,
      foodsOfCurrentCategory: [],
      currentNumberCartItems: 0,
      foodsInCart: [],
      isDineIn: false,
      plugins: [new Arrow()]

    }
  },
  watch: {
    // foods: {
      
    //   handler() {
    //     this.foodsInCart = this.foods.filter(element => {
    //       return element.isInCart;
    //     })
    //     // console.log(this.foods[0].numberInCart);
    //   },
    //   deep: true
    // }
  },
  methods: {




    setFoodAndCategoryState(currentCategoryId, currentCategoryName) {
      this.currentCategoryName = currentCategoryName;
      this.currentCategoryId = currentCategoryId;
      let temp = []
      for (let food of this.foods) {
        if (food.food_category_id == currentCategoryId) temp.push(food);
      }
      this.foodsOfCurrentCategory = temp;
    },
    getAllFoods() {
      getAllFoods().then(response => {
        this.foods = response;
        // console.log(this.foods);
        // this.foods.forEach(element => {
        //   Vue.set(element, "isInCart", false);
        //   Vue.set(element, "numberInCart", 0);
        //   // element.isInCart = false;
        //   // element.numberInCart = 0;
        // })
        // Vue.set(this.foods, 0, Vue.set(this.foods[0], "isInCart", false));
        // this.$set(this.foods[0], 'isInCart', false);
        this.foods.forEach(element => {
          this.$set(element, 'isInCart', false); //set new attribute of object vuejs
          this.$set(element, 'numberInCart', 0);
          this.$set(element, 'numberInModal', 1);
          this.$set(element, 'extraFoods', []);
          this.$set(element, 'extraFoodStates', [false, false, false]);
        })
        console.log(this.foods[0].isInCart);
        this.numberOfFoods = this.foods.length;

        console.log(this.foods);
      })
    },
    getAllFoodCategories() {
      getAllFoodCategories().then(response => {
        this.foodCategories = response;
        this.numberOfFoodCategories = this.foodCategories.length;

        if (this.numberOfFoodCategories > 0) {
          this.setFoodAndCategoryState(this.foodCategories[0].category_id, this.foodCategories[0].category_name);
        } 
        console.log(this.foodCategories);
      })
    },
    showNext() {
      this.$refs.carousel.next()
    },
    processAddCartItem(index, quality) {
      
      if (!this.foodsOfCurrentCategory[index].isInCart) {
        this.currentNumberCartItems += quality;
        this.foodsOfCurrentCategory[index].isInCart = true;
        this.foodsOfCurrentCategory[index].numberInCart = quality;
        this.foodsInCart.push(this.foodsOfCurrentCategory[index]);
        console.log(this.foodsOfCurrentCategory[index].isInCart);
      }
    },
    currentNumberInCart() {
      let count = 0;
      for (let i = 0; i < this.foods.length; i++) {
        count += this.foods[i].numberInCart;
      }
      return count;
    },
    getTotalPrice() {
      let price = 0
      for (let i = 0; i < this.foods.length; i++) {
        price += this.foods[i].numberInCart * this.foods[i].food_price;
      }
      return price;
    },
    deleteCartItem(food_id) {
      for (let i = 0; i < this.foodsInCart.length; i++) {
        if(this.foodsInCart[i].food_id == food_id) {
          this.foodsInCart.splice(i, 1);
        } 
      }
    }
  }, 
  mounted() {
    this.getAllFoods();
    this.getAllFoodCategories();
  }
}
</script>

<style>
html, body {
    max-width: 100%;
    overflow-x: hidden;
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;

}

button.slick-prev:before, button.slick-next:before {
      background-color: rgb(134, 131, 131) !important;
      height: 1px !important;

}
/* button.slick-prev:before {
  content: "<";
  color: black;
  font-size: 30px;
}

button.slick-next:before {
  content: ">";
  color: black;
  font-size: 30px;
} */




</style>

<style scoped>
.nav {
  min-height: 80px;
  
}

#menu-foods {
  margin-top: 40px;
}

#side-bar {
  height: 100vh;
  position: fixed;
  right: 0;
  background-color: rgba(255, 235, 230, 0.74);

}


#list-cart {
  overflow-y: auto;
  
  /* for Firefox */
  min-height: 0;
  height: 80%;
}


#my-modal {
  top: 25%;
}

#total span:first-child {
  color: rgba(41, 38, 38, 0.685);
  font-weight: 600;
  font-size: 26px;
}

#total span:last-child {
  color: red;
  font-size: 26px;
  font-weight: 600;
}

#payment {
  background-color: red;
  padding: 22px;
  text-align: center;
  color: white;
  font-weight: 700;
  font-size: 23px;
  margin-bottom: 10px;
  border-radius: 30px;
  cursor: pointer;
}

#payment:hover {
  background-color: rgb(122, 7, 7);
}

#cart-header {
  color: red;
  font-weight: 600; 
}

#cart-header span {
  margin-left: 10px;
}

#dine-in {
  font-size: 23px;
  font-weight: 600;
  color: rgb(9, 9, 85);
  cursor: pointer;
}

.dine_in_active {
  padding: 7px 10px;
  color: white !important;
  background-color: rgb(9, 9, 85);
  border-radius: 30px;
}


#menu-foods h2 {
  font-weight: 600;
  margin-left: 7px;
}


.adjust-card-width {
  width: 20%;
  padding: 0 5px;
}


.left-side {
  background-color: #ebebffe1;
  height: 100vh;
}
</style>
