Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :services do
    resources :categories, only: %i[index new create]
    resources :bookings, only: %i[new create]
    collection do
      get :my_services
    end
  end
  resources :bookings, only: [:show, :edit, :update, :destroy] do
    resources :reviews, only: [:new, :create]
  end
  resources :categories, only: %i[show edit update]
  get :my_bookings, to: 'bookings#my_bookings'
  resources :reviews, only: [:show, :edit, :update]
end
