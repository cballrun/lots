Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/lots', to: 'lots#index'
  get 'lots/:id', to: 'lots#show'
  get '/cards', to: 'cards#index'
  get '/cards/:id', to: 'cards#show'
end
