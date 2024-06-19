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
        builder_class = choose_menu_type

        return unless builder_class

        builder = builder_class.new(@menu)
        builder.build_menu
        
        process_order(builder)
        builder.finalize_order
    end

    private

    def choose_menu_type
        loop do
            puts "\nWhat type of menu would you like to choose?"
            puts "1 - Desserts"
            puts "2 - Main Dishes"
            puts "3 - Side Dishes"
            puts "0 - Exit\n\n"

            choice = gets.chomp.to_i

            case choice
            when 1 then return DessertBuilder
            when 2 then return MainCourseBuilder
            when 3 then return SideDishBuilder
            when 0 then return nil
            else
                puts "\nInvalid option, please enter a number between 0 and 3."
            end
        end
    end

    def process_order(builder)
        loop do
            puts "\nEnter the name of the desired item or 'exit' to finish:\n\n"
            item_name = gets.chomp.strip

            break if item_name.downcase == "exit"

            selected_item = builder.select_item(item_name)

            if selected_item
                puts "\nWould you like to add more items? (Y/N)"
                break if gets.chomp.strip.downcase != "y"
            end
        end
    end
end
