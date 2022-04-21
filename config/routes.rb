Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#homepage'
  get 'pages/about', to: 'pages#about'

  resources :students
end
