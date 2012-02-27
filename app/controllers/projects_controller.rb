

class ProjectsController < ApplicationController
  
  def index
    
  end
  
  def show
#    project_one = Project.create(:name => 'name', :name_seo => 'name_seo', :actor => user)
    @project = Actor.where('username' => session[:manager][:username]).limit(1).first().
      projects.where(:_id => params[:_id]).limit(1).first()
    
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def new
    @builders = Actor.where(:is_manager => false).order([:username, :desc])
    @builders = [['Random', nil]] + @builders.map { |b| [b.username, b.username] }
  end
  
  def create
    actor = Actor.where(:username => session[:manager][:username]).limit(1).first
    begin
      @project = actor.projects.create(params[:project])
    rescue
    end
    
    redirect_to :controller => :manager, :action => :dashboard
  end
  
  def add_links
    puts params[:_id]
    @project = Actor.where('projects.builder_username' => session[:builder][:username]).limit(1).first().projects.where('_id' => params[:_id]).limit(1).first()
  end
  
  def destroy
    
  end
  
  def process_add_links
    project = Actor.where('projects.builder_username' => session[:builder][:username]).limit(1).first().projects.where('_id' => params[:_id]).limit(1).first()
    project.links = []
    (0...project[:quantity]).each do |i|
      puts params[:links][i.to_s]
      project.links << Link.new(:url => params[:links][i.to_s])
    end
    project.save
    redirect_to :controller => :builder, :action => :dashboard
  end
end