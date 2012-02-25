

class ProjectsController < ApplicationController
  
  def index
    render :layout => 'manager'
    
  end
  
  def show
    username = 'piousbox'
    user = Actor.where(:username => username).limit(1).first
#    project_one = Project.create(:name => 'name', :name_seo => 'name_seo', :actor => user)
    @project = Actor.where(:username => username).limit(1).first().projects.where(:_id => params[:_id]).limit(1).first()
    
    render :layout => 'manager'
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def new
    @builders = Actor.where(:is_manager => false).order([:username, :desc])
    @builders = [['Random', nil]] + @builders.map { |b| [b.username, b.username] }
    
    render :layout => 'manager'
  end
  
  def create
    actor = Actor.where(:username => session[:manager][:username]).limit(1).first
    begin
      @project = actor.projects.create(params[:project])
    rescue
    end
    
    redirect_to :controller => :manager, :action => :dashboard
  end
  
  def destroy
    
  end
end