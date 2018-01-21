Rails.application.routes.draw do
  devise_for :users
  get '/favorite/:number', to: 'numbers#favorite', as: :favorite
  get '/:page', to: 'numbers#index'
  root 'numbers#index'
end
