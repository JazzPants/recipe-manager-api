class User < ApplicationRecord
    has_many :restaurants
    has_many :ratings through restaurants
    has_many :reviews through restaurants
end
