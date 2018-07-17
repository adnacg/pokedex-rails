Rails.application.routes.draw do
  root 'main#index'
  get ':id' => 'main#show_details'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
