Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :games, only: :index do
    get '/compute_score', to: 'scores#compute_score'
    post :question_selector, on: :member
    resources :questions, only: %i[show] do
      resources :answers, only: :create
      get '/answer', to: "answers#answer"
    end
  end
  resources :scores, only: %i[show create]
end
