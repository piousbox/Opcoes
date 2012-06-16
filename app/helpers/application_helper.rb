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
    return '/register'
  end
end
