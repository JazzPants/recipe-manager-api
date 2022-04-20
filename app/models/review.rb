class Review < ApplicationRecord
  # stop same user making reviews on same restaurant
  validates_uniqueness_of :user_id, scope: :restaurant_id, on: :create
  belongs_to :user
  belongs_to :restaurant
end
