

require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    Actor.all.each do |each|
      each.remove
    end
    
    Builder.all.each do |each|
      each.remove
    end
    
    @manager = Fabricate(:manager)
    @project_1 = Fabricate(:project, :actor => @manager)
    @builder = Fabricate(:builder)
  end
  
  test 'new' do
    sign_in :actor, @manager
    
    get :new
    assert_response :success
  end
  
  test 'take' do
    
    sign_in :builder, @builder
    
    project = {}
    project[:url] = @project_1.url
    
    post :take, :project => project
    
    project_2 = Actor.where('projects.url' => @project_1[:url]).limit(1).first.projects.where('url' => @project_1[:url]).limit(1).first
    assert_not_nil project_2.builder.email
    assert_equal project_2.builder.email, @builder[:email]
    
  end
  
  test 'create' do
    project = {}
    project[:quantity] = 5
    project[:url] = 'http://some-url.com'
    
    post :create, :project => project
    assert_response :redirect
    assert_redirected_to '/actors/sign_in'
    
    sign_in :actor, @manager
    
    post :create, :project => project
    assert_response :redirect
    assert_redirected_to '/'
    new_project = Actor.where(:email => @manager[:email]).limit(1).first.projects.order(:datetime => :asc).limit(1).first
    assert_equal project[:quantity], new_project[:quantity]
    assert_equal project[:url], new_project[:url]
    
    @manager.remove
  end
  
#  test 'show' do
#    id = 555
#    get :show, :_id => id
#    assert_response :redirect
#    assert_redirected_to '/actors/sign_in'
#    
#    sign_in :actor, @manager
#    
#    get :show, :_id => id
#    assert_response :success
#    assert_template :show
#    
#    @manager.remove
#  end

end