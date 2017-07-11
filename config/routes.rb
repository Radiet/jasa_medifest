Rails.application.routes.draw do
  resources :inventories do
    collection do
      get :barcodes
      get :search
    end
  end
  root 'inventories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
