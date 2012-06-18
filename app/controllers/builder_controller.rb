

class BuilderController < ApplicationController
  
  def dashboard
    @projects = Actor.where('project.builder.email' => current_builder[:email]).all
    
    render :layout => 'builder'
  end
  
  def promote
    
  end
  
  def register
    
  end
  
  def process_registration
    hash = params[:actor]
    hash[:is_manager] = false
    @builder = Actor.create(hash)
    session[:builder] = {}
    session[:builder][:username] = @builder[:username]
    redirect_to :controller => :builder, :action => :dashboard
  end
  
  def create
    super
  end
  
end