

require 'test_helper'

class BuilderControllerTest < ActionController::TestCase
  setup do
    
  end
  
  test 'dashboard' do
    get :dashboard
    assert_response :success
    assert_template :dashboard
  end
  
  test 'index' do
    get :index
    assert_response :success
    assert_template :index
    
    builders = assigns :builders
    assert_not_nil builders
  end
  
  test 'register' do
    get :register
    assert_response :success
    assert_template :register
  end
end