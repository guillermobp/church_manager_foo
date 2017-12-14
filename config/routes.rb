Rails.application.routes.draw do
  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'
  get     '/landing', to: 'sessions#landing'

  root    'sessions#landing'

  resources :churches, :baptisms
end
