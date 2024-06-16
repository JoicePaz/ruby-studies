# Abstract Factory Implementation 
## Blooming Gardens Scenario


#### Problem:

A flower shop company called "*Blooming Gardens*" wants to provide different types of floral arrangements for various occasions (such as weddings, birthdays, and funerals). Each type of occasion requires different combinations of flowers and specific packaging.

To solve this problem, we will use the Abstract Factory design pattern to create families of related objects (flowers and packaging) without specifying their concrete classes.



#### How to Run the File:

Navigate to the folder containing the `main.rb` file. Execute the following command:

    ruby main.rb

 
#### Explanation

- Products

`flower.rb` and `packaging.rb`: Base classes defining abstract methods for flowers and packaging.

`birthday_flower.rb`, `funeral_flower.rb`, `wedding_flower.rb`: Concrete implementations of the Flower class for each occasion.

`birthday_packaging.rb`, `funeral_packaging.rb`, `wedding_packaging.rb`: Concrete implementations of the Packaging class for each occasion.

- Factories

`abstract_factory.rb`: Defines the interface for the abstract factory.

`birthday_factory.rb`, `funeral_factory.rb`, `wedding_factory.rb`: Concrete implementations of the AbstractFactory class for creating specific flower and packaging combinations.

- Client

`client.rb`: Represents a client who orders floral arrangements using a specific factory.

- Execution

 `main.rb`: Entry point for execution, which sets up and uses the different factories and clients to demonstrate the Abstract Factory pattern in action.