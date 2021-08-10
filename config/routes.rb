Rails.application.routes.draw do
  devise_for :users
  #get 'events/index'
  root to: "events#index"

  resources :events
  #get 'devise/registrations/new', to: 'devices/registrations#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
