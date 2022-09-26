require_relative "./spec_helper"

RSpec.describe FilteredCategory, "#initialize" do
    it "initializes a new object of the Meals class with the given attributes" do

        attributes = {
            strMeal: "Beef and Mustard Pie",
            idMeal: "52874"
        }
        
        beef = FilteredCategory.new(attributes)
        
        expect(beef.strMeal).to eq "Beef and Mustard Pie"
    end
end

RSpec.describe FilteredCategory, "#filter_by_category" do 
    it "filters a list of meal categories based on an input and fecthes the result" do
        meals = FilteredCategory.filter_by_category("Beef")
        expect(meals.length).to be > 0
        meals.each do |meal|
            expect(meal).to be_a_kind_of FilteredCategory
        end
    end
end