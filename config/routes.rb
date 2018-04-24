Rails.application.routes.draw do
  get  'users/image_create', to: 'users#image_create'
  get  'users/picture_create', to: 'users#picture_create'
  post 'pictures', to: 'pictures#create'
  post 'images', to: 'images#create'
end
