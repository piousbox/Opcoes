

class Project
  include Mongoid::Document
  
  field :url, :type => String
  field :quantity, :type => Integer
  field :keywords, :type => String
  field :is_trash, :type => Boolean, :default => false
  
  validates_uniqueness_of :url
  validates_presence_of :url
  
  embedded_in :actor
  embeds_many :links
  
end