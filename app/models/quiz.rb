class Quiz < ApplicationRecord
  validates :name, :score, presence: true
  validates :score, :inclusion => {:in => 0..10}

  def self.been_taken?
    count > 0
  end
end
