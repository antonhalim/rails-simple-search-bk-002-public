Rails.application.routes.draw do
	resources :words
	root to: "search#index"
end
