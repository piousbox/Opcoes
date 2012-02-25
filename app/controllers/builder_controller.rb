

class BuilderController < ApplicationController
  
  def dashboard
    
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
  
  def index
    @builders = Actor.where(:is_manager => false)
    
    render :layout => 'application'
  end
  
end