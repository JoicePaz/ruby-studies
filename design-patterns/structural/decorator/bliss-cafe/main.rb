require_relative 'entities/coffee'
require_relative 'decorators/coffee_decorator'
require_relative 'decorators/milk_decorator'
require_relative 'decorators/soy_milk_decorator'
require_relative 'decorators/almond_milk_decorator'
require_relative 'decorators/flavor_decorator'
require_relative 'decorators/topping_decorator'
require_relative 'decorators/discount_decorator'
require_relative 'decorators/sugar_decorator'
require_relative 'enums/coffee_size'
require_relative 'enums/milk_type'
require_relative 'enums/topping_type'
require_relative 'enums/flavor_type'

def get_user_input(prompt)
  print "#{prompt}"
  gets.chomp
end

def select_size
  puts "Select coffee size (small, medium, large):"
  size = get_user_input("Size: ")

  until CoffeeSize.values.include?(size)
    puts "\n\nInvalid size. Please select either small, medium, or large."
    size = get_user_input("Size: ")
  end

  size.downcase
end

def add_milk(coffee)
  puts "\nChoose milk type (none, regular, soy, almond):"
  
  loop do
    milk_type = get_user_input("Milk type: ")

    if MilkType.values.include?(milk_type.downcase)
      case milk_type.downcase
      when MilkType::REGULAR
        coffee = MilkDecorator.new(coffee)
      when MilkType::SOY
        coffee = SoyMilkDecorator.new(coffee)
      when MilkType::ALMOND
        coffee = AlmondMilkDecorator.new(coffee)
      end
      break
    else
      puts "\nInvalid milk type. Please choose from: none, regular, soy, almond."
    end
  end
  
  coffee
end

def add_flavor(coffee)
  puts "\nDo you want to add a flavor? (y/n)"
  add_flavor = get_user_input("Add flavor: ").downcase

  until add_flavor == 'y' || add_flavor == 'n'
    puts "\nInvalid answer. Please choose between 'y' and 'n'."
    add_flavor = get_user_input("Add flavor: ").downcase
  end

  while add_flavor == 'y'
    puts "\nAvailable flavors:"
    FlavorType.values.each do |flavor|
      puts "- #{flavor.capitalize}"
    end

    flavor = get_user_input("\nFlavor type: ").downcase

    if FlavorType.values.include?(flavor)
      flavor_cost = FlavorType.cost(flavor)
      coffee = FlavorDecorator.new(coffee, flavor, flavor_cost)
      puts "\Flavor added: #{flavor.capitalize} ($#{flavor_cost})"
    else
      puts "\nInvalid flavor type. Please choose from the available options."
      next
    end
    
    puts "\nDo you want to add another flavors? (y/n)"
    add_flavor = get_user_input("Add flavor: ").downcase
  end

  coffee
end

def add_toppings(coffee)
  puts "\nDo you want to add toppings? (y/n)"
  add_toppings = get_user_input("Add topping: ").downcase

  until add_toppings == 'y' || add_toppings == 'n'
    puts "\n\nInvalid answer. Please choose between 'y' and 'n'."
    add_toppings = get_user_input("Add topping: ").downcase
  end

  while add_toppings == 'y'
    puts "\nAvailable toppings:"
    ToppingType.values.each do |topping|
      puts "- #{topping.capitalize}"
    end

    topping = get_user_input("\nTopping type: ").downcase

    if ToppingType.values.include?(topping)
      topping_cost = ToppingType.cost(topping)
      coffee = ToppingDecorator.new(coffee, topping, topping_cost)
      puts "\nTopping added: #{topping.capitalize} ($#{topping_cost})"
    else
      puts "\nInvalid topping type. Please choose from the available options."
      next
    end
    
    puts "\nDo you want to add another topping? (y/n)"
    add_toppings = get_user_input("Add topping: ").downcase
  end

  coffee
end

def add_sugar(coffee)
  sugar_amount = nil

  loop do
    print "\nHow many teaspoons of sugar? "
    input = gets.chomp

    if input.match?(/^\d+$/)
      sugar_amount = input.to_i
      break
    else
      puts "Invalid input. Please enter a valid number."
    end
  end

  coffee = SugarDecorator.new(coffee, sugar_amount)
  coffee
end

def apply_discount(coffee)
  if coffee.cost > 10
    discount = coffee.cost * 0.1 # 10% discount if cost exceeds $10
    
    puts "\n***** You earned a $#{discount.round(2)} discount! *****\n\n"
    coffee = DiscountDecorator.new(coffee, discount)
  end

  coffee
end

puts "\n***** Welcome to Bliss Café *****\n\n"
size = select_size

coffee = Coffee.new(size)
coffee = add_milk(coffee)
coffee = add_flavor(coffee)
coffee = add_toppings(coffee)
coffee = add_sugar(coffee)
coffee = apply_discount(coffee)

puts "\n\n\n----------- Your order resume -----------\n"
puts "#{coffee.description}\n\nTotal: $#{coffee.cost.round(2)}"