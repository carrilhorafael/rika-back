Rails.application.routes.draw do
  resources :courses do
    resources :lessons do
      member do
        put 'upload_attachment'
      end
    end
    member do
      put 'evaluate'
    end
  end

  post 'users/login', to: 'authentication#login'
  post 'users/sign_up', to: 'authentication#sign_up'
  patch 'users/me', to: 'users#update'
  delete 'users/me', to: 'users#destroy'
end
