class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :likes
  
  validates :content, presence: true, length: {maximum: 255}
  
end
