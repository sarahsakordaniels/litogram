Rails.application.routes.draw do
  resources :genres
  resources :texts
  resources :authors
  resources :word_of_the_days
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
