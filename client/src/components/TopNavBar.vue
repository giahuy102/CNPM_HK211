<template>
    <div>
        <b-navbar variant="faded" type="light" class="nav">
            <a href="#">
                <!-- use stack icon to custom font-awesome -->
                <span class="fa-stack fa-1x">
                    <i class="fa fa-square fa-stack-2x icon-b"></i>
                    <i class="fa fa-home fa-stack-1x fa-inverse icon-a"></i>
                </span>

                <span>Back to home</span>
                
                
            </a>
        </b-navbar>
    </div>
</template>

<script>
export default {
    name: "TopNavBar"
}
</script>

<style scoped>

a {
    font-size: 20px;
    text-decoration: none;
    font-weight: 600;
    color: #130f40;
    padding: 0;
}

.icon-b {
    /* font-size: 20px; */
    font-size: 20px;
}

.nav {
    min-height: 80px;
}



</style>