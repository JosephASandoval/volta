Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resource :user, only: [:create]
    resources :products, only: [:index, :show]
    resource :session, only: [:create, :destroy]
    resources :cart_items, only: [:index, :create, :update, :destroy]
  end

  root to: "static_pages#root"
end
