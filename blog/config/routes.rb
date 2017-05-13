Rails.application.routes.draw do
  #get 'welcome/index'

  
  resources :articles, only: [:index,:show,:new,:create,:edit,:update,:destroy]

  resources :articles do
    resources :comments
    resources :push_praises
  end
  # resources :comments, only: [:create, :destroy]
  resources :dashboards, only: :show
  resources :leave_messages, only: [:index, :create]

  resources :users, only: [:new, :create, :index]
  resources :sessions, only: [:new, :create, :destroy]

  #resources :welcome, only: :index
  #root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
