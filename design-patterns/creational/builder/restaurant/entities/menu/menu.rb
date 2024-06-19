require_relative './menu_item'

class Menu 
    def initialize
        @items = {}

        @categories = {
            "Main Dishes" => ["Chickpeas with curry and Sweet Potatoes", "Gnocchi Pomodoro", "Vegan barbecure al Brazilian"],
            "Side Dishes" => ["White Rice", "Tropean Beans", "Green Salad"],
            "Desserts" => ["Chocolate Mousse", "Chocolate Pudding", "Ice Cream"]
        }

        @categories.each do |category, item_names|
            item_names.each do |item_name|
                @items[item_name] = MenuItem.new(item_name, category, rand(15.0..99.99).round(2))
            end
        end
    end

    def categories
        @categories.keys
    end
    
    def items_in_category(category)
        @categories[category] || []
    end
    
    def get_item_by_name(item_name)
        @items[item_name]
    end
end