require_relative 'add_food'
require_relative 'take_food'
require_relative 'list_food'
require_relative 'find_food'
require_relative 'shopping_list'
require 'highline'

module Pantryapp
  module_function

cli = HighLine.new
################# MENU STYLE #1
loop do
cli.choose do |menu|
    puts "PANTRY APP MENU"
    menu.choice(:"Add food to your pantry") { cli.say( Add::add ) }
    menu.choice(:"Take food from your pantry") { cli.say( Take_food::take ) }
    menu.choice(:"List the food you have in your pantry") { cli.say( List_food::list ) }
    menu.choice(:"Find food in the pantry") { cli.say( Find_food::find ) }
    menu.choice(:"Make a grocery list") { cli.say( Shopping_list::shopping_list ) }
    menu.prompt = "What would you like to do in the pantry? (OPTION: 1, 2, 3, 4, 5)"
  end
end




=begin
############### MENU STYLE #2
loop do
    cli.choose do |menu|
      menu.layout = :menu_only
      #When set to true, responses are allowed to be an entire line of input, including details beyond the command itself
      menu.shell  = true
  
      menu.choice(:"Add food to pantry") {cli.say( Add::ad )}
      
      menu.choice(:"Take food from pantry") {cli.say( Take_food::take )}
      
      menu.choice(:"List all food in the pantry") {cli.say( List_food::list )}
      
      menu.choice(:"Find food in the pantry") {cli.say( Find_food::find )}
      
      menu.choice(:"Make a grocery list") {cli.say( Shopping_list::shopping_list )}
    end
  end
=end

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