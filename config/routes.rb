Rails.application.routes.draw do
  root 'cars#index'
  resources :cars
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'car/:id/sell', to: 'cars#sell', as: 'mark_as_sold'
  get 'car/:id/unsell', to: 'cars#unsell', as: 'mark_as_unsold'
end
