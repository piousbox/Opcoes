

class BuilderSessionsController < Devise::SessionsController

  def new
    if actor_signed_in?
      redirect_to '/'
    end
    
    super
  end

end 