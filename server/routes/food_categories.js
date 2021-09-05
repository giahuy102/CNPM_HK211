const express = require("express");
const router = express.Router();
const foods = require("../services/food_categories");


router.get("/api/food_categories", (req, res) => {
    try {
        foods.getAllFoodCategories(function(foodCategories) {
            res.json(foodCategories);
        })
    }
    catch (err) {
        console.error(`Error while getting food categories data `, err.message);
        next(err);
    }

})

module.exports = router;