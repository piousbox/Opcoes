class PagesController < ApplicationController
  def home
    
  end
  
  def tour
    
  end
  
  def process_site_manager
    redirect_to :action => 'register_site_manager_2'
  end
  
  def process_site_manager_2
    redirect_to :controller => :manager, :action => 'dashboard'
  end
  
  def register_site_manager
    
  end
  
  def register_site_manager_2
    
  end
  
  def register_link_builder
    
  end
  
  def login
    
  end
  
end
