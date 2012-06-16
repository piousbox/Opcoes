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
  
  def dashboard_link
    link_to 'Dashboard of ' + current_actor[:email], '/' # dashboard_path
  end
  
end
