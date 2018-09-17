class User < ApplicationRecord
  has_many :memberships
  has_many :clubs, through: :memberships
  validates :email, :first_name, presence: true
  validates :email, uniqueness: true
end
