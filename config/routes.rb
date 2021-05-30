Rails.application.routes.draw do
  resources :news
  post '/lessons/:id/feedbacks', to: 'lessons#give_feedback'
  post '/assignments/:id/feedbacks', to: 'assignments#give_feedback'
  resources :assignments
  resources :lessons
  get 'subjects/preview', to: "subjects#preview"
  resources :subjects
  post 'auth/signup'
  post 'auth/login'
  get 'users/filter', to: "users#filter"
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
