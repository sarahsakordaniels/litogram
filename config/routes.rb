Rails.application.routes.draw do
  resources :art_works
  resources :artists
  resources :texts
  resources :authors
  resources :word_of_the_days
  resources :users
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
