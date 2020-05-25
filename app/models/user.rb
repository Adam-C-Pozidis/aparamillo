class User < ApplicationRecord
  enum role: [:customer, :owner]
  belongs_to :shop, optional: true
  has_many :cloths
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_name
    "#{last_name}, #{first_name}"
  end
end
