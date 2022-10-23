Rails.application.routes.draw do
  resources :withdraws
  resources :topups
  resources :transfers
  resources :transactions
  resources :stocks
  resources :accounts
  resources :customers

  root 'transactions#index'
end
