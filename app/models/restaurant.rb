class Restaurant < ApplicationRecord
  TYPE = %w(chinese italian japanese french belgian)
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true, inclusion: { in: TYPE }
  has_many :reviews, dependent: :destroy
end
