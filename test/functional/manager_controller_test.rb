

require 'test_helper'

class ManagerControllerTest < ActionController::TestCase
  setup do
    
  end
  
  test 'dashboard' do
    get :dashboard
    assert_response :success
    assert_template :dashboard
  end
  
  test 'register' do
    get :register
    assert_response :success
    assert_template :register
  end
end