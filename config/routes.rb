Rolodecks::Application.routes.draw do
  root :to => 'contacts#index'
  resources :contacts do
    collection do
      get :suggested
    end
  end
  resources :connections, only: [:index, :create]
  resources :sessions, only: [:create]
end
