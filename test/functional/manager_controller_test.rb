

require 'test_helper'

class ManagerControllerTest < ActionController::TestCase
  setup do
    
  end
  
  test 'dashboard' do
    get :dashboard
    assert_response :success
    assert_template :dashboard
    
    #
    # from projects/index
    # 
#    get :index
#    assert_response :success
#    assert_template :index
#    
#    projects = assigns :projects
#    assert_not_nil projects
#    assert_not_nil projects[0][:name]
  end
  
  test 'register' do
    get :register
    assert_response :success
    assert_template :register
  end
  
end