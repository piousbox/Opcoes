

class Actor
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  field :email, :type => String
  field :encrypted_password, :type => String
  
  validates_presence_of :email
  validates_uniqueness_of :email
  
  embeds_many :projects
  
  def self.set_manager email
    new_actor = Actor.where(:email => email).first
    new_actor.is_manager = true
    new_actor.save
  end
  
end