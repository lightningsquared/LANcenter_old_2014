LANcenter::Application.routes.draw do
  resources  :attendees
  resources  :events do
    resources :attendees
  end
  resource   :organization
  devise_for :users
end
