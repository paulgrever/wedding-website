Rails.application.routes.draw do
  root 'home#index'
  get '/home', to: 'home#index'
  get '/info', to: 'home#info'
  get '/wedding-party', to: 'home#party'
  get '/travel', to: 'home#travel'
  get '/quiz', to: 'quiz#index'
  get '/quiz/new', to: 'quiz#new'
  post '/quiz', to: 'quiz#create'
  # get '/rsvp', to: 'home#rsvp'
  get '/registry', to: 'home#registry'

  get '/rsvp', to: 'guest#new', as: 'guests'
  post '/rsvp', to: 'guest#create'
  get '/rsvp_completed', to: 'guest#rsvp_completed', as: 'rsvp_completed'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
