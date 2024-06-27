class PaymentService
  def self.process_payment(order)
    puts "Processing payment for Order: #{order.product_id}"
    true
  end
end
