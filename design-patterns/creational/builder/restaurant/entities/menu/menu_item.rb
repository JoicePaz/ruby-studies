class MenuItem
  def initialize(name, category, price)
    @name = name
    @category = category
    @price = price
  end

  attr_reader :name
  attr_reader :price

end  