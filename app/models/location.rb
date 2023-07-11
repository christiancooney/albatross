class Location < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  has_many :countries
  has_many :articles
  include PgSearch::Model
    multisearchable against: [:name]

  include PgSearch::Model
  pg_search_scope :location_search,
  against: %i[country city category subcategory title
    feature subfeature ],
  using: {
    tsearch: {prefix: true}
  }

  include PgSearch::Model
  multisearchable against: %i[name name country city title category subcategory
    feature subfeature cuisine recipe_title1 recipe_title2
    recipe_title3 recipe_title4 recipe_title5 recipe_title6
    recipe_list1 recipe_list2 recipe_list3 recipe_list4
    recipe_list5 recipe_list6]


    include PgSearch::Model
    pg_search_scope :global_search,
      against: %i[name name country city title category subcategory
        feature subfeature cuisine recipe_title1 recipe_title2
        recipe_title3 recipe_title4 recipe_title5 recipe_title6
        recipe_list1 recipe_list2 recipe_list3 recipe_list4
        recipe_list5 recipe_list6]


end
