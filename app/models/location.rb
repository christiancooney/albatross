class Location < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  has_one :countries
  has_many :articles


end
