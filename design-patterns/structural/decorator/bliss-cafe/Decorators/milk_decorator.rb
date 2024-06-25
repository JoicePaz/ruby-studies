class MilkDecorator < CoffeeDecorator
  def cost
    super + 0.5
  end

  def description
    "#{super}Milk"
  end
end
