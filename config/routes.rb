Opcoes::Application.routes.draw do
  root :to => 'pages#home'
  
  get 'tour' => 'pages#tour'
  get 'login' => 'pages#login'
  
  # register manager
  
  post 'process-site-manager' => 'pages#process_site_manager'
  post 'process-site-manager-2' => 'pages#process_site_manager_2'
  
  get 'register-site-manager' => 'pages#register_site_manager'
  get 'register-site-manager-2' => 'pages#register_site_manager_2'
  
  get 'manager/dashboard' => 'manager#dashboard'
  
  # register builder
  
  get 'register-link-builder' => 'pages#register_link_builder'
  post 'process-link-builder' => 'pages#process_link_builder'  
  
  get 'builder/dashboard' => 'builder#dashboard'
end
