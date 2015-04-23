Rails.application.routes.draw do

  devise_for :users
  root to: 'welcome#index'

  authenticate :user do
    resources :profiles, only: [:new, :create, :edit, :update, :destroy]
    resources :stories, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :profiles, only: [:index, :show]
  resources :stories, only: [:index, :show]

  resources :categories

end
