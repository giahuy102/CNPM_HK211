<template>
  <div class="b-container fluid" id="app">
    <b-row>
      <b-col cols="9">
        <top-nav-bar/>
        <b-row align-h="center">
          <b-col cols="11">
            <VueSlickCarousel v-bind="settings" v-if="numberOfFoodCategories > 0">
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
              <!-- <template #nextArrow="arrowOption">
                <div class="custom-arrow">
                  {{ arrowOption.currentSlide }}/{{ arrowOption.slideCount }}
                </div>
              </template> -->

            </VueSlickCarousel>
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
              v-bind:food-name="food.food_name"
              v-bind:image-name="food.image_name"
              v-bind:index="index"
              v-bind:food-price="food.food_price"
            />
          </b-col>
        </b-row>

      </b-col>
      <b-col cols="3">

      </b-col> 
    </b-row>


  </div>
</template>

<script>
import TopNavBar from "../../components/TopNavBar.vue";
import CategoryItem from "../../components/CategoryItem.vue";
import FoodItem from "../../components/FoodItem.vue";
import VueSlickCarousel from 'vue-slick-carousel'
import { getAllFoods, getAllFoodCategories } from "../../services/FoodServices";


export default {
  name: 'Menu',
  components: {
    TopNavBar,
    CategoryItem,
    FoodItem,
    VueSlickCarousel
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
      foodsOfCurrentCategory: []
    }
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

#menu-foods {
  margin-top: 40px;
}

</style>
