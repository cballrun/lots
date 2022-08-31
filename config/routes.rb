Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/lots', to: 'lots#index'
  get '/lots/new', to: 'lots#new'
  post '/lots', to: 'lots#create'
  get 'lots/:id', to: 'lots#show'
  get '/lots/:id/edit', to: 'lots#edit'
  put 'lots/:id', to: 'lots#update'
  delete '/lots/:id', to: 'lots#destroy'
  
  get '/cards', to: 'cards#index'
  get '/cards/:id', to: 'cards#show'
  get '/cards/:id/edit', to: 'cards#edit'
  patch '/cards/:id', to: 'cards#update'
  delete '/cards/:id', to: 'cards#destroy'
  
  get '/lots/:lot_id/cards', to: 'lot_cards#index'
  get "/lots/:lot_id/cards/new", to: 'lot_cards#new'
  post '/lots/:lot_id/cards', to: 'lot_cards#create'
end
