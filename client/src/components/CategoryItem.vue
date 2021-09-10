<template>
    <div class="card text-center d-flex flex-column">
        <div class="d-flex align-items-center container-img">
            <img class="center" :src="require(`../assets/categories/${sourceImg}`)"  alt="Card image cap">
        </div>
        <div class="card-body">
            <p class="card-title">{{ categoryName }}</p>
        </div>
    </div>
</template>

<script>
export default {
    name: "CategoryItem",
    data() {
        return {

        }
    },
    props: ["sourceImg", "categoryName"]

}
</script>

<style scoped>
.card {
    width: 92%;
    height: 140px;
    border-radius: 15%;
    transition: all 0.5s;
    cursor: pointer;
    color: #130f40;
    font-weight: 500;
}

.card:hover {
    background-color: #130f40;
    color: white;
}

.center {
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 50%;
}

.container-img {
    height: 100px;
}

.card-body {
    padding: 0 0;
}
.card-title {
    margin: 1px auto 1px auto;
}

img {
    display: inline-block;
    border-radius: 100%;
    height: 80%;
    background-color: white;
}
</style>
