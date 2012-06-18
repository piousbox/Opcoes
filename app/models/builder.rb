



class Builder
  
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  field :email, :type => String
  field :encrypted_password, :type => String
  
  validates_presence_of :email
  validates_uniqueness_of :email
  
  # should have the list of his own urls
  has_many :urls
  
  # should have the list of projects he works on
  has_many :projects
  
end