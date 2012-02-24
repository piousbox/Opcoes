

require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    
  end
  
  test 'index' do
    get :index
    assert_response :success
    assert_template :index
    
    projects = assigns :projects
    assert_not_nil projects
    assert_not_nil projects[0][:name]
  end
  
  test 'cannot see this without authorization' do
    assert false, 'todo ToDo tOd0'
  end
  
  test 'cannot access project/show without authorizing' do
    assert false, 'todo'
  end
  
  test 'new' do
    get :new
    assert_response :success
  end
  
  test 'create' do
    post :create
    assert_response :redirect
    assert_redirected_to :action => :show
  end
  
  test 'show' do
    get :show, :name_seo => 'name_seo'
    assert_response :success
    assert_template :show
  end
end