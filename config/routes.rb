Rails.application.routes.draw do
  root 'announcements#index'
  
  devise_for :users
  resources :users, only: [:show, :index] do
    resources :characters do
      collection do
        get 'on_clan_change'
      end
    end
  end

  
  resources :announcements do
    resources :comments
  end
  

  
  namespace :legendopedia do
    get 'main'
    get 'show_clan'
    get 'show_spells'
    get 'show_skills'
    get 'show_traits'
  end

  get 'contact', to: 'static_pages#contact'
  get 'web_scrolls', to: 'static_pages#web_scrolls'
end
