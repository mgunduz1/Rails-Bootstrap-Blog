# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do

  root 'blogs#index'

  resources :categories
  resources :blogs do
    resources :comments
  end

  
end
