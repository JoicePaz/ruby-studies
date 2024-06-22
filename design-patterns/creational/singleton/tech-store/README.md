# Thread Safe Singleton Implementation 
## Tech Store Scenario


#### Context

Joice is a software developer who works for an e-commerce company called "Tech Store". Tech Store has an order management system that is accessed by various services and parts of the system, such as processing payments, sending notifications, updating inventory and generating reports.

The system is experiencing performance issues and data inconsistencies. After some investigation, it was discovered that the issue is related to uncontrolled access to a single configuration instance that stores critical information such as API keys, external service URLs, and performance parameters. This information is often read and updated by different threads of execution at the same time, causing concurrency problems.

#### Problem:

It is needed to ensure that the application configuration is accessed safely by multiple threads, avoiding inconsistencies and improving system performance. To achieve this the Singleton pattern is a good solution, it to ensures that only a single instance of the configuration class is created and the access to that instance is thread-safe.

#### How to Run the File:

Navigate to the folder containing the `main.rb` file. Execute the following command:

    ruby main.rb

 
#### Explanation

- Config

`app-config.rb`: Class that implements the thread-safe Singleton pattern. Prevents the creation of new instances outside the class, uses Mutex to ensure a safe multi-thread environment and exposes attributes to be accessed. 


- Execution

 `main.rb`: Entry point for execution, it simulates the use of the configuration by multiple threads. It creates 10 threads, each one accessing the instance of AppConfig priting the data.