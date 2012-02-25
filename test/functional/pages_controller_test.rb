require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  setup do
    
  end

  test 'home' do
    get :home
    assert_response :success
  end
  
  test 'about-us' do
    get :about_us
    assert_response :success
    assert_template :about_us
  end
  
  test 'privacy' do
    get :privacy
    assert_response :success
    assert_template :privacy
  end
  
  test 'tour' do
    get :tour
    assert_response :success
  end
  
  test 'login' do
    get :login
    assert_response :success
  end
  
  test 'post do-login' do
    post :do_login
    assert_response :redirect
    assert_redirected_to :controller => :manager, :action => :dashboard
  end
  
  # manager
   
  test 'register site manager' do
    get :register_site_manager
    assert_response :success
  end
  
  test 'process site_manager' do
    post :process_site_manager
    assert_response :redirect
    assert_redirected_to :action => :register_site_manager_2
  end
  
  test 'register site manager 2' do
    get :register_site_manager_2
    assert_response :success
    assert_template :register_site_manager_2
  end
  
  test 'process site manager 2' do
    post :process_site_manager_2
    assert_response :redirect
    assert_redirected_to :controller => :manager, :action => :dashboard
  end
  
  # builder
  
  test 'register link builder' do
    get :register_link_builder
    assert_response :success
  end
  
  test 'process link builder' do
    post :process_link_builder
    assert_response :redirect
    assert_redirected_to :controller => :builder, :action => :dashboard
  end
end
