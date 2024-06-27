require 'sinatra'
require 'sinatra/json'
require_relative '../app/controllers/orders_controller'

post '/orders' do
  controller = OrdersController.new
  params = JSON.parse(request.body.read)
  response = controller.create(params)

  status response[:status] || 200
  json response[:body] || response
end
