



require 'test_helper'

class ActorTest < ActiveSupport::TestCase
  
  setup do
#    Actor.all.each do |each|
#      each.remove
#    end
  end
  
  test 'set manager' do
    a1 = Fabricate(:actor)
    assert !a1[:is_manager]
    Actor.set_manager(a1[:email])
    new_actor = Actor.where(:email => a1[:email]).first
    assert new_actor[:is_manager]
    
    new_actor.remove
  end
  
end

