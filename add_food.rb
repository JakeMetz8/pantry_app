require_relative 'find_food'
require 'colorize'

module Add_food

ADD_COMAND = 'add'

module_function

  def add_item pantry
    puts "Please enter the food name".colorize(:color => :light_green, :background => :light_black)
    item = gets.strip.downcase
    puts "Please enter amount to add".colorize(:color => :light_green, :background => :light_black)
    amount = gets.strip.to_f
    if Find_food.is_in_pantry pantry,item
      pantry[item] += amount
    else
      pantry.store(item, amount)
    end
    pantry.each {|key, value| puts "#{key} : #{value}".colorize(:light_yellow) }
  end

end

