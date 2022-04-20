class Rating < ApplicationRecord
  validates_uniqueness_of :user_id, scope: :restaurant_id
  validates_numericality_of :value,
                            greater_than_or_equal_to: 0.5,
                            less_than_or_equal_to: 5,
                            message: 'value must be between 0.5 and 5'

  belongs_to :user
  belongs_to :restaurant
end
