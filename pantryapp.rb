require_relative 'add_food'
require_relative 'take_food_out'
require_relative 'list_food'
require_relative 'find_food'
require_relative 'shopping_list'
require 'highline'

module Pantryapp
  module_function
  
pantry={}
cli = HighLine.new
################# MENU STYLE #1
loop do
cli.choose do |menu|
    puts "PANTRY APP MENU"
    menu.choice(:"Add food to your pantry") { (Add_food::add_item(pantry) ) }
    menu.choice(:"Take food from your pantry") { ( Take_food_out::remove_item(pantry) ) }
    menu.choice(:"List the food you have in your pantry") { ( List_food::list_all(pantry) ) }
    menu.choice(:"Find food in the pantry") { ( Find_food::show_stock(pantry)  ) }
    menu.choice(:"Make a grocery list") { ( Shopping_list::list_for_recipe(pantry) ) }
    menu.prompt = "What would you like to do in the pantry? (OPTION: 1, 2, 3, 4, 5)"
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