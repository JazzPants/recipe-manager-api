class User < ApplicationRecord
  validates :name, uniqueness: true
  validates :password, length: { in: 6..20 }
  has_secure_password
  has_many :restaurants
  has_many :ratings, through: :restaurants
  has_many :reviews, through: :restaurants
end
