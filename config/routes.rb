Food::Application.routes.draw do 
    resources :places

    devise_for :users

    match '/about',   :to => 'pages#about'

    root :to => "pages#home"
end
