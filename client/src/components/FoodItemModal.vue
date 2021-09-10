<template>
    <div>
    <b-button v-b-modal.modal-center>Launch centered modal</b-button>

    <b-modal ref="my-modal" hide-footer header-class="my-class" id="modal-center" centered>
        <template v-slot:modal-title>Hello</template>
        <template class="close-button" id="close-button" v-slot:modal-header-close>
            <button type="button" class="btn-close" aria-label="Close"></button>

        </template>
        <p class="my-4">Vertically centered modal!</p>
    </b-modal>
    </div>
</template>

<script>
export default {
    showModal() {
      this.$refs['my-modal'].show()
    },
    hideModal() {
      this.$refs['my-modal'].hide()
    },
    toggleModal() {
      // We pass the ID of the button that we want to return focus to
      // when the modal has hidden
      this.$refs['my-modal'].toggle('#toggle-btn')
    },
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
</style>