require_relative './base_menu_builder.rb'

class MainCourseBuilder < BaseMenuBuilder
  def initialize(menu)
    super(menu)
  end
  
    def build_menu
      puts "\n**Main Dishes:**"
      @menu.items_in_category("Main Dishes").each do |item|
        puts "  - #{item.name} - R$#{item.price}"
      end
    end
  
    def select_item(item_name)
      super(item_name)
    end
end
  