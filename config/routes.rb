Rails.application.routes.draw do
  root 'announcements#index'
  devise_for :users
  resources :announcements
  get 'contact', to: 'static_pages#contact'
end
