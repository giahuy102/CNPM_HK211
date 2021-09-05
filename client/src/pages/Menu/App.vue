<template>
  <div class="b-container fluid" id="app">
    <b-row>
      <b-col lg="9">
        <top-nav-bar/>
        <category-item/>
        <VueSlickCarousel :arrows="true" :dots="true">
          <div>1</div>
          <div>2</div>
          <div>3</div>
          <div>4</div>
        </VueSlickCarousel>
      </b-col>
      <b-col lg="3">

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
      numberOfFoodCategories: 0
    }
  },
  methods: {
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
        console.log(this.foodCategories);
      })
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
</style>
