Rails.application.routes.draw do
  resources :newsfeeds
  get '/abouts', to: 'about#index'
  root 'mak#home'
  get 'inquiry' => 'inquiry#index'              # 入力画面
  post 'inquiry/confirm' => 'inquiry#confirm'   # 確認画面
  post 'inquiry/thanks' => 'inquiry#thanks'     # 送信完了画面
  #get '/about', to: 'mak#about'
  #get '/news', to: 'mak#news'
  #get '/inquiry', to: 'mak#inquiry'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
