require_relative '../enums/coffee_size'
require_relative '../enums/milk_type'

class Coffee
  attr_reader :size

  def initialize(size)
    @size = size
  end

  def cost
    case @size
    when CoffeeSize::SMALL
      3.0
    when CoffeeSize::MEDIUM
      5.0
    when CoffeeSize::LARGE
      7.0
    else
      5.0 # Default to medium if not specified
    end
  end

  def description
    "#{@size.capitalize} Coffee"
  end
end
