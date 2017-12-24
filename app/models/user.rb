class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys: [:password]
         
  has_secure_password

  has_many :rides
  has_many :attractions, through: :rides

  def mood
    self.happiness > self.nausea ? "happy" : "sad"
  end
end
