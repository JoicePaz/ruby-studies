require 'sinatra'
require 'sinatra/json'
require_relative '../facades/order_facade'

class OrdersController
  def create(params)
    order_facade = OrderFacade.new(params)
    result = order_facade.process_order

    if result[:status] == 'success'
      { status: 200, body: result }
    else
      { status: 400, body: result }
    end
  rescue StandardError => e
    { status: 500, body: { error: e.message } }
  end
end
