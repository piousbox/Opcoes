

Fabricator(:link) do

  url 'http://some-url.com'
  is_active false
  
end

Fabricator(:active_link, :from => :link) do
  
  is_active true
  
  project
  
end