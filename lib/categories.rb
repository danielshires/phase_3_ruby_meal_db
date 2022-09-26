require_relative "../config/environment.rb"

class MealCategory
    
    SEARCH_API_URL = "https://www.themealdb.com/api/json/v1/1/search.php?s="
    DETAILS_API_URL = "https://www.themealdb.com/api/json/v1/1/lookup.php?i="
    CATEGORY_API_URL = "https://themealdb.com/api/json/v1/1/filter.php?c="
    
    def initialize(attributes)
        attributes.each do |key, value|
        self.class.attr_accessor(key)
        self.send(("#{key}="), value)
        end
    end        

    def self.filter_by_category(category)
        url = CATEGORY_API_URL + category
        make_request_and_parse_response(category)
    end

    private

    def self.make_request_and_parse_response(url)

        uri = URI.parse(url)

        response = Net::HTTP.get_response(uri)
        response_json = JSON.parse(response.body)

        meals = response_json["meals"].collect do |meal|
            attributes = {
                idCategory: meal["idCategory"],
                strCategory: meal["strCategory"],
                strCategoryDescription: "strCategoryDescription"
          
            }
            Meals.new(attributes)
        end

    end
    
end
