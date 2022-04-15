class User < ApplicationRecord
  # validates :password_confirmation, presence: true
  has_secure_password
  validates :name, uniqueness: true
  validates :password,
            length: {
              minimum: 6,
              message: 'Your password must be greater than 6 characters',
            }

  # , confirmation: true
  has_many :restaurants
  has_many :ratings, through: :restaurants
  has_many :reviews, through: :restaurants
end
