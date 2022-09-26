require_relative "../config/environment.rb"

class Meals
    
    def initialize(attributes)
        attributes.each do |key, value|
        self.class.attr_accessor(key)
        self.send(("#{key}="), value)
        end
    end
    
end
