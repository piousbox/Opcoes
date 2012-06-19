

class Link
  include Mongoid::Document
  
  field :url, :type => String
  field :is_active, :type => Boolean, :default => false
  
  validates_presence_of :url
  
  embedded_in :project
  
end