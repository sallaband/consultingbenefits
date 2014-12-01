Rails.application.routes.draw do
root :to => 'contacts#index', :as => 'home'
  resources :customers
  resources :contacts
  resources :prospects
end
