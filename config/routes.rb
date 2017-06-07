Rails.application.routes.draw do
  
  devise_for :users
  get '/posts/new' => 'posts#new'
  post '/posts/create' => 'posts#create'
  
  #read페이지들입니다
  root 'posts#index'
  get '/posts/show/:post_id' => 'posts#show'
  
  #update
  get '/posts/edit/:post_id' => 'posts#edit'
  post '/posts/uptdate/post_id' => 'posts#update'
  
  #destory
  post '/posts/destroy/:post_id' => 'posts#destroy'
end
