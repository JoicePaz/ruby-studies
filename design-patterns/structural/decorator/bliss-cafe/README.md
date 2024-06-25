# Decorator Implementation 
## Bliss Café Scenario


#### Introduction

This project is a Ruby application designed to help baristas at Café Bliss manage coffee customizations efficiently. Using the Decorator design pattern and `SimpleDelegator`, this application allows the creation of customized coffee orders with various add-ons, ensuring accurate pricing and order processing.

#### Context and Story

Café Bliss is a popular neighborhood café known for its custom coffee options. Customers can personalize their coffee with different types of milk, flavors, and toppings. The manual process of managing these customizations has led to errors and inefficiencies. This application aims to streamline the customization process, making it easier for baristas to prepare orders accurately.

#### How to Run the File:

Navigate to the folder containing the `main.rb` file. Execute the following command:

    ruby main.rb

#### Explanation

### Project Structure
- `entities/`: Directory containing the main entities of the system.
    - `coffee.rb`: Defines the Coffee class representing a coffee order.
- `decorators/`: Directory for implementing the Decorator pattern for adding functionalities to coffee orders.
    - `coffee_decorator.rb`: Base decorator class for coffee.
    - `milk_decorator.rb`: Decorator for adding regular type of milk.
    - `almond_milk_decorator.rb`: Decorator for adding almond type of milk.
    - `soy_milk_decorator.rb`: Decorator for adding soy type of milk.
    - `flavor_decorator.rb`: Decorator for adding flavors to coffee.
    - `topping_decorator.rb`: Decorator for adding toppings to coffee.
    - `discount_decorator.rb`: Decorator for applying discounts based on order cost.
    - `sugar_decorator.rb`: Decorator for adding sugar to coffee.  
- `enums/`: Directory containing enumerations used in the system.
    - `coffee_size.rb`: Enum for defining coffee sizes (small, medium, large).
    - `milk_type.rb`: Enum for defining types of milk (none, regular, soy, almond).
    - `topping_type.rb`: Enum for defining types of toppings (strawberry, caramel, mint, orange) with respective costs.  
- `main.rb`: Main script where the coffee ordering process is orchestrated. It handles user input, validates choices, and applies decorators accordingly.
