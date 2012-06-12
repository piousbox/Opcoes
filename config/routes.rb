Opcoes::Application.routes.draw do
  devise_for :actors

  root :to => 'pages#home'
  
  get 'tour' => 'pages#tour'
  get 'login' => 'pages#login'
  post 'do-login' => 'pages#do_login'
  get 'logout' => 'pages#logout'
  get 'about-us' => 'pages#about_us'
  get 'privacy-policy' => 'pages#privacy'
  
  # register manager
  
  post 'manager/process' => 'manager#process_registration'
  post 'manager/process_2' => 'manager#process_registration_2'
  
  get 'manager/register' => 'manager#register'
  get 'manager/register_2' => 'manager#register_2'
  
  get 'manager/dashboard' => 'manager#dashboard'
  get 'managers' => 'manager#index'
  
  # register builder
  
  get 'builder/register' => 'builder#register'
  post 'builder/process' => 'builder#process_registration'  
  
  get 'builder/dashboard' => 'builder#dashboard'
  get 'builder/promote' => 'builder#promote'
  post 'builder/process_promote' => 'builder#process_promote'
  
  get 'builders' => 'builder#index'
   
  
  # projects
  
  get 'projects' => 'projects#index'
  get 'projects/new' => 'projects#new'
  post 'projects' => 'projects#create'
  get 'projects/:_id' => 'projects#show'
  get 'projects/:_id/add_links' => 'projects#add_links'
  post 'projects/:_id/process_add_links' => 'projects#process_add_links'
  
end
