


class RegistrationsController < Devise::RegistrationsController
#  def new
#    super
#  end

  # register
  def create
    super
    
    Actor.set_manager(current_actor[:email])
    
    Actor.where(:email => current_actor[:email]).first do |actor|
      actor[:is_manager] = true
      actor.save
    end
    
  end

end 