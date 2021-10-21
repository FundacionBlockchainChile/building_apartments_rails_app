Rails.application.routes.draw do
  get 'apartment/index'
  get 'apartment/show'
  get 'apartment/new'
  post 'apartment/create'
  get 'apartment/edit'
  get 'apartment/delete'
  get 'building/index'
  get 'building/show'
  get 'building/new'
  post 'building/create'
  get 'building/edit'
  get 'building/delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
