Rails.application.routes.draw do
  #get 'welcome/index'

  
  resources :articles, only: [:index,:show,:new,:create,:edit,:update,:destroy]

  resources :articles do
    resources :comments
  end

  resources :leave_messages, only: [:index, :new, :create]

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  #resources :welcome, only: :index
  #root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
