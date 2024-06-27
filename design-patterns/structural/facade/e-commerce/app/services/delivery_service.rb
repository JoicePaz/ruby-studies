class DeliveryService
  def self.calculate_delivery(order)
    puts "Calculating delivery for Order: #{order.product_id}"
    { cost: 10.0, time: '3 days' }
  end
end
