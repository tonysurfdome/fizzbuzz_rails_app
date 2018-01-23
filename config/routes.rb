Rails.application.routes.draw do
  devise_for :users
  get '/favorite/:number', to: 'numbers#add_favorite', as: :add_favorite
  get '/:page', to: 'numbers#index'
  root 'numbers#index'
end
