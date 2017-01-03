Rails.application.routes.draw do
  root 'home#index'
  get '/home', to: 'home#index'
  get '/info', to: 'home#info'
  get '/wedding-party', to: 'home#party'
  get '/travel', to: 'home#travel'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
