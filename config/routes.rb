Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :services do
    resources :categories, only: %i[index new create]
    resources :bookings, only: [:show, :edit, :update, :destroy]
  end

  #resources :bookings, only: :index
  get :my_bookings, to: 'bookings#my_bookings'
end
