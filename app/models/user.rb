class User < ActiveRecord::Base
  validates :password, presence: true

  has_many :rides
  has_many :attractions, through: :rides

  def mood
    if self.nausea && self.happiness
      moody = self.happiness - self.nausea
      moody > 0 ? 'happy' : 'sad'
    end
  end
end
