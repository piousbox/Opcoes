class PagesController < ApplicationController
  
  def home
    if actor_signed_in?

      if current_actor[:is_manager]
        redirect_to :controller => :manager, :action => :dashboard
      else
        redirect_to :controller => :builder, :action => :dashboard
      end
      
    end
    
  end
  
  def about_us
    
  end
  
  def privacy
    
  end
  
end
