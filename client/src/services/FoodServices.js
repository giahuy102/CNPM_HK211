export async function getAllFoods() {
    const response = await fetch("/api/foods");
    return await response.json();
}

export async function getAllFoodCategories() {
    const response = await fetch("/api/food_categories");
    return await response.json();
}