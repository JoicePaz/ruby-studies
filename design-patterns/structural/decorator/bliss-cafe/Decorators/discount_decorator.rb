class DiscountDecorator < CoffeeDecorator
  def initialize(coffee, discount)
    super(coffee)
    @discount = discount
  end

  def cost
    super - @discount
  end

  def description
    "#{super}\n*Discount applied $#{@discount.round(2)}"
  end
end
