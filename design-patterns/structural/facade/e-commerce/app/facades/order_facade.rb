require_relative '../services/payment_service'
require_relative '../services/inventory_service'
require_relative '../services/delivery_service'
require_relative '../services/notification_service'
require_relative '../models/order'

class OrderFacade
  def initialize(order_params)
    @order = Order.new(order_params)
  end

  def process_order
    unless @order.valid?
      return { status: 'failure', message: 'Invalid order parameters' }
    end

    if InventoryService.check_availability(@order)
      if PaymentService.process_payment(@order)
        delivery_details = DeliveryService.calculate_delivery(@order)
        NotificationService.send_confirmation(@order)
       
        @order.status = 'processed'
        @order.delivery_details = delivery_details
        @order.save
        
        { status: 'success', order: @order.to_hash }
      else
        { status: 'failure', message: 'Payment failed' }
      end
    else
      { status: 'failure', message: 'Product out of stock' }
    end
  end
end
