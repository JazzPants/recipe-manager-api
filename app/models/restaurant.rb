class Restaurant < ApplicationRecord
  validates :name, uniqueness: true
  belongs_to :user
  has_many :ratings, through: :users, dependent: :destroy
  has_many :reviews, through: :users, dependent: :destroy
end
