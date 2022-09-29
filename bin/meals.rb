require_relative "../config/environment.rb"

puts
puts "Welcome to the Meals DB"
puts "-"
puts
puts "Press '/' then 'enter' to exit at anytime"
puts
loop do
    puts "Enter a number from the following options..."
    puts
    puts "1: Search by alphabet"
    puts "2: Search by category"
    puts "3: I'm feeling lucky"
    puts
    number = gets.chomp
    if number == "/"
        break
    end
    puts
    # Searchb by alphabet
    if number == "1"
        puts "Please input a charecter to search by"
        puts
        starting_alphabet = gets.chomp        
        Meals.list_meals_starting_with(starting_alphabet).each do |meal|
            puts
            puts "#{meal.strMeal}"
            puts "#{meal.strCategory} · #{meal.strArea}"
            puts "ID - #{meal.idMeal}"
        end
        puts
        puts "Choose from the following recipes. Enter the ID to view the recipe"
        meal_id = gets.chomp        
        puts
        Meals.get_meal_details(meal_id).each do |meal|
            puts
            puts "#{meal.strMeal}"
            puts
            puts "#{meal.strCategory} · #{meal.strArea}"
            puts
            puts "Instructions"
            puts "#{meal.strInstructions}"
            puts
            puts "Ingredients:"           
            puts "#{meal.strMeasure1} #{meal.strIngredient1}"
            puts "#{meal.strMeasure2} #{meal.strIngredient2}"
            puts "#{meal.strMeasure3} #{meal.strIngredient3}"
            puts "#{meal.strMeasure4} #{meal.strIngredient4}"
            puts "#{meal.strMeasure5} #{meal.strIngredient5}"
            puts "#{meal.strMeasure6} #{meal.strIngredient6}"
            puts "#{meal.strMeasure7} #{meal.strIngredient7}"
            puts "#{meal.strMeasure8} #{meal.strIngredient8}"
            puts "#{meal.strMeasure9} #{meal.strIngredient9}"
            puts "#{meal.strMeasure10} #{meal.strIngredient10}"
            puts "#{meal.strMeasure11} #{meal.strIngredient11}"
            puts "#{meal.strMeasure12} #{meal.strIngredient12}"
            puts "#{meal.strMeasure13} #{meal.strIngredient13}"
            puts "#{meal.strMeasure14} #{meal.strIngredient14}"
            puts "#{meal.strMeasure15} #{meal.strIngredient15}"
            puts "#{meal.strMeasure16} #{meal.strIngredient16}"
            puts "#{meal.strMeasure17} #{meal.strIngredient17}"
            puts "#{meal.strMeasure18} #{meal.strIngredient18}"
            puts "#{meal.strMeasure19} #{meal.strIngredient19}"
            puts "#{meal.strMeasure20} #{meal.strIngredient20}"      
        end
    # Search by category
    elsif number == "2"
        puts    
        MealCategories.list_categories.each do |meal|
            puts
            puts "#{meal.strCategory}"
        end
        puts
        puts "Choose a category from the list above"
        category = gets.chomp        
        FilteredCategory.filter_by_category(category).each do |category_type|
            puts 
            puts "#{category_type.strMeal}"
            puts "#{category_type.idMeal}"            
        end
        puts
        puts "Choose from the following recipes. Enter the ID to view the recipe"
        meal_id = gets.chomp        
        puts
        Meals.get_meal_details(meal_id).each do |meal|
            puts
            puts "#{meal.strMeal}"
            puts
            puts "#{meal.strCategory} · #{meal.strArea}"
            puts
            puts "Instructions"
            puts "#{meal.strInstructions}"
            puts
            puts "Ingredients:"           
            puts "#{meal.strMeasure1} #{meal.strIngredient1}"
            puts "#{meal.strMeasure2} #{meal.strIngredient2}"
            puts "#{meal.strMeasure3} #{meal.strIngredient3}"
            puts "#{meal.strMeasure4} #{meal.strIngredient4}"
            puts "#{meal.strMeasure5} #{meal.strIngredient5}"
            puts "#{meal.strMeasure6} #{meal.strIngredient6}"
            puts "#{meal.strMeasure7} #{meal.strIngredient7}"
            puts "#{meal.strMeasure8} #{meal.strIngredient8}"
            puts "#{meal.strMeasure9} #{meal.strIngredient9}"
            puts "#{meal.strMeasure10} #{meal.strIngredient10}"
            puts "#{meal.strMeasure11} #{meal.strIngredient11}"
            puts "#{meal.strMeasure12} #{meal.strIngredient12}"
            puts "#{meal.strMeasure13} #{meal.strIngredient13}"
            puts "#{meal.strMeasure14} #{meal.strIngredient14}"
            puts "#{meal.strMeasure15} #{meal.strIngredient15}"
            puts "#{meal.strMeasure16} #{meal.strIngredient16}"
            puts "#{meal.strMeasure17} #{meal.strIngredient17}"
            puts "#{meal.strMeasure18} #{meal.strIngredient18}"
            puts "#{meal.strMeasure19} #{meal.strIngredient19}"
            puts "#{meal.strMeasure20} #{meal.strIngredient20}"      
        end

    # I'm feeling lucky
    elsif number == "3"
        puts
        puts "Number 3"
        puts
    else 
        puts
        puts "NOTIFICATION: You entered a number that wasn't 1, 2 or 3. Please try again."
        puts
    end

    end