class Micropost < ActiveRecord::Base
  belongs_to :user
  delegate :name, :to => :user, :prefix => true
  validates :content, length: { maximum: 140 }
end
