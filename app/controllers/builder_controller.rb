

class BuilderController < ApplicationController
  
  def dashboard
    @my_projects = Actor.where('projects.builder_email' => current_builder[:email]).all
    
    # available tasks are those in which a task is not associated with a builder
    @available_projects = Actor.where('project.builder.email' => nil).all
    
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