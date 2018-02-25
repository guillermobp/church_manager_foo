Rails.application.routes.draw do

  get 'communes/index'

  get 'communes/show'

  get 'provinces/index'

  get 'provinces/show'

  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'
  get     '/landing', to: 'sessions#landing'

  root 'sessions#landing'

  resources :regions, only: [:index, :show] do
    resources :provinces, only: [:index, :show] do
      resources :communes, only: [:index, :show]
    end
  end

  resources :priests, :contacts, only: [:show]

  resources :churches, :baptisms

end
