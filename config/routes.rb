Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :games, only: %i[index show] do
    resources :questions, only: :show do
      resources :answers, only: :create
    end
  end
  resources :scores, only: :show
end
