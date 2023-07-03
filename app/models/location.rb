class Location < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  has_many :countries
  has_many :articles

  include PgSearch::Model
  pg_search_scope :location_search,
  against: %i[country city category subcategory title
    feature subfeature ],
  using: {
    tsearch: {prefix: true}
  }




end
