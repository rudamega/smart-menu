class Cart < ApplicationRecord
  belongs_to :place
  belongs_to :order
  belongs_to :user
end
