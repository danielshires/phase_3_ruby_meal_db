require_relative "../config/environment.rb"
require_relative "./meal_categories.rb"

class FilteredCategory
    
    FILTER_API_URL = "https://www.themealdb.com/api/json/v1/1/filter.php?c="
    
    def initialize(attributes)
        attributes.each do |key, value|
        self.class.attr_accessor(key)
        self.send(("#{key}="), value)
        end
    end        

    def self.filter_by_category(category)
        url = FILTER_API_URL + category
        make_request_and_parse_response(url)
    end

    private

    def self.make_request_and_parse_response(url)

        uri = URI.parse(url)

        response = Net::HTTP.get_response(uri)
        response_json = JSON.parse(response.body)

        meals = response_json["meals"].collect do |meal|
            attributes = {
                strMeal: meal["strMeal"],
                idMeal: meal["idMeal"]
            }
            FilteredCategory.new(attributes)
        end

    end
    
end
