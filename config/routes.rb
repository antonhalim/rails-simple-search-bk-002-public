Rails.application.routes.draw do

  resources :words, only: [:show, :index]
  
  get 'search' => 'search#index', as: :search

  root 'welcome#index'
  
end
