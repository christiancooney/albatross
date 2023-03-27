class ChangeColumnDefaultArticles < ActiveRecord::Migration[7.0]
  def change
    change_column :articles, :location, null: false, foreign_key: true, default: 0
  end
end
