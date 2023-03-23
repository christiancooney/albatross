class Country < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :articles
  has_many :locations
end
