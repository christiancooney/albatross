class AddDetailsToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :category, :text
    add_column :articles, :subcategory, :text
    add_column :articles, :feature, :text
    add_column :articles, :subfeature, :text
    add_column :articles, :cuisine, :text
  end
end
