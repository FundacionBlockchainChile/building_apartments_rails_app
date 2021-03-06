Rails.application.routes.draw do
  # apartments
  get 'apartments/index' => "apartment#index"
  get 'apartments/new' => "apartment#new"
  post 'apartments/create' => "apartment#create"
  get 'apartments/show/:id' => "apartment#show"
  get 'apartments/edit' => "apartment#edit"
  get 'apartments/delete' => "apartment#delete"
  patch 'apartments/:id' => "apartment#update"
  delete 'apartments/:id' => "apartment#delete"
  # buildings
  get 'buildings/index' => "building#index"
  get 'buildings/new' => "building#new"
  post 'buildings/create' => "building#create"
  get 'buildings/show/:id' => "building#show"
  get 'buildings/edit' => "building#edit"
  patch 'buildings/:id' => "building#update"
  delete 'buildings/:id' => "building#delete"

  root to: "building#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
