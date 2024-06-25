module FlavorType
  STRAWBERRY = { name: 'strawberry', cost: 1.5 }
  CARAMEL = { name: 'caramel', cost: 2.0 }
  MINT = { name: 'mint', cost: 1.0 }
  ORANGE = { name: 'orange', cost: 1.75 }

  def self.values
    [STRAWBERRY, CARAMEL, MINT, ORANGE].map { |flavor| flavor[:name] }
  end

  def self.cost(flavor_name)
    case flavor_name
    when STRAWBERRY[:name]
      STRAWBERRY[:cost]
    when CARAMEL[:name]
      CARAMEL[:cost]
    when MINT[:name]
      MINT[:cost]
    when ORANGE[:name]
      ORANGE[:cost]
    else
      0.0 
    end
  end
end
