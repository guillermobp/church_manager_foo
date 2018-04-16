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

  resources :priests, only: [:create, :show, :update]

  resources :baptisms

  resources :regions, only: [:index, :show] do
    resources :provinces, only: [:index, :show] do
      resources :communes, only: [:index, :show]
    end
  end

end
