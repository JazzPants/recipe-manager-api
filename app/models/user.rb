class User < ApplicationRecord
  # validates :password_confirmation, presence: true
  has_secure_password
  validates :name, uniqueness: true
  validates :password,
            length: {
              in: 6..20,
              message: 'Your password must be betwen 6 to 20 characters',
            }

  # , confirmation: true
  has_many :restaurants
  has_many :ratings, through: :restaurants
  has_many :reviews, through: :restaurants
end
