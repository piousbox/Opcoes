

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  setup do
#    @one = Fabricate(:project)
  end
  
  test 'sanity' do
    assert true
  end
  
  test 'has fields: name, ' do
    first = Actor.find(:first).projects.find(:first)
    assert_not_nil first
    assert_not_nil first[:name]
  end
  
  test 'put timestamps into projects' do
    assert false, 'todo'
  end
end