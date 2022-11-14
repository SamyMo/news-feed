Rails.application.routes.draw do
  root to: "pages#home"
  get "economie", to: "pages#economie"
  get "sports", to: "pages#sports"
  get "home" => "pages#search"
end




# get "nom delapage", to: "controller#nomdelamethodedanslecontroller"
# get "lists", to: "lists#index"
