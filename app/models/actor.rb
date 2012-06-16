

class Actor
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  field :username, :type => String
  field :email, :type => String
  field :encrypted_password, :type => String
  
  field :is_manager, :type => Boolean
  
#  validates_presence_of :username
#  validates_uniqueness_of :username
  
  validates_presence_of :email
  validates_uniqueness_of :email, :scope => :is_manager
  
  embeds_many :projects
  
  def self.set_manager email
    new_actor = Actor.where(:email => email).first
    new_actor.is_manager = true
    new_actor.save
  end
  
end