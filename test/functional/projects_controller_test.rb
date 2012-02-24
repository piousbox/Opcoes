

require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    
  end
  
  test 'index' do
    get :index
    assert_response :success
    assert_template :index
  end
  
  test 'cannot see this without authorization' do
    assert false, 'todo'
  end
end