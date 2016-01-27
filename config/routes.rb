Rails.application.routes.draw do
  root 'announcements#index'
  devise_for :users
  resources :announcements do
    resources :comments
  end
  get 'contact', to: 'static_pages#contact'
end
