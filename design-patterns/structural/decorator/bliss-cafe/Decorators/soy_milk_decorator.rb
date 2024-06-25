class SoyMilkDecorator < CoffeeDecorator
  def cost
    super + 0.7
  end

  def description
    "#{super}\n Soy Milk"
  end
end
