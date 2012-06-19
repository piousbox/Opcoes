

class ProjectsController < ApplicationController
  
  before_filter :authenticate_actor!, :except => [ :take, :build ]
  
  def show
    #    project_one = Project.create(:name => 'name', :name_seo => 'name_seo', :actor => user)
    @project = Actor.where('projects._id' => params[:_id]).limit(1).first.
      projects.where(:_id => params[:_id]).limit(1).first
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def take
    project = Actor.where('projects.url' => params[:project][:url]).limit(1).first.
      projects.where(:url => params[:project][:url]).limit(1).first
    
    project.builder_email = current_builder[:email]
    project.save
    
    redirect_to :controller => :builder, :action => :dashboard
  end
  
  def build
    ;
  end
  
  def new
    @project = Project.new
    
    @builders = Actor.where(:is_manager => false).order([:username, :desc])
    @builders = [['Random', nil]] + @builders.map { |b| [b.username, b.username] }
  end
  
  def create
    actor = Actor.where(:email => current_actor[:email]).limit(1).first
    params[:project][:datetime] = Time.new
    begin
      @p = actor.projects.push(Project.new(params[:project]))
    rescue
    end
    
    redirect_to '/'
  end
  
  def add_links
    @project = Actor.where('projects.builder_username' => session[:builder][:username]).limit(1).first().projects.where('_id' => params[:_id]).limit(1).first()
  end
  
  def process_add_links
    project = Actor.where('projects.builder_username' => session[:builder][:username]).limit(1).first().projects.where('_id' => params[:_id]).limit(1).first()
    project.links = []
    (0...project[:quantity]).each do |i|
      project.links << Link.new(:url => params[:links][i.to_s])
    end
    project.save
    redirect_to :controller => :builder, :action => :dashboard
  end
end