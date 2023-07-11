class Country < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  has_many :articles
  has_many :locations, -> { order "name ASC" }


    include PgSearch::Model
    pg_search_scope :global_search,
      against: %i[name ]

end
