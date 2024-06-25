class CustomFlavorDecorator < CoffeeDecorator
  def initialize(coffee, flavor, cost)
    super(coffee)
    @flavor = flavor
    @flavor_cost = cost
  end

  def cost
    super + @flavor_cost
  end

  def description
    "#{super}\n#{@flavor} Flavor"
  end
end
