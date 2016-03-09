Rails.application.routes.draw do
  root 'announcements#index'
  devise_for :users
  resources :announcements do
    resources :comments
  end
  
  namespace :legendopedia do
    get 'main'
    get 'show_clan'
    get 'show_spells'
  end

  get 'contact', to: 'static_pages#contact'
  get 'web_scrolls', to: 'static_pages#web_scrolls'
end
