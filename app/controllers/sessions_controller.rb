

class SessionsController < Devise::SessionsController
  
  def new
    if builder_signed_in?
      redirect_to '/'
    end
    
    super
  end

end 