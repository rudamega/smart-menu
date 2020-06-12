class Cart < ApplicationRecord
  belongs_to :place
  belongs_to :user
  has_many :cart_items
end
