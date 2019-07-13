require 'sidekiq/web'

Rails.application.routes.draw do
  namespace :properties do
    get 'hotels/index'
    get 'hotels/new'
  end
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
  get '/pricing', to: 'home#pricing'
  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end


#Admin Routes 
    namespace :admin do
      resources :users
      namespace :guides do
        resources :videos
        resources :texts
      end
      resources :guides
      resources :announcements
      resource :dashboard
      root to: "dashboard#index"
    end


#Guides Routes 
    namespace :guides do
      resources :texts
      resources :videos
    end


  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
    authenticated :user do
      # Add your authenticated route alternates here
      # root to: 'controller#action', as: 'logged_in_root'
      namespace :properties do

        resources :hotels
      end
    end


  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
