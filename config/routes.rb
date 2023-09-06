Rails.application.routes.draw do
  resources :posts
  resources :ep_usp_esi_2023s
  resources :ep_esi_2023s
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'welcome_test#index'
end
