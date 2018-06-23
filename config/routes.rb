Rails.application.routes.draw do

  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'
  get     '/landing', to: 'sessions#landing'

  get 'people/nin_form', to: 'people#nin_form'
  post 'people/person_form_by_nin', to: 'people#person_form_by_nin'

  patch '/priests/:id/toggle_active', to: 'priests#toggle_active', as: :toggle_active_priest

  root 'sessions#landing'

  resource :church, only: [:show, :update]

  resources :baptisms, only: [:index, :new, :create, :show, :edit]

  resources :priests, only: [:create, :show, :update]

  resources :people, only: [:create, :show, :update]

  resources :regions, only: [:index, :show] do
    resources :provinces, only: [:index, :show] do
      resources :communes, only: [:index, :show]
    end
  end

end
