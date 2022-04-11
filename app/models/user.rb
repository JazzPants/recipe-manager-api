class User < ApplicationRecord
  validates :name, uniqueness: true
  has_many :restaurants
  has_many :ratings, through: :restaurants
  has_many :reviews, through: :restaurants
end
