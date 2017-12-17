Rails.application.routes.draw do

  root to: 'default#index'

  resources :promotions, only: [:index, :show]
  resources :day_of_month_promotion_rules, only: [:index]

  get 'sitemap', to: 'sitemaps#promotion'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
