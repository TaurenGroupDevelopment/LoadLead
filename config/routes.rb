Rails.application.routes.draw do

  devise_for :users, except: [:registrations]
  resources :accounts, only: [:new, :create, :show]

  root 'welcome#home'

  match '/subscription_select', to: 'subscription#show', via: :get

  match '/owner_op_plan', to: 'subscription#owner_op_plan', via: :get
  match '/owner_op', to: 'subscription#owner_op', via: :post

  match '/broker_shipper_plan', to: 'subscription#broker_shipper_plan', via: :get
  match '/broker_shipper_mo', to: 'subscription#broker_shipper_mo', via: :post
  match '/broker_shipper_pg', to: 'subscription#broker_shipper_pg', via: :post

  match '/carrier_plan', to: 'subscription#carrier_plan', via: :get
  match '/carrier_mo', to: 'subscription#carrier_mo', via: :post
  match '/carrier_pg', to: 'subscription#carrier_pg', via: :post

end
