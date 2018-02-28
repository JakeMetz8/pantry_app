module Add
    module_function

    def add
        puts "What food would you like to add?"
        food = gets.chomp
        "You have added #{food} to your pantry"
    end
end