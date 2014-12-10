Rails.application.routes.draw do
root :to => 'contacts#index'
  resources :customers
  resources :contacts
  resources :prospects
end
