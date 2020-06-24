Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'events#index'
  resources :charges
  resources :attendances
  resources :events do
    resources :event_pics, only: [:create, :new, :index]
  end  
  resources :users

end
