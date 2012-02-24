

class ManagerController < ApplicationController
  
  def dashboard
    username = 'piousbox'
    @projects = Actor.where(:username => username).limit(1).first().projects.all()
    
    render :layout => 'manager'
  end
  
end