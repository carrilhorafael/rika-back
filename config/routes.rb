Rails.application.routes.draw do
  resources :lessons
  resources :subjects
  post 'auth/signup'
  post 'auth/login'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
