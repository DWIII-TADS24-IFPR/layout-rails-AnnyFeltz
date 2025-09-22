Rails.application.routes.draw do
  devise_for :admins
  
  resources :comments

  resources :posts do
    member do
      post 'like'
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check

  root "posts#index"
end
