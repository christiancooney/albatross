class AddDefaultToArticles < ActiveRecord::Migration[7.0]
  def change
    change_column_default :articles, :location_id, from: nil, to: 0
  end
end
