Rails.application.routes.draw do
  resources :newsfeeds
  get '/abouts', to: 'about#index'
  root 'mak#home'
  #get '/about', to: 'mak#about'
  #get '/news', to: 'mak#news'
  #get '/inquiry', to: 'mak#inquiry'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
