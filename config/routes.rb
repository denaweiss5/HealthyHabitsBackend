Rails.application.routes.draw do
  resources :exercise_entries
  resources :meal_entries
  resources :weight_entries
  resources :users

  post '/auth', to: 'auth#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end