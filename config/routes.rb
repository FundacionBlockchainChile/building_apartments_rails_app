Rails.application.routes.draw do
  # apartments
  get 'apartments/index' => "apartment#index"
  get 'apartments/new' => "apartment#new"
  post 'apartments/create' => "apartment#create"
  get 'apartments/show' => "apartment#show"
  get 'apartments/edit' => "apartment#edit"
  patch 'apartments/:id' => "apartment#update"
  delete 'apartments/:id' => "apartment#delete"
  # buildings
  get 'buildings/index' => "building#index"
  get 'buildings/show' => "building#new"
  get 'buildings/new' => "building#create"
  post 'buildings/create' => "building#show"
  patch 'buildings/edit' => "building#update"
  delete 'buildings/delete' => "building#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
