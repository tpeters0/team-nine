Rails.application.routes.draw do

  devise_for :users
  root to: 'welcome#index'

  resources :stories
  resources :profiles

  resources :categories



end
