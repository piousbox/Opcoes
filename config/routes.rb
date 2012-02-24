Opcoes::Application.routes.draw do
  root :to => 'pages#home'
  
  get 'tour' => 'pages#tour'
  get 'register' => 'pages#register_site_manager'
  get 'register-link-builder' => 'pages#register_link_builder'
  get 'register-site-manager' => 'pages#register_site_manager'
  get 'login' => 'pages#login'
end
