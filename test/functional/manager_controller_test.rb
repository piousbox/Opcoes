

require 'test_helper'

class ManagerControllerTest < ActionController::TestCase
  setup do
    Actor.all.each do |actor|
      actor.remove
    end
    
    @manager = Fabricate(:manager)
    
    @project = Fabricate(:project, :actor => @manager)
    @prooject_2 = Fabricate(:project, :url => 'another url', :actor => @manager)
    
    @link_1 = Fabricate(:link, :project => @project)
    @link_2 = Fabricate(:link, :project => @project, :is_active => true)
    @link_3 = Fabricate(:link, :project => @project, :is_active => true)
  end
  
  test 'dashboard' do
    sign_in :actor, @manager
    
    get :dashboard
    assert_response :success
    assert_template :dashboard
    
    projects = assigns(:projects)
    assert_not_nil projects
    assert_equal 2, projects.length
    projects.each do |project|
      assert_not_nil project[:quantity_completed]
      assert project[:quantity_completed] >= 0
    end
    
    got_project = false
    projects.each do |project|
      if project[:url] == @project[:url]
        got_project = true
        assert_equal 2, project[:quantity_completed]
      end
    end
    assert got_project
  end
  
end