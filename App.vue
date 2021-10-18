<template>
  <div id="app">
    <!-- <div id="header"> -->
      <div class="container-fluid row">
      <div id="left" class="col">
        <div id="icon">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left-square-fill" viewBox="0 0 16 16">
          <path d="M16 14a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12zm-4.5-6.5H5.707l2.147-2.146a.5.5 0 1 0-.708-.708l-3 3a.5.5 0 0 0 0 .708l3 3a.5.5 0 0 0 .708-.708L5.707 8.5H11.5a.5.5 0 0 0 0-1z"/>
        </svg>
        </div>
        <div id="textbox">Back</div>
      </div>
      <div id="mid" class="col" align="center">PAYMENT</div>
      <div id="right" align="right" class="col row" >
        <!-- <ul id="right-list">
          <li>Home</li>
          <li>Payment</li>
        </ul>
      </div> -->
        <div class="col-3">home</div>
        <div class="col-1">payment</div>
      </div>
      </div>
    <!-- </div> -->

    <div id="main">
      <div class="container-fluid">
      <div id="business">
        Business name
      </div>
      </div>
    </div>
    
  
  </div>
</template>

<script>


export default {
  name: 'Payment',
  components: {
    
  }
}
</script>

<style scoped>
/* #app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
} */

#main {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 0px;
  background: yellow;
}

#header {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

#left {
  /* margin-left: 10px; */
  display: flex;
  /* justify-content: space-between; */
  margin-top: 10px;
}

#icon {
  margin-right: 10px;
  margin-top: -1px;
}

#textbox {
  /* margin-top: 10px; */
}

#mid {
  margin-top: 10px;
}

#right {
  margin-top: 10px;
}

#right-list {
  display: inline-block;
  /* justify-content: space-between; */
  list-style: none;
  padding-left: 0;
  margin-right: 0px;
  margin-bottom: 0px;
}

#right-list li {
  display: inline-block;
  margin-right: 0px;
}

#business {
  display: inline-block;
  width: 500px;
  border: 1px solid red;
}
</style>
