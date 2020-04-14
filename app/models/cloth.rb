class Cloth < ApplicationRecord
  belongs_to :shelf
  has_many :colors
  has_many :types
end
