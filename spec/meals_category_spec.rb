require_relative "./spec_helper"

RSpec.describe MealCategories, "#initialize" do
    it "initializes a new object of the Meals class with the given attributes" do

        attributes = {
            idCategory: "1",
            strCategory: "Beef",
            strCategoryDescription: "Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]"
        }
        
        beef = MealCategories.new(attributes)
        
        expect(beef.strCategory).to eq "Beef"
    end
end

RSpec.describe MealCategories, "#list_categories" do 
    it "fetches a list of meal categories" do
        meals = MealCategories.list_categories
        expect(meals.length).to be > 0
        meals.each do |meal|
            expect(meal).to be_a_kind_of MealCategories
        end
    end
end