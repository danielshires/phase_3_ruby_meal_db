require_relative "../config/environment.rb"

class Meals
    
    SEARCH_API_URL = "https://www.themealdb.com/api/json/v1/1/search.php?s="
    DETAILS_API_URL = "https://www.themealdb.com/api/json/v1/1/lookup.php?i="
    CATEGORY_API_URL = "https://themealdb.com/api/json/v1/1/filter.php?c="
    
    def initialize(attributes)
        attributes.each do |key, value|
        self.class.attr_accessor(key)
        self.send(("#{key}="), value)
        end
    end

    def self.list_meals_starting_with(alphabet)
        url = SEARCH_API_URL + alphabet
        make_request_and_parse_response(url)
    end

    def self.get_meal_details(id)
        url = DETAILS_API_URL + id.to_s
        make_request_and_parse_response(url)
    end

    private

    def self.make_request_and_parse_response(url)
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response_json = JSON.parse(response.body)
        meals = response_json["meals"].collect do |meal|
            attributes = {
                idMeal: meal["idMeal"],
                strMeal: meal["strMeal"],
                strDrinkAlternate: meal["strDrinkAlternate"],
                strCategory: meal["strCategory"],
                strArea: meal["strArea"],
                strInstructions: meal["strInstructions"],
                strTags: meal["Pasta,Curry"],
                strIngredient1: meal["strIngredient1"],
                strIngredient2: meal["strIngredient2"],
                strIngredient3: meal["strIngredient3"],
                strIngredient4: meal["strIngredient4"],
                strIngredient5: meal["strIngredient5"],
                strIngredient6: meal["strIngredient6"],
                strIngredient7: meal["strIngredient7"],
                strIngredient8: meal["strIngredient8"],
                strIngredient9: meal["strIngredient9"],
                strIngredient10: meal["strIngredient10" ],
                strIngredient11: meal["strIngredient11" ],
                strIngredient12: meal["strIngredient12" ],
                strIngredient13: meal["strIngredient13" ],
                strIngredient14: meal["strIngredient14" ],
                strIngredient15: meal["strIngredient15" ],
                strIngredient16: meal["strIngredient16"],
                strIngredient17: meal["strIngredient17"],
                strIngredient18: meal["strIngredient18"],
                strIngredient19: meal["strIngredient19"],
                strIngredient20: meal["strIngredient20"],
                strMeasure1: meal["strMeasure1"],
                strMeasure2: meal["strMeasure2"],
                strMeasure3: meal["strMeasure3"],
                strMeasure4: meal["strMeasure4"],
                strMeasure5: meal["strMeasure5"],
                strMeasure6: meal["strMeasure6"],
                strMeasure7: meal["strMeasure7"],
                strMeasure8: meal["strMeasure8"],
                strMeasure9: meal["strMeasure9"],
                strMeasure10: meal["strMeasure10"],
                strMeasure11: meal["strMeasure11"],
                strMeasure12: meal["strMeasure12"],
                strMeasure13: meal["strMeasure13"],
                strMeasure14: meal["strMeasure14"],
                strMeasure15: meal["strMeasure15"],
                strMeasure16: meal["strMeasure16"],
                strMeasure17: meal["strMeasure17"],
                strMeasure18: meal["strMeasure18"],
                strMeasure19: meal["strMeasure19"],
                strMeasure20: meal["strMeasure20"],
            }
            
        Meals.new(attributes)
        end

    end
    
end

