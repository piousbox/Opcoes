

class BuilderController < Devise::RegistrationsController
  
  before_filter :authenticate_actor!
  
  def dashboard
    @actor = Actor.where(:username => session[:builder][:username])
    
    begin
      @my_projects = Actor.where('projects.builder_username' => session[:builder][:username]).limit(1).first()
      @my_projects = @my_projects.projects
    rescue
    end
    
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