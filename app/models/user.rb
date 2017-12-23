class User < ActiveRecord::Base
  has_secure_password

  has_many :rides
  has_many :attractions, through: :rides

  def mood
    self.happy > self.nauseous ? "happy" : "sad"
  end
end
