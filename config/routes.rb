Rails.application.routes.draw do
  root 'pages#index'
  get '/panel', to: 'pages#panel' ,as: 'panel'
  resources :members
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
