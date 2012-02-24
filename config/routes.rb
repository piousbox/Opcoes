Opcoes::Application.routes.draw do
  root :to => 'pages#home'
  
  get 'tour' => 'pages#tour'
  post 'process-site-manager' => 'pages#process_site_manager'
  post 'process-site-manager-2' => 'pages#process_site_manager_2'
  get 'register-link-builder' => 'pages#register_link_builder'
  get 'register-site-manager' => 'pages#register_site_manager'
  get 'register-site-manager-2' => 'pages#register_site_manager_2'
  get 'login' => 'pages#login'
  
  get 'manager/dashboard' => 'manager#dashboard'
  get 'builder/dashboard' => 'builder#dashboard'
end
