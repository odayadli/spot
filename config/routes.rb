Rails.application.routes.draw do
  devise_for :users
             # controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get  'services/filter'
  get 'bookings/bookings_requests'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :services do
    resources :bookings, only: %i[new create]
    collection do
      get :my_services
    end
  end
  resources :bookings, only: %i[show edit update destroy] do
    resources :reviews, only: %i[new create]
  end
  resources :categories, only: %i[new create show edit update]
  get :my_bookings, to: 'bookings#my_bookings'
  resources :reviews, only: %i[show edit update]

  root to: 'pages#home'
end
