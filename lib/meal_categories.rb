require_relative "../config/environment.rb"

class MealCategories
    
    CATEGORY_API_URL = "https://www.themealdb.com/api/json/v1/1/categories.php"
    
    def initialize(attributes)
        attributes.each do |key, value|
        self.class.attr_accessor(key)
        self.send(("#{key}="), value)
        end
    end        

    def self.list_categories
        url = CATEGORY_API_URL
        make_request_and_parse_response(url)
    end

    private

    def self.make_request_and_parse_response(url)

        uri = URI.parse(url)

        response = Net::HTTP.get_response(uri)
        response_json = JSON.parse(response.body)

        meals = response_json["categories"].collect do |category|
            attributes = {
                idCategory: category["idCategory"],
                strCategory: category["strCategory"],
                strCategoryDescription: category["strCategoryDescription"]
            }
            MealCategories.new(attributes)
        end

    end
    
end
