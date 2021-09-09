<template>
    <div class="card">
        <img class="card-img-top" :src="require(`../assets/foods/${imageName}`)" alt="Card image cap">

        
        <div class="card-body">
            <h5 class="card-title">
                <span>{{ index + 1 + ". " }}</span>
                <span>{{ foodName }}</span>
            </h5>
            <p class="card-text d-flex justify-content-between align-items-center">
                <span class="content">{{foodPrice}}</span>
                <span class="fa-stack fa-1x content">
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
    props: ["foodName", "imageName", "foodPrice", "index"],
    methods: {

    }
}
</script>

<style scoped>

.card {
    width: 65%;
    height: 350px;
    margin: 10px auto;  
    border-radius: 5%; 
    cursor: pointer;

}

.icon-b {
    font-size: 16px;
}


.content {
    color: red; 
}


img {
    display: inline-block;
    height: 80%;
    border-radius: 5%;
}
</style>