Rails.application.routes.draw do
  root "masters#index"

  resources :masters

  get 'pokemon/:id/read' => 'pokemons#show_details'
  get 'pokemon/create' => 'pokemons#create_form'
  post 'pokemon/create' => 'pokemons#create'
  get 'pokemon/:id/update' => 'pokemons#update_form'
  post 'pokemon/:id/update' => 'pokemons#update'
  post 'pokemon/:id/delete' => 'pokemons#delete'

end
