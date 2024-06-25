module ToppingType
  CHOCOBITES = { name: 'chocobites', cost: 1.5 }
  OREO = { name: 'oreo', cost: 2.0 }
  CHANTILY = { name: 'chantily', cost: 3.0 }

  def self.values
    [CHOCOBITES, OREO, CHANTILY].map { |toppings| toppings[:name] }
  end

  def self.cost(toppings)
    case toppings
    when CHOCOBITES[:name]
      CHOCOBITES[:cost]
    when OREO[:name]
      OREO[:cost]
    when CHANTILY[:name]
      CHANTILY[:cost]
    else
      0.0 
    end
  end
end
