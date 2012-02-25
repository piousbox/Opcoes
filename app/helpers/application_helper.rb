module ApplicationHelper
  
  def project_path project
    '/projects/' + project[:_id].to_s
  end
end
