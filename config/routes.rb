Rails.application.routes.draw do  


  get "/renters/welcome", to: "renters#welcome", as: "welcome"
  get "/renters/menu1", to: "renters#menu1", as: "menu1"
  get "/renters/sign_in", to: "renters#sign_in", as: "sign_in"

  resources :renters  

  get "/pets/petslist", to: "pets#petslist", as: "petslist"
  get "/pets/allpets", to: "pets#allpets", as: "allpets"
  get "/pets/search_by_name", to: "pets#search_by_name", as: "search_by_name"

  # resources :breeds
  # get '/login', to: 'renters#new'
  # post '/login', to: 'renters#create'
  # get '/welcome', to: 'renters#welcome'
end
