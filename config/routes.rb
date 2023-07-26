Rails.application.routes.draw do
  get '/random-greeting', to: 'messages#random_greeting'
end
