module ApplicationHelper
  
  def project_path project
    '/projects/' + project[:name_seo]
  end
end
