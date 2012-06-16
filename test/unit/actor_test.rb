



require 'test_helper'

class ActorTest < ActiveSupport::TestCase
  setup do
    @a1 = Fabricate(:actor)
  end
  
  test 'set manager' do
    email = 'some_email@gmail.com'
    assert_false @a1[:is_manager]
    Actor.set_manager(email)
    new_actor = Actor.find_by(:email => email)
    assert new_actor[:is_manager]
  end
  
end

