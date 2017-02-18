Rails.application.routes.draw do
  root to: 'static_pages#home'
  devise_for :admins

  namespace :admin do
    resources :posts
  end
end
