class User < ActiveRecord::Base
  has_many :comments
  has_many :characters, dependent: :destroy

  
  # Include default devise modules. Others available are:
  # , :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :confirmable, :lockable
  enum role: [:author, :moderator, :admin, :guest]

  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'
  attr_accessor :login

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_hash).where(
        ['lower(username) = :value OR lower(email) = :value',
        { value: login.downcase }]
      ).first
    else
      where(conditions.to_hash).first
    end
  end      
end
