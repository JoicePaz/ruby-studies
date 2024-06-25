# Thread Safe Singleton Implementation 
## Bliss Café Scenario


#### Introduction

This project is a Ruby application designed to help baristas at Café Bliss manage coffee customizations efficiently. Using the Decorator design pattern and `SimpleDelegator`, this application allows the creation of customized coffee orders with various add-ons, ensuring accurate pricing and order processing.

#### Context and Story

Café Bliss is a popular neighborhood café known for its custom coffee options. Customers can personalize their coffee with different types of milk, flavors, and toppings. The manual process of managing these customizations has led to errors and inefficiencies. This application aims to streamline the customization process, making it easier for baristas to prepare orders accurately.

#### How to Run the File:

Navigate to the folder containing the `main.rb` file. Execute the following command:

    ruby main.rb

#### Explanation

- `coffee.rb`: Defines the base Coffee class and a simple Coffee implementation.
- `coffee_decorator.rb`: Defines the base Decorator class for adding customizations to the coffee.
- `milk.rb`: Contains the MilkDecorator class, which adds different types of milk to the coffee.
- `flavor.rb`: Contains the FlavorDecorator class, which adds different flavors to the coffee.
- `topping.rb`: Contains the ToppingDecorator class, which adds different toppings to the coffee.
- `discount.rb`: Contains the DiscountDecorator class, which applies discounts to the coffee.
- `sugar.rb`: Contains the SugarDecorator class, which adds different amounts of sugar to the coffee.
- `main.rb`: The main file to run the application, demonstrating a real-world example of customizing a coffee order.
