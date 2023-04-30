class Article < ApplicationRecord
  validates :date, presence: true
  validates :category, presence: true

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




end
