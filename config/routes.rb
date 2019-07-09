Rails.application.routes.draw do

 
  root to: 'pages#home'

  get 'admin', :to => 'access#menu'

  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

  resources :staffs
  resources :posts
  resources :solutions
  resources :posts do 
    resources :solutions
  end
end
