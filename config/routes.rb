Rails.application.routes.draw do
  root to: "pages#home"
  get "economie", to: "pages#economie"
  get "sports", to: "pages#sports"
  get '/search' => 'home#search'
  # get https://newsapi.org/v2/top-headlines?country=fr&country=business&apiKey=da39ecad288a4d8782dd37d3771880fa
  get search
end
