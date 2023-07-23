class AddRecipeInfoToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :servings, :integer
    add_column :articles, :prep_time, :integer
    add_column :articles, :cooking_time, :integer
    add_column :articles, :difficulty, :text
  end
end
