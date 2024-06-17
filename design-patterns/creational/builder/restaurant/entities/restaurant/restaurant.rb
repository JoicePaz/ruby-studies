require_relative '../menu/menu'
require_relative '../../builders/base_menu_builder'
require_relative '../../builders/dessert_builder'
require_relative '../../builders/main_course_builder'
require_relative '../../builders/side_dish_builder'

class Restaurant
    def initialize
        @menu = Menu.new
        @base_menu_builder = BaseMenuBuilder.new(@menu)
    end

    def take_order
        @base_menu_builder.build_menu

        puts "\nWhat type of menu would you like to choose?"
        puts "1 - Desserts"
        puts "2 - Main Dishes"
        puts "3 - Side Dishes"
        puts "0 - Exit"

        choice = gets.chomp.to_i

        builder_class = case choice
        when 1 then DessertBuilder
        when 2 then MainCourseBuilder
        when 3 then SideDishBuilder
        when 0 then return
        else
            puts "Invalid option, try again."
            return
        end

        builder = builder_class.new(@menu)
        builder.build_menu

        while true
            puts "\nEnter the name of the desired item or 'exit' to finish:"
            item_name = gets.chomp.strip

            break if item_name == "exit"

            selected_item = builder.select_item(item_name)

            if selected_item
                puts "\nWould you like to add more items? (Y/N)"
                next if gets.chomp.strip.downcase != "y"
            end
        end

        builder.finalize_order
    end
end
