class PagesController < ApplicationController
  def home
    
  end
  
  def tour
    
  end
  
  def login
    
  end
  
  def do_login
    redirect_to :controller => :manager, :action => :dashboard
  end
  
  def logout
    redirect_to :action => :home
  end
  
end
