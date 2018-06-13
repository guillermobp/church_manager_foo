Rails.application.routes.draw do

  get 'communes/index'

  get 'communes/show'

  get 'provinces/index'

  get 'provinces/show'

  #get 'people/get_by_number/:national_identification_number', to: 'people#get_by_number'
  # get 'baptisms/person_form/:national_identification_number', to: 'baptisms#person_form'

  # post 'people/get_by_number', to: 'people#get_by_number'
  get 'people/nin_form', to: 'people#nin_form'
  post 'people/person_form_by_nin', to: 'people#person_form_by_nin'

  # post 'baptisms/person_form', to: 'baptisms#person_form'
  # get 'baptisms/nin_form', to:'baptisms#nin_form'

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
