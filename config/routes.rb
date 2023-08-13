Rails.application.routes.draw do
  root 'sessions#new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  namespace :admin do
    root to: 'dashboards#index'
  end

  # OPTIMIZED: general機能実装時
  get '/general', to: 'generals#index'
end
