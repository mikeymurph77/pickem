require 'monban/constraints/signed_in'
require 'monban/constraints/signed_out'

Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users

  constraints Monban::Constraints::SignedIn.new do
    get '/', to: 'dashboards#index', as: :dashboard
  end

  constraints Monban::Constraints::SignedOut.new do
    # root 'landings#show'
  end

  root 'sessions#new'
end
