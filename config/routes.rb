Rails.application.routes.draw do
  root 'cars#index'
  #resources :cars do
  #  resources :bids, only: [:new, :create, :index, :edit, :update]
  #end
  #resources :cars
  #
  #
  get  'cars', to: 'cars#index'
  post 'cars', to: 'cars#create'
  get  'cars/new', to: 'cars#new', as: 'new_car'
  get  'cars/:id', to: 'cars#show', as: 'car'
  get  'cars/:id/edit', to: 'cars#edit', as: 'edit_car'
  patch 'cars/:id', to: 'cars#update'
  delete 'cars/:id', to: 'cars#delete'

  resources :cars do
    resources :bids, only: [:new, :create, :index]
  end

  resource :dashboard

  resources :courses do
    member do
      get 'preview'
    end

    collection do
      get 'upcoming'
    end
  end

  get 'courses/course_name' => redirect('/courses')

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get  'cars/:id/sell', to: 'cars#sell', as: 'mark_as_sold'
  get  'cars/:id/unsell', to: 'cars#unsell', as: 'mark_as_unsold'
  #
  # # created by me
  #get  'cars/:id/bids/new', to: 'bids#new', as: 'new_car_bid'
  #get  'cars/:id/bids', to: 'bids#index', as: 'car_bids'
   post 'cars/:id/bids', to: 'bids#create'#, as: 'car_bids'
  # created by rails
  #
  #
  # API routes
  namespace :api do
    namespace :v1 do
      resources :cars
    end
  end
end
