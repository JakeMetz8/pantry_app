require_relative 'find_food'

module Take_food_out

TAKEOUT_COMAND = 'take'

module_function

  def remove_item pantry
    puts "Please enter the food name".colorize(:color => :light_green, :background => :light_black)
    item = gets.strip.downcase
    if (Find_food.is_in_pantry(pantry,item)) && (Find_food.get_stock(pantry, item) > 0)
      puts "Please enter amount to take".colorize(:color => :light_green, :background => :light_black)
      amount = gets.strip.to_f
      pantry[item] -= amount
      pantry.delete(item) if pantry[item] <= 0
    else
      puts "You don't have #{item} in your pantry".colorize(:red)
    end
    pantry.each {|key, value| puts "#{key} : #{value}".colorize(:light_yellow) }
  end

end
