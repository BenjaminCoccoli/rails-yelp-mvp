Rails.application.routes.draw do
  resources :restaurants, only: [:new, :create, :index, :show]
end
