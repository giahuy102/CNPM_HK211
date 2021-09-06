<template>
    <div class="card text-center" style="width: 18rem;">
        <img class="card-img-top center" :src="require(`../assets/categories/${sourceImg}`)"  alt="Card image cap">
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
.center {
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 50%;
}
</style>
