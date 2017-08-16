Rails.application.routes.draw do
  resources :restaurants do

    member do
      get 'chef', to: "restaurants#chef"
    end

    resources :reviews, only: [:new, :create]

    collection do
      get 'top', to: "restaurants#top"
    end



  end
  namespace :admin do
    resources :restaurants, only: [:index]
  end
  resources :reviews, only: [ :show, :edit, :update, :destroy ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
