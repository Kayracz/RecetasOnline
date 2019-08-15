Rails.application.routes.draw do
  resources :receta
  resources :recipes
root 'recipes#index'
end
