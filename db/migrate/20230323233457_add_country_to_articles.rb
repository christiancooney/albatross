class AddCountryToArticles < ActiveRecord::Migration[7.0]
  def change
    add_reference :articles, :country, null: true, foreign_key: true
  end
end
