require_relative 'add_food'
require_relative 'take_food_out'
require_relative 'list_food'
require_relative 'find_food'
require_relative 'shopping_list'
require 'highline'
require 'colorize'

module Pantryapp
  module_function

def done
  exit
end

pantry={}

cli = HighLine.new
################# MENU STYLE #1
loop do
cli.choose do |menu|
    puts "PANTRY APP MENU".colorize(:color => :black, :background => :light_green)
    menu.choice("Add food to your pantry".colorize(:light_green)) { (Add_food::add_item(pantry) ) }
    menu.choice("Take food from your pantry".colorize(:light_green)) { ( Take_food_out::remove_item(pantry) ) }
    menu.choice("List the food you have in your pantry".colorize(:light_green)) { ( List_food::list_all(pantry) ) }
    menu.choice("Find food in the pantry".colorize(:light_green)) { ( Find_food::show_stock(pantry)  ) }
    menu.choice("Make a grocery list".colorize(:light_green)) { ( Shopping_list::list_for_recipe(pantry) ) }
    menu.choice("Exit".colorize(:light_green)) { (done) }
    menu.prompt = "What would you like to do in the pantry? (OPTION: 1, 2, 3, 4, 5, 6)".colorize(:color => :light_green, :background => :light_black)
    puts "\n"
  end
end

  

end


#welcome prompt

#display pantry navigation menu and list options 

#user selects option from navigation

#def start, take input, execute module file
    #module: add_food

    #module: take_food

    #module: list_food

    #module: find_food

    #module: shopping_list

#loop back to navigation menu

#end upon exit option