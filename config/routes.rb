LANcenter::Application.routes.draw do
  resource :organization
  devise_for :users
end
