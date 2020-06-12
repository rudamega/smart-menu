class Place < ApplicationRecord
  belongs_to :restaurant
  has_many :carts
end
