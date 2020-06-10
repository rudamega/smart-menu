class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :items
  has_many :places
end
