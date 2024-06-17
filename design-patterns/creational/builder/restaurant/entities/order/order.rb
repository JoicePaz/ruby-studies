class Order
    def initialize
        @items = []
    end

    def add_item(item)
        @items << item
    end
    
    def items
        @items
    end
    
    def get_total_price
        @items.sum(&:price)
    end
end