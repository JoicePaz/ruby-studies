class AlmondMilkDecorator < CoffeeDecorator
  def cost
    super + 0.8
  end

  def description
    "#{super}\nAlmond Milk"
  end
end
