

class Link
  include Mongoid::Document
  
  field :url, :type => String
  field :is_active, :type => Boolean, :default => false
  
  embedded_in :project
  
end