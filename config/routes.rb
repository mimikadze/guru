Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'welcome#index'
  get '/about' => 'pages#about'
  get '/contacts' => 'pages#contacts'
  get '/photographers' => 'pages#photographers'
  get '/videographers' => 'pages#videographers'

end
