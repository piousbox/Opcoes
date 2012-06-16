

class SessionsController < Devise::SessionsController
#  def new
#    super
#  end

  # sign in
  def create
    super
    
    Actor.find_by(:email => current_actor[:email]) do |actor|
      actor[:is_manager] = true
      actor.save
    end
  end

end 