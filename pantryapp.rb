require_relative 'add_food'
require_relative 'take_food'
require_relative 'list_food'
require_relative 'find_food'
require_relative 'shopping_list'
require 'highline'

#module Pantryapp
  #module_function

cli = HighLine.new

=begin
############### MENU STYLE #2
loop do
    cli.choose do |menu|
      menu.layout = :menu_only
      #When set to true, responses are allowed to be an entire line of input, including details beyond the command itself
      menu.shell  = true
  
      menu.choice(:"Add food to pantry") {cli.say(add)}
      
      menu.choice(:"Take food from pantry") {cli.say(take)}
      
      menu.choice(:"List all food in the pantry") {cli.say(list)}
      
      menu.choice(:"Find food in the pantry") {cli.say(find)}
      
      menu.choice(:"Make a grocery list") {cli.say(shopping_list)}
    end
  end
=end

################# MENU STYLE #1
loop do
cli.choose do |menu|
    menu.choice(:"Add food to your pantry") { cli.say( add ) }
    menu.choice(:"Take food from your pantry") { cli.say( take ) }
    menu.choice(:"List the food you have in your pantry") { cli.say( list ) }
    menu.choice(:"Find food in the pantry") { cli.say( find ) }
    menu.choice(:"Make a grocery list") { cli.say( shopping_list ) }
    menu.prompt = "What would you like to do in the pantry? (OPTION: 1, 2, 3, 4, 5)"
  end
end



#end


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