

class Project
  include Mongoid::Document
  
  field :url, :type => String
  field :quantity, :type => Integer
  field :quantity_completed, :type => Integer, :default => 0
  field :keywords, :type => String
  field :datetime, :type => DateTime
  field :builder_email, :type => String
  
  validates_uniqueness_of :url
  validates_presence_of :url
  
  validates_presence_of :quantity
  validates_numericality_of :quantity
  
  validates_presence_of :keywords
  
  embedded_in :actor
  embeds_many :links
  embeds_one :builder
  
end