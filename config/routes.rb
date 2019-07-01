Rails.application.routes.draw do

  root to: 'pages#home'
  
  resources :staffs

  resources :posts
  resources :solutions
  resources :posts do 
    resources :solutions
  end
end
