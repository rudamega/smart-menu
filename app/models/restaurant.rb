class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :items
  has_many :places
  has_one_attached :photo
end
