class Client
  def initialize(name)
    @name = name
  end
  
  def order_arrangement(factory)
    flower = factory.create_flower
    packaging = factory.create_packaging
  
    puts "Client: #{@name}"
    puts "Flower: #{flower.type}"
    puts "Packaging: #{packaging.material}"
  end
end