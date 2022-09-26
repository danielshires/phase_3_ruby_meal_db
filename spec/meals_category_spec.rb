require_relative "./spec_helper"

RSpec.describe MealCategory, "#initialize" do
    it "initializes a new object of the Meals class with the given attributes" do

        attributes = {
            idCategory: "1",
            strCategory: "Beef",
            strCategoryThumb: "https://www.themealdb.com/images/category/beef.png",
            strCategoryDescription: "Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]"
        }
        
        beef = MealCategory.new(attributes)
        
        expect(beef.strCategory).to eq "Beef"
    end
end

# RSpec.describe Meals, "#list_categories" do 
#     it "fetches a list of meal categories based on an input" do
#         meals = Meals.list_categories("beef")
#         expect(meals.length).to be > 0
#         meals.each do |meal|
#             expect(meal).to be_a_kind_of Meals
#         end
#     end
# end

# RSpec.describe Meals, "#filter_by_category" do
#     it "gets the details of the category given an string" do
#         meals = Meals.filter_by_category("beef")
#         expect(meals.length).to be > 0
#         meals.each do |meal|
#             expect(meal).to be_a_kind_of Meals
#         end
#     end
# end