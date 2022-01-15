Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # バージョンごとにnamespaceを区切ることで、任意のルーティングをバージョンごとに分けて作成することが可能
  namespace :v1 do
    resources :todos, only: [:index, :create, :destroy]
    resources :users, only: [:index, :create]
  end
end
