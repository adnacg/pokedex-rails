Rails.application.routes.draw do
  root 'main#index'

  get 'pokemon/:id/read' => 'pokemon#show_details'
  get 'pokemon/create' => 'pokemon#create_form'
  post 'pokemon/create' => 'pokemon#create'
  get 'pokemon/:id/update' => 'pokemon#update_form'
  post 'pokemon/:id/update' => 'pokemon#update'
  post 'pokemon/:id/delete' => 'pokemon#delete'

end
