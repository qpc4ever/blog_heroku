Rails.application.routes.draw do
  resources :blogs
  get 'about', to: 'blogs#about'
  root 'blogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
