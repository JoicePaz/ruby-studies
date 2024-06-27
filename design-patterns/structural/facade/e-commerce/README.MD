# Facade Implementation 
## E-commerce Order Processing System Scenario

#### Context and Story

This system is designed to process orders for an e-commerce platform by integrating multiple external services:
- Payment Service
- Inventory Service
- Delivery Service
- Notification Service

#### Introduction

The goal is to provide a simplified API to process an order that involves checking inventory, processing payment, calculating delivery, and sending a notification to the customer (the services are only being simulated). The solution is implemented using the Facade design pattern to encapsulate the complexity of interacting with multiple services.

#### How to Run the File:

1. Install dependencies:
  ```bash
  bundle install
2. Start the server:
  `ruby config/routes.rb`
3. Create an order using Postman:
  `URL: http://localhost:4567/orders`
  `Method: POST`
  `Body (JSON)`
  {
    "product_id": "123",
    "quantity": 1,
    "customer_id": "456"
  }

#### Explanation

### Project Structure
- app/
  - controllers/
      - `orders_controller.rb`: Handles the HTTP requests and responses.
  - facades/
      - `order_facade.rb`: Simplifies the interaction with multiple services to process an order.
  - models/
      - `order.rb`: Represents an order and handles data persistence.
  - services/
    - `payment_service.rb`: Simulates payment processing.
    - `inventory_service.rb`: Simulates inventory checking.
    - `delivery_service.rb`: Simulates delivery cost and time calculation.
    - `notification_service.rb`: Simulates sending order confirmation notifications.
  - config/
    - `routes.rb`: Configures the routing for the API.
- `Gemfile`: Lists the dependencies for the project.
