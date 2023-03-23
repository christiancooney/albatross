class Location < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :country
  has_many :articles, through: :countries
end
