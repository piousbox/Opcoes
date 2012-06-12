

require 'test_helper'

class ActorControllerTest < ActionController::TestCase
  setup do
    
  end
  
  test 'test_1' do
    get :test_1
    assert_response :success
  end
  
end