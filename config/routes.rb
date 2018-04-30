Rails.application.routes.draw do

  devise_for :users
  resources :accounts, only: [:new, :create, :show]

  root 'welcome#home'
  match '/pricing', to: 'welcome#pricing', via: :get

end
