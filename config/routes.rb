Toothsome::Application.routes.draw do
  get 'tags/:tag', to: 'home#index', as: :tag
  resources :clients
  resources :products do
    member do
      post :rating
    end
  end				   
  match "/deals-of-the-day" => "products#deals_of_the_day"
  match "/about" => "home#about", as: :about_page
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  match '/home/product_search' => "home#product_search"
  match '/home/search_products' => "home#search_products"
  match '/product_info/:id' , :controller => :home , :action => :show , :as => :product_info
  #search_by_price '/home/search_by_price', :controller => 'home', :action => 'search_by_price'
end
