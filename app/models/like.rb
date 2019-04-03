class Like < ApplicationRecord
  belongs_to :user
  belongs_to :like, class_name: "Micropost"
end