class Review < ApplicationRecord
  validates :user_id, uniqueness: true
  validates :restaurant_id, uniqueness: true
  belongs_to :user
  belongs_to :restaurant
end
