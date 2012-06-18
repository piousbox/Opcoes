require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  fixtures :all

   test "dashboard access" do
     # cannot access without login
     get '/projects'
     assert_response :redirect
     assert_redirected_to '/actors/sign_in'
   end
end
