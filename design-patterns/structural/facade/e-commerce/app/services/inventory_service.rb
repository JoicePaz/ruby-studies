class InventoryService
  def self.check_availability(order)
    puts "Checking availability for Product: #{order.product_id}"
    true
  end
end
