<template>
  <div class="b-container fluid" id="app">
    <b-row>
      <b-col cols="9">
        <top-nav-bar/>
        <b-row align-h="center">
          <b-col cols="11">
            <VueSlickCarousel v-bind="settings" v-if="numberOfFoodCategories > 0">
              <div
                v-for="foodCategory in foodCategories"
                :key="foodCategory.category_id"
                @click="setFoodAndCategoryState(foodCategory.category_id)"
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
          <h3
            v-for="food in foodsOfCurrentCategory"
            :key="food.food_category_id"
          >
            {{food.food_name}}
          </h3>
        <b-row>

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
import VueSlickCarousel from 'vue-slick-carousel'
import { getAllFoods, getAllFoodCategories } from "../../services/FoodServices";


export default {
  name: 'Menu',
  components: {
    TopNavBar,
    CategoryItem,
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
        "slidesToShow": 5,
        "slidesToScroll": 1,

      },
      currenCategoryId: -1,
      foodsOfCurrentCategory: []
    }
  },
  methods: {
    setFoodAndCategoryState(currentCategoryId) {
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
          this.setFoodAndCategoryState(this.foodCategories[0].category_id);
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
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;

}

button.slick-prev:before, button.slick-next:before {
      background-color: red !important;
}

</style>
