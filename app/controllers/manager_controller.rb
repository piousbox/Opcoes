

class ManagerController < ApplicationController
  
  
  def dashboard
    @actor = Actor.where(:email => current_actor[:email]).limit(1).first
    @projects = Actor.where(:email => current_actor[:email]).limit(1).first.projects.order(:datetime => :desc).all
    
    @projects.each do |project|
      project[:quantity_completed] = project.links.where(:is_active => true).all.count
    end
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
  
end

