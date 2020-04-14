class Shelf < ApplicationRecord
  belongs_to :shop
  has_many :cloths
end
