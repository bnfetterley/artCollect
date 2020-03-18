Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :users

  get '/users' => 'users#index'
  patch '/posts' => 'posts#edit'
  post '/login' => 'auth#login'
  get '/auth' => 'auth#persist'

  delete '/posts' => 'posts#delete'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
