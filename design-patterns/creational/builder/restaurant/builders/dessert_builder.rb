require_relative './base_menu_builder'

class DessertBuilder < BaseMenuBuilder
    def initialize(menu)
      super(menu)
    end
  
    def build_menu
      puts "\n**Desserts:**"
      @menu.items_in_category("Desserts").each do |item|
        puts "  - #{item}"
      end
    end
  
    def select_item(item_name)
      super(item_name)
    end
end