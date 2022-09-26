require_relative "./spec_helper"

RSpec.describe Meals, "#initialize" do
    it "initializes a new object of the Meals class with the given attributes" do
        # Arrange
        # Meaning that you set everything that is required for the test
        # What are the attributes for each method?
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
        # Act
        # Meaning you perform the action you want to test
        spicy_arrabiata_penne = Meals.new(attributes)
        # Assert
        # Meaning that you want to verify the whether the conditions meet the test
        # expect takes in the variable that you're testing
        expect(spicy_arrabiata_penne.strMeal).to eq "Spicy Arrabiata Penne"
    end
end

RSpec.describe Meals, "#list_meals_starting_with" do 
    it "fetches a list of meals given a alphabetical character" do
        meals = Meals.list_meals_starting_with("b")
        expect(meals.length).to be > 0
        meals.each do |meal|
            expect(meal).to be_a_kind_of Meals
        end
    end
end