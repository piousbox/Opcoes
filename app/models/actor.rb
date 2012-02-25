

class Actor
  include Mongoid::Document
  
  field :username, :type => String
  field :email, :type => String
  field :encrypted_password, :type => String
  
  field :is_manager, :type => Boolean
  
  validates_presence_of :username
  validates_uniqueness_of :username
  
  validates_presence_of :email
  validates_uniqueness_of :email, :scope => :is_manager
  
  embeds_many :projects
end