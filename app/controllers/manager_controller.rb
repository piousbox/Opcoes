

class ManagerController < ApplicationController
  
  def dashboard
    @actor = Actor.where(:username => session[:manager][:username])
    @projects = Actor.where(:username => session[:manager][:username]).limit(1).first().projects.all()
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
    
    
    
  end
  
  def register_2
    
  end
  
  def index
    @managers = Actor.where(:is_manager => true)
    
  end
  
end