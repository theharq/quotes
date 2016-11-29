Rails.application.routes.draw do
  resources :quotes, only: :index
  root "quotes#index"
end
