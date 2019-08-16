Rails.application.routes.draw do
  resources :directions
  resources :ingredients
  resources :receta
  resources :recipes
root 'recipes#index'
end
