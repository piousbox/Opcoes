

class Link
  include Mongoid::Document
  
  field :url, :type => String
  field :is_active, :type => Boolean
  
  embedded_in :project
  
end