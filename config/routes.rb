Food::Application.routes.draw do 
  get "carts/new"

  get "products/new"

    resources :places
    resources :products
	
    devise_for :users

    match '/about',   :to => 'pages#about'
    match '/admin',   :to => 'pages#admin'

    root :to => "pages#home"
end
