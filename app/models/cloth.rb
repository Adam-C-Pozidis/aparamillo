class Cloth < ApplicationRecord
  belongs_to :shelf
  belongs_to :color
  belongs_to :type
end
