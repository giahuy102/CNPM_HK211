<template>
    <div>
    <b-modal class="modal-custom" ref="my-modal" hide-footer header-class="my-class" id="modal-center" centered>
        <template v-slot:modal-title>{{ foodItem.food_name }}</template>
        <template class="close-button" id="close-button" v-slot:modal-header-close>
            <button type="button" class="btn-close" aria-label="Close"></button>

        </template>


        

        <div class="row">
          <div id="left-modal" class="col-3">
            <img :src="require(`../assets/foods/${foodItem.image_name}`)" alt="">
          </div>
          <div id="right-modal" class="col">
              <div class="d-flex justify-content-between flex-column">
                  <h4>Unit price</h4>
                  <p id="price-modal">{{ "$" + foodItem.food_price }}</p>
              </div>

              <div class="d-flex justify-content-between">
                  <h4>Quantity</h4>
                  <div class="control-amount">
                    <button @click="decrease">
                      <i class="far fa-minus-square" :class="{ decrease: !foodItem.isInCart, passive_amount: foodItem.isInCart }"></i>
                    </button>
                    <span id="number-in-modal">{{ foodItem.numberInModal }}</span>
                    <button @click="increase">
                      <i class="far fa-plus-square" :class="{ increase: !foodItem.isInCart, passive_amount: foodItem.isInCart }"></i> 
                    </button>
                      
                         
                  </div>


              </div>
              <div id="list-container">

                <li class="list-modal">
                  <span>Protein: </span>
                  <span>{{foodItem.protein}}</span>
                </li>

                <li class="list-modal">
                  <span>Additives: </span>
                  <span>{{foodItem.additives}}</span>
                </li>

                <li class="list-modal">
                  <span>Baking material: </span>
                  <span>{{foodItem.baking_materials}}</span>
                </li>

                <li class="list-modal">
                  <span>Food decoration: </span>
                  <span>{{foodItem.food_decoration}}</span>
                </li>

              </div>

              <div>
                <h4>
                  <span>
                    Side dishes (<span style="color: red;">*</span>) 
                  </span>
                </h4>

                <form action="" class="d-flex justify-content-between">
                  <div>
                    <input type="checkbox" id="option1" name="option1" value="Vegetable">
                    <label for="option1">Vegetable</label><br>
                  </div>

                  <div>
                    <input type="checkbox" id="option2" name="option2" value="Wine">
                    <label for="option2">Wine</label><br>
                  </div>

                  <div>
                    <input type="checkbox" id="option3" name="option3" value="juice">
                    <label for="option3">Orange juice</label><br><br>
                  </div>

                </form>

              </div>
              <button id="submit-button" @click="processAddCartItem" :class="{ active_submit: !foodItem.isInCart, passive_submit: foodItem.isInCart }">
                ADD TO CART
              </button>
          </div>
        </div>

    </b-modal>

    </div>
</template>

<script>
export default {
  data() {
    return {
      foodItem: {image_name: "coca.jpeg"},
      // quality: 0,
      index: 0
    }
  },
  methods: {
    showModal() {
      this.$refs['my-modal'].show();
    },
    hideModal() {
      this.$refs['my-modal'].hide();
    },
    toggleModal() {
      // We pass the ID of the button that we want to return focus to
      // when the modal has hidden
      this.$refs['my-modal'].toggle('#toggle-btn');
    },
    increase() {
      if (!this.foodItem.isInCart) this.foodItem.numberInModal += 1;
      console.log(this.foodItem.numberInModal);
    },
    decrease() {
      if (this.foodItem.numberInModal > 1 && !this.foodItem.isInCart) this.foodItem.numberInModal--;
    },
    processAddCartItem() {
        console.log(6);
        if (!this.foodItem.isInCart) this.toggleModal();
        this.$emit("process-add-cart-item", this.index, this.foodItem.numberInModal);
        
    },
  },

  mounted() {
      this.$root.$on("process-display-modal", (foodItem, index) => {
        this.foodItem = foodItem;
        this.showModal();
        this.index = index;
        console.log(foodItem);
      })
  }
}
</script>

<style>
/* You can also apply arbitrary classes to the modal dialog container, content (modal window itself), header, body and footer via the modal-class, content-class, header-class, body-class and footer-class props, respectively. The props accept either a string or array of strings. */


.my-class {
  background: rgb(233, 230, 230);

}

button {
    border: none;
    outline: none;
    background-color: transparent;
}



#header {
    background-color: black;
}

#left-modal img {
  width: 100%;
}


.decrease {
  color: rgb(0, 153, 255);
  font-size: 33px;
  cursor: pointer;
}

.increase {
  color: rgb(255, 0, 0);
  font-size:33px;
  cursor: pointer;
}

.decrease:hover {
  
  color: rgb(10, 61, 202);
}

.increase:hover {
  color: rgb(168, 2, 2);
}

.passive_amount {
  font-size:33px;
  color: rgb(167, 136, 136);
}

input[type=checkbox] {
    transform: scale(1.4);
}

form label {
  font-size: 18px;
  margin-left: 6px;
}


#submit-button {
  width: 100%;
  /* color: white;
  background-color: red; */
  border-radius: 50px;
  height: 35px;
  font-weight: 900;
  
}

.active_submit {
  color: white;
  background-color: red;
  
}

.passive_submit {
  background-color: rgb(167, 136, 136);
}

.active_submit:hover {
  background-color: crimson;
}

#price-modal {
  color: red;
  font-size: 30px;
  font-weight: 600;
}

.list-modal span:first-child {
  color: rgb(49, 47, 47);
  font-weight: 700;
}

.list-modal span:last-child {
  color: rgb(104, 103, 103);
  font-weight: 700;
}


#list-container {
  margin-bottom: 30px;
}

#number-in-modal {
  color: rgb(40, 40, 46);
  font-weight: 600;
  font-size: 30px;
  margin: auto 15px;
}
</style>