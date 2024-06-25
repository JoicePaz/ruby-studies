class SugarDecorator < CoffeeDecorator
  def initialize(coffee, amount)
    super(coffee)
    @amount = amount
  end

  def cost
    super + (@amount * 0.1)
  end

  def description
    "#{super}\n#{@amount} spoon(s) of Sugar"
  end
end
