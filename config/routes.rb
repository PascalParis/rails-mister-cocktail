Rails.application.routes.draw do

  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:show, :edit, :update, :destroy]
end

  # resources :restaurants do
  #   collection do
  #     get '/top', to: "restaurants#top"
  #   end
  #   member do
  #     get '/chef', to: "restaurants#chef"
  #   end
  #   resources :reviews, only: [:new, :create]
  # end
  # resources :reviews, only: [:show, :edit, :update, :destroy]
