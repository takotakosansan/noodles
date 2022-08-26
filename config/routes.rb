Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get 'lists/new'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  get 'lists/:id' => 'lists#show', as: 'list'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  delete 'lists/:id' => 'lists#destroy', as: 'destroy_list'
  devise_for :users
  root to: 'homes#top'
  get "homes/about" => "homes#about" 
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
