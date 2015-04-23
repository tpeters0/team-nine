Rails.application.routes.draw do

  devise_for :users
  root to: 'welcome#index'

  resources :profiles

  resources :categories do
    resources :stories
  end

end
