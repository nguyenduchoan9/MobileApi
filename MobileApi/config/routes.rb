Rails.application.routes.draw do

  namespace :api do
    scope module: :v1, constraints: ApiConstraint.new(version: :v1) do
    	get 'home', to: 'home#index'
    	resources :users, only: [:create, :update, :show]
      resources :notes, only: [:index, :create, :show, :update, :destroy] 
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
