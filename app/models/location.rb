class Location < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  has_many :countries
  has_many :articles

  include PgSearch::Model
  multisearchable against: [:name]
end
