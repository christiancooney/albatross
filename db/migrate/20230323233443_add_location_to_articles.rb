class AddLocationToArticles < ActiveRecord::Migration[7.0]
  def change
    add_reference :articles, :location, null: false, foreign_key: true, default: 1
  end
end
