const express = require("express");
const router = express.Router();
const foods = require("../services/foods");


router.get("/api/foods", (req, res) => {
    try {
        foods.getAllFoods(function(foods) {
            res.json(foods);
        })
    }
    catch (err) {
        console.error(`Error while getting foods data `, err.message);
        next(err);
    }

})

module.exports = router;

