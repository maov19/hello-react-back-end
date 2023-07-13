class MessagesController < ApplicationController

  def set_cors_headers
    response.set_header('Access-Control-Allow-Origin', '*')
    response.set_header('Access-Control-Allow-Methods', 'GET, POST, PUT, PATCH, DELETE, OPTIONS')
    response.set_header('Access-Control-Allow-Headers', 'Origin, Content-Type, Accept, Authorization, Token')
  end
  
  before_action :set_cors_headers

  def random_greeting
    message = Message.order('RANDOM()').first
    render json: { greeting: message&.content }
  end
end
