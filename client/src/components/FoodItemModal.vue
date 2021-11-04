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
                  <p>{{ "$" + foodItem.food_price }}</p>
              </div>

              <div class="d-flex justify-content-between">
                  <h4>Quantity</h4>
                  <div class="control-amount">
                      <i class="far fa-minus-square decrease"></i>
                      {{ numberInCart }}
                      <i class="far fa-plus-square increase"></i>    
                  </div>


              </div>
              <div>

                <li>
                  <span>Protein: </span>
                  <span>{{foodItem.protein}}</span>
                </li>

                <li>
                  <span>Additives: </span>
                  <span>{{foodItem.additives}}</span>
                </li>

                <li>
                  <span>Baking material: </span>
                  <span>{{foodItem.baking_materials}}</span>
                </li>

                <li>
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
              <button id="submit-button">
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
      foodItem: {}
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
  },

  mounted() {
      this.$root.$on("process-display-modal", foodItem => {
        this.foodItem = foodItem;
        this.showModal();
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
  color: rgb(23, 96, 145);
  font-size: 33px;
  cursor: pointer;
}

.increase {
  color: rgb(173, 66, 66);
  font-size:33px;
  cursor: pointer;
}

.decrease:hover {
  color: rgb(37, 129, 182);
}

.increase:hover {
  color: rgb(250, 6, 6);
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
  color: white;
  background-color: red;
  border-radius: 50px;
  height: 35px;
  font-weight: 900;
}

#submit-button:hover {
  background-color: crimson;
}
</style>