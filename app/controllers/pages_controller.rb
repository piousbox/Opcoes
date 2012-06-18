class PagesController < ApplicationController
  
  def home
    if actor_signed_in?
      redirect_to :controller => :manager, :action => :dashboard
    end
    if builder_signed_in?
      redirect_to :controller => :builder, :action => :dashboard
    end
    
  end
  
  def about_us
    
  end
  
  def privacy
    
  end
  
end
