class PagesController < ApplicationController
  def home
    
  end
  
  def tour
    
  end
  
  def process_site_manager
    redirect_to :action => 'register_site_manager_2'
  end
  
  def process_site_manager_2
    redirect_to :controller => :manager, :action => :dashboard
  end
  
  def register_site_manager
    
  end
  
  def register_site_manager_2
    
  end
  
  def register_link_builder
    
  end
  
  def process_link_builder
    redirect_to :controller => :builder, :action => :dashboard
  end
  
  def login
    
  end
  
  def do_login
    redirect_to :controller => :manager, :action => :dashboard
  end
  
end
