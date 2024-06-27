class NotificationService
  def self.send_confirmation(order)
    puts "Sending confirmation for Order: #{order.product_id}"
  end
end
