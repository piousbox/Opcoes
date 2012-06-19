module ApplicationHelper
  
  def project_path project
    '/projects/' + project[:_id].to_s
  end
  
  def about_us_path
    return '/pages/about_us'
  end
  
  def privacy_policy_path
    return '/pages/privacy_policy'
  end
  
  def register_path
    return '/actors/sign_up'
  end
  
  def sign_in_path
    return '/actors/sign_in'
  end
  
  def sign_out_link
    link_to 'Sign Out', '/actors/sign_out', :method => :delete
  end
  
  def builder_sign_out_link
    link_to 'Sign Out', '/builders/sign_out', :method => :delete
  end
  
  def dashboard_link
    link_to 'Dashboard of ' + current_actor[:email], '/' # dashboard_path
  end
  
  def builder_dashboard_link
    link_to 'Dashboard of ' + current_builder[:email], '/' # dashboard_path
  end
  
  def take_project_link project
    link_to 'Take', {:controller => :projects, :action => :take, :project => project.attributes}, :method => :post
  end
  
end
