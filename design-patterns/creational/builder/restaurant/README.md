# Builder Implementation 
## Vegan Restaurant Scenario


#### Problem:

In a restaurant with an extensive menu and numerous customization options, creating orders can be a complex and time-consuming process for waiters, especially during busy times. This can lead to order errors, delivery delays, and customer frustration.

The Builder pattern can be used to create a system that allows waiters to build orders in a quick, efficient and personalized way, making the code more simple and easier to understand.

#### How to Run the File:

Navigate to the folder containing the `main.rb` file. Execute the following command:

    ruby main.rb

 
#### Explanation

- Builders

`base_menu_builder.rb`: Base class that defines the interface for the builders to inherit.

`dessert_builder.rb`, `main_course_builder.rb`and `side_dish_builder.rb`: Class builders to construct the specific dishes.

- Entities

`menu.rb`: Class that contains the restaurant menu, it contains the available items.

`menu-item.rb`: Class that represents a menu item with it's attributes.

`order.rb`: Class that defines a individual order that contains menu items.

`restaurant.rb`: Class that managers the restaurant, including the menu, orders and its builders.


- Execution

 `main.rb`: Entry point for execution, which sets up the take order action.