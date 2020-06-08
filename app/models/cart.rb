class Cart < ApplicationRecord
  belongs_to :item
  belongs_to :place
  belongs_to :user
end
