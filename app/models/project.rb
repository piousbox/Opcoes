

class Project
  include Mongoid::Document
  
  field :url, :type => String
  field :quantity, :type => Integer
  field :keywords, :type => String
  field :is_trash, :type => Boolean, :default => false
  field :builder_username, :type => String
  field :datetime, :type => DateTime, :default => proc { Time.now }
  
  validates_uniqueness_of :url
  validates_presence_of :url
  
  embedded_in :actor
  embeds_many :links
  
  
end