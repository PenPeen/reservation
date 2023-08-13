Rails.application.routes.draw do
  root 'sessions#new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  namespace :admin do
    root to: 'dashboards#index'
  end

  namespace :general do
    root to: 'generals#index'
  end
end
