require_relative './base_menu_builder'

class SideDishBuilder < BaseMenuBuilder
  def initialize(menu)
    super(menu)
  end
  
  def build_menu
    puts "\n**Side Dishes:**"
    @menu.items_in_category("Side Dishes").each do |item|
      puts "  - #{item.name} - R$#{item.price}"
    end
  end
  
  def select_item(item_name)
    super(item_name)
  end
end  