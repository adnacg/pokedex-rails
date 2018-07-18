Rails.application.routes.draw do
  root "masters#index"

  resources :pokemons do
    resources :masters
  end

  resources :masters
end
