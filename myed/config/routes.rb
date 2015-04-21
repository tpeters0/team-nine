Rails.application.routes.draw do

  root to: 'welcome#index'

  resources :profiles
  resources :stories

end
