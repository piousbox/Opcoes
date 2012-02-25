

class Link
  include Mongoid::Document
  
  field :url, :type => String
  field :is_active, :type => Integer
  
  embedded_in :project
  
end