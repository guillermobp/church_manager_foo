Rails.application.routes.draw do

  get 'communes/index'

  get 'communes/show'

  get 'provinces/index'

  get 'provinces/show'

  patch '/priests/:id/toggle_active', to: 'priests#toggle_active', as: :toggle_active_priest

  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'
  get     '/landing', to: 'sessions#landing'

  root 'sessions#landing'

  resource :church, only: [:show, :update]

  resources :baptisms, only: [:new, :create]

  resources :priests, only: [:create, :show, :update]

  resources :people, only: [:show, :update]

  # resources :baptiseds, only: [:create]
  # resources :mothers, only: [:create]
  # resources :fathers,
  resources :baptiseds, :mothers, :fathers, :godmothers, :godfathers, only: [:create, :show, :update]

  resources :regions, only: [:index, :show] do
    resources :provinces, only: [:index, :show] do
      resources :communes, only: [:index, :show]
    end
  end

end
