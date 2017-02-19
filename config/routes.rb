Rails.application.routes.draw do
  root to: 'static_pages#home'
  devise_for :users
  devise_for :admins,
             controllers: { sessions: 'devise/admins/sessions',
                            registrations: 'devise/admins/registrations' }

  namespace :admin do
    resources :posts
    resources :users
  end
end
