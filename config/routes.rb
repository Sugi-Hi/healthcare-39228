Rails.application.routes.draw do
  devise_for :users
  root to: "healths#index"
  resources :healths do
    resources :cares
  end
end
