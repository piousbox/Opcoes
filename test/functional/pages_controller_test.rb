require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  setup do
    
  end

  test 'home' do
    get :home
    assert_response :success
  end
  
  test 'tour' do
    get :tour
    assert_response :success
  end
  
  test 'login' do
    get :login
    assert_response :success
  end
  
  test 'register site manager' do
    get :register_site_manager
    assert_response :success
  end
  
  test 'register link builder' do
    get :register_link_builder
    assert_response :success
  end
  
  test 'process site_manager' do
    post :process_site_manager
    assert_response :redirect
    assert_redirected_to :action => :register_site_manager_2
  end
end
