class AddTagsToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :recipe_tags, :text
    add_column :articles, :travel_tags, :text
    add_column :articles, :vegan, :boolean
    add_column :articles, :vegetarian, :boolean
    add_column :articles, :gluten_free, :boolean
    add_column :articles, :dairy_free, :boolean
    add_column :articles, :nut_free, :boolean
    add_column :articles, :seafood, :boolean
    add_column :articles, :alcohol, :boolean
    add_column :articles, :alcohol_free, :boolean
    add_column :articles, :city_break, :boolean
    add_column :articles, :active_holiday, :boolean
    add_column :articles, :beach_holiday, :boolean
    add_column :articles, :adventure_holiday, :boolean
    add_column :articles, :multi_destination_holiday, :boolean
  end
end
