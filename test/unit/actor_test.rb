



require 'test_helper'

class ActorTest < ActiveSupport::TestCase
  
  setup do
    @a1 = Fabricate.build(:actor)
  end
  
  test 'set manager' do
    assert !@a1[:is_manager]
    Actor.set_manager(@a1[:email])
    new_actor = Actor.find_by(:email => @a1[:email])
    assert new_actor[:is_manager]
  end
  
end

