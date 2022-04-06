class Restaurant < ApplicationRecord
    belongs_to :user
    has_many :ratings, through: :users
    has_many :reviews, through: :users
end
