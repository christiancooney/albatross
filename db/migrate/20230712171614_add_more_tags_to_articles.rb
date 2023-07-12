class AddMoreTagsToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :dietary_tags, :text
    add_column :articles, :holiday_tags, :text
    add_column :articles, :dietary_markers, :text
    add_column :articles, :drink_markers, :text
    add_column :articles, :sweet_markers, :text
    add_column :articles, :summary, :text
    add_column :articles, :website, :text
    add_column :articles, :address, :text
  end
end
