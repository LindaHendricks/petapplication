Rails.application.routes.draw do  
  get "/renters/welcome", to: "renters#welcome", as: "welcome"
  get 'renters/new_user', to: 'renters#new_user'
  post 'renters/new_user', to: 'renters#create'
  get "/renters/login", to: "renters#login", as: "login"  
  post "renters/handle_login", to: "renters#handle_login"  
  get "/renters/profile", to: "renters#profile", as: "profile" 
  resources :renters

  get "/pets/petslist", to: "pets#petslist", as: "petslist"
  get "/pets/allpets", to: "pets#allpets", as: "allpets"
  get "/pets/search_by_name", to: "pets#search_by_name", as: "search_by_name"
end
