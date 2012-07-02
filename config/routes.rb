Rolodecks::Application.routes.draw do
  root :to => 'contacts#index'
  resources :contacts
  resources :connections, only: [:create]
  resources :sessions, only: [:create]
end
