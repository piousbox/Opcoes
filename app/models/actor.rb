

class Actor
  include Mongoid::Document
  
  field :username, :type => String
  field :email, :type => String
  field :encrypted_password, :type => String
  
  embeds_many :projects
end