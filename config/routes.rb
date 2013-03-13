Toothsome::Application.routes.draw do

  resources :clients
  resources :products				   

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  match '/home/search_by_price' => "home#search_by_price"
  match '/product_info/:id' , :controller => :home , :action => :show , :as => :product_info
  #search_by_price '/home/search_by_price', :controller => 'home', :action => 'search_by_price'
end
