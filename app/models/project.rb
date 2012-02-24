

class Project
  include Mongoid::Document
  
  field :name, :type => String
  field :name_seo, :type => String
  
  validates_uniqueness_of :name
  validates_uniqueness_of :name_seo
  
  embedded_in :actor
  
end