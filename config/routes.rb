Rails.application.routes.draw do

  resources :users
  resources :organisations do
    resources :addressbooks
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'authenticate', to: 'authentication#authenticate'
end
