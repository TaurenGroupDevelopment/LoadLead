Rails.application.routes.draw do

  devise_for :users
  resources :accounts, only: [:new, :create, :show]

end
