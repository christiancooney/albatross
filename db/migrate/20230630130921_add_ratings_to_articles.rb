class AddRatingsToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :price, :float
    add_column :articles, :atmosphere, :float
    add_column :articles, :drinks, :float
    add_column :articles, :food, :float
    add_column :articles, :service, :float
    add_column :articles, :value, :float
  end
end
