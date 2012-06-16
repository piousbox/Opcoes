


class RegistrationsController < Devise::RegistrationsController
#  def new
#    super
#  end

  # register
  def create
    super
    
    Actor.set_manager(current_actor[:email])
    
  end

end 