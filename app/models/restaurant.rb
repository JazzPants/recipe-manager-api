class Restaurant < ApplicationRecord
    belongs_to :user
    has_many :ratings, through: :users, dependent: :destroy
    has_many :reviews, through: :users, dependent: :destroy
end
