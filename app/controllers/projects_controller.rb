

class ProjectsController < ApplicationController
  
  def index
    one = Project.new({:name => 'xxName Onexx', 
        :name_seo => 'one'
      })
    two = Project.new({:name => 'xxName Twoxx',
        :name_seo => 'two' 
      })
    @projects = [one, two]
    render :layout => 'manager'
    
  end
  
  def show
    username = 'piousbox'
    user = Actor.where(:username => username).limit(1).first
#    project_one = Project.create(:name => 'name', :name_seo => 'name_seo', :actor => user)
    @project = Actor.where(:username => username).limit(1).first.projects.where(:name_seo => params[:name_seo]).limit(1).first
    
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def new
    
  end
  
  def create
    
  end
  
  def destroy
    
  end
end