Rails.application.routes.draw do
  resources :reviews
  resources :tours
  resources :contacts
  resources :users,only: [:create,:index,:delete]
  resources :bookings

  post '/login',to:  'auth#create'
  get '/profile', to: 'users#profile'
  post 'tours/search', to: 'tours#search'
end
