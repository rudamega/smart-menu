class Item < ApplicationRecord
  belongs_to :restaurant
  has_many :cart_items
  has_one_attached :photo
end
