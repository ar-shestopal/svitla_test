Rails.application.routes.draw do
  resources :products, only: [:index, :show] do
    member do
      get 'add_to_cart'
      delete 'delete_from_cart'
    end
    collection do
      get 'view_cart'
    end
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "products#index"
end
