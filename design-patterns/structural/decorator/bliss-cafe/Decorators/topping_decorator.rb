class ToppingDecorator < CoffeeDecorator
  def initialize(coffee, topping, cost)
    super(coffee)
    @topping = topping
    @topping_cost = cost
  end

  def cost
    super + @topping_cost
  end

  def description
    "#{super}\n #{@topping} Topping"
  end
end
