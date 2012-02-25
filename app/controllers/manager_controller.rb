

class ManagerController < ApplicationController
  
  def dashboard
    username = 'piousbox'
    @projects = Actor.where(:username => username).limit(1).first().projects.all()
  end
  
  def process_registration
    hash = params[:actor]
    hash[:is_manager] = true
    @manager = Actor.create(hash)
    session[:manager] = {}
    session[:manager][:username] = @manager[:username]
    
    redirect_to :action => :register_2
  end
  
  def process_registration_2
    redirect_to :controller => :manager, :action => :dashboard
  end
  
  def register
    
    render :layout => 'application'
    
  end
  
  def register_2
    
    render :layout => 'application'
    
  end
  
  def index
    @managers = Actor.where(:is_manager => true)
    
    render :layout => 'application'
  end
  
end