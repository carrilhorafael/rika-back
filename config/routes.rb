Rails.application.routes.draw do
  post '/lessons/:id/feedbacks', to: 'lessons#give_feedback'
  post '/assignments/:id/feedbacks', to: 'assignments#give_feedback'
  resources :assignments
  resources :lessons
  resources :subjects
  post 'auth/signup'
  post 'auth/login'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
