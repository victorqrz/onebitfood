Rails.application.routes.draw do
  scope '/api', defaults: {format: :json} do
    resources :categories, only: [:index]
    resources :restaurants, only: [:index, :show]
    resources :orders, only: [:create, :show]
    resources :available_citiess, only: [:index]
  end
end
