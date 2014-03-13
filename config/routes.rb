LANcenter::Application.routes.draw do
  resources :events
  resource :organization
  devise_for :users
end
