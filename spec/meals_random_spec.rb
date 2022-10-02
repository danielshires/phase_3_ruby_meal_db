require_relative "./spec_helper"

RSpec.describe RandomMeal, "#initialize" do
    it "initializes a new object of the Meals class with the given attributes" do
        attributes = {
            idMeal: "52771",
            strMeal: "Spicy Arrabiata Penne",
            strDrinkAlternate: nil,
            strCategory: "Vegetarian",
            strArea: "Italian",
            strInstructions: "Bring a large pot of water to a boil. Add kosher salt to the boiling water, then add the pasta. Cook according to the package instructions, about 9 minutes.\r\nIn a large skillet over medium-high heat, add the olive oil and heat until the oil starts to shimmer. Add the garlic and cook, stirring, until fragrant, 1 to 2 minutes. Add the chopped tomatoes, red chile flakes, Italian seasoning and salt and pepper to taste. Bring to a boil and cook for 5 minutes. Remove from the heat and add the chopped basil.\r\nDrain the pasta and add it to the sauce. Garnish with Parmigiano-Reggiano flakes and more basil and serve warm.",
            strTags: "Pasta,Curry",
            strIngredient1: "penne rigate",
            strIngredient2: "olive oil",
            strIngredient3: "garlic",
            strIngredient4: "chopped tomatoes",
            strIngredient5: "red chile flakes",
            strIngredient6: "italian seasoning",
            strIngredient7: "basil",
            strIngredient8: "Parmigiano-Reggiano",
            strIngredient9: "",
            strIngredient10: "" ,
            strIngredient11: "" ,
            strIngredient12: "" ,
            strIngredient13: "" ,
            strIngredient14: "" ,
            strIngredient15: "" ,
            strIngredient16: nil,
            strIngredient17: nil,
            strIngredient18: nil,
            strIngredient19: nil,
            strIngredient20: nil,
            strMeasure1: "1 pound",
            strMeasure2: "1/4 cup",
            strMeasure3: "3 cloves",
            strMeasure4: "1 tin ",
            strMeasure5: "1/2 teaspoon",
            strMeasure6: "1/2 teaspoon",
            strMeasure7: "6 leaves",
            strMeasure8: "spinkling",
            strMeasure9: "",
            strMeasure10: "",
            strMeasure11: "",
            strMeasure12: "",
            strMeasure13: "",
            strMeasure14: "",
            strMeasure15: "",
            strMeasure16: nil,
            strMeasure17: nil,
            strMeasure18: nil,
            strMeasure19: nil,
            strMeasure20: nil,
        }
        spicy_arrabiata_penne = RandomMeal.new(attributes)
        expect(spicy_arrabiata_penne.strMeal).to eq "Spicy Arrabiata Penne"
    end
end

RSpec.describe RandomMeal, "#random_meal" do
    it "gets the details of the meals given an id" do
        meal = RandomMeal.random_meal
        expect(meal.length).to eq 1
        expect(meal[0].strMeal)
    end
end