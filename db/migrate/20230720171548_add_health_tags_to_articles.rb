class AddHealthTagsToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :health_tags, :text
  end
end
