require_relative '../entities/order/order'

class BaseMenuBuilder
    def initialize(menu)
        @order = Order.new
        @menu = menu
    end

    def build_menu
        puts "**Categories**"
    end

    def select_item(item_name)
        item = @menu.get_item_by_name(item_name)

        if item
            puts "\nSelected item: #{item.name}"
            @order.add_item(item)
            item
        else
            puts "\nItem couldn't be found"
            nil
        end
    end
    
    def finalize_order
        puts "\n**Order resume**"
        @order.items.each do |item|
            puts " - #{item.name} - $#{item.price}"
        end

        puts "\nTotal: $#{@order.get_total_price}"
    end
end