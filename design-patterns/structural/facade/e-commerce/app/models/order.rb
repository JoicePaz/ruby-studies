class Order
  attr_accessor :product_id, :quantity, :customer_id, :status, :delivery_details

  def initialize(params)
    @product_id = params['product_id']
    @quantity = params['quantity']
    @customer_id = params['customer_id']
    @status = 'pending'
    @delivery_details = nil
  end

  def valid?
    !@product_id.nil? && !@quantity.nil? && !@customer_id.nil?
  end

  def save
    # simulating a persistence
    puts "Order saved: #{@product_id}, #{@quantity}, #{@customer_id}, #{@status}, #{@delivery_details}"
  end

  def to_hash
    {
      product_id: @product_id,
      quantity: @quantity,
      customer_id: @customer_id,
      status: @status,
      delivery_details: @delivery_details
    }
  end
end
