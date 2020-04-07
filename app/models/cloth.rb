class Cloth < ApplicationRecord
  belongs_to :type
  belongs_to :color
  belongs_to :user
  belongs_to :shelf
end
