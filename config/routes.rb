Rails.application.routes.draw do
  resources :staffs

  resources :posts
  resources :solutions
  resources :posts do 
    resources :solutions
  end
end
