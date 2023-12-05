Rails.application.routes.draw do
  resources :bikes
  resources :bookings
  resources :users

  resources :bikes do
    resources :bookings
  end

  resources :users do
    resources :bookings
  end
end
