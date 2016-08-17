Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  
  authenticated :user do
    root "docs#index", as: "root_for_logged_user"
  end
  resources :docs
  root 'welcome#index'
  

end
