class Article < ApplicationRecord
  validates :date, :category, :imagecover, presence: true
  has_one_attached :imagecover
  has_one_attached :image1
  has_one_attached :image2
  has_one_attached :image3
  has_one_attached :image4
  has_one_attached :image5
  has_one_attached :image6
  has_one_attached :image7
  has_one_attached :image8
  has_one_attached :image9
  has_one_attached :image10
  has_one_attached :image11
  has_one_attached :image12
  has_one_attached :image13
  has_one_attached :image14
  has_one_attached :image15
  has_one_attached :image16
  has_one_attached :image17
  has_one_attached :image18
  has_one_attached :image19
  has_one_attached :image20
  has_one_attached :image20
  has_one_attached :image21
  has_one_attached :image22
  has_one_attached :image23
  has_one_attached :image24
  has_one_attached :image25
  has_one_attached :image26
  has_one_attached :image27
  has_one_attached :image28
  has_one_attached :image29
  has_one_attached :image30
  has_many :countries
  has_many :locations

  include PgSearch::Model
  # Global Search
  pg_search_scope :global_search,
  against: %i[ country city title category subcategory
    feature subfeature cuisine recipe_title1 recipe_title2
    recipe_title3 recipe_title4 recipe_title5 recipe_title6
    recipe_list1 recipe_list2 recipe_list3 recipe_list4
    recipe_list5 recipe_list6 location_id country_id],
    using: {
      tsearch: {prefix: true}
    }
# Travel Searche

  pg_search_scope :travel_type_search,
  against: %i[ holiday_tags ],
  using: {
    tsearch: {prefix: true}
  }

  pg_search_scope :travel_search,
    against: %i[ country city category subcategory title feature subfeature travel_tags holiday_tags ],
    using: {
    tsearch: {prefix: true}
     }

  pg_search_scope :location_search,
  against: %i[country city category subcategory title
    feature subfeature holiday_tags travel_tags],
    using: {
      tsearch: {prefix: true}
    }

  pg_search_scope :country_search,
  against: %i[country city category subcategory title
    feature subfeature holiday_tags travel_tags],
    using: {
      tsearch: {prefix: true}
    }
# Recipes Searche

  pg_search_scope :recipe_search,
  against: %i[category subcategory title
  feature subfeature cuisine recipe_title1 recipe_title2
  recipe_title3 recipe_title4 recipe_title5 recipe_title6
  recipe_list1 recipe_list2 recipe_list3 recipe_list4
  recipe_list5 recipe_list6 ],
  using: {
  tsearch: {prefix: true}
}

  pg_search_scope :dietary_search,
  against: %i[ dietary_tags  ],
  using: {
  tsearch: {prefix: true}
}

  pg_search_scope :cuisine_search,
  against: %i[ cuisine ],
  using: {
  tsearch: {prefix: true}
  }

  pg_search_scope :drink_search,
  against: %i[title feature subfeature cuisine recipe_title1 recipe_title2
    recipe_title3 recipe_title4 recipe_title5 recipe_title6
    recipe_list1 recipe_list2 recipe_list3 recipe_list4
    recipe_list5 recipe_list6 drink_markers ],
  using: {
    tsearch: {prefix: true}
  }

  pg_search_scope :sweets_search,
  against: %i[sweet_markers title feature subfeature cuisine recipe_title1 recipe_title2
    recipe_title3 recipe_title4 recipe_title5 recipe_title6
    recipe_list1 recipe_list2 recipe_list3 recipe_list4
    recipe_list5 recipe_list6 ],
  using: {
    tsearch: {prefix: true}
  }

end
