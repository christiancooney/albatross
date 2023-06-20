class AddIngredientsToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :recipe_title1, :text
    add_column :articles, :recipe_title2, :text
    add_column :articles, :recipe_title3, :text
    add_column :articles, :recipe_title4, :text
    add_column :articles, :recipe_title5, :text
    add_column :articles, :recipe_title6, :text
    add_column :articles, :recipe_list1, :text
    add_column :articles, :recipe_list2, :text
    add_column :articles, :recipe_list3, :text
    add_column :articles, :recipe_list4, :text
    add_column :articles, :recipe_list5, :text
    add_column :articles, :recipe_list6, :text
    add_column :articles, :method1, :text
    add_column :articles, :method2, :text
    add_column :articles, :method3, :text
    add_column :articles, :method4, :text
    add_column :articles, :method5, :text
    add_column :articles, :method6, :text
    add_column :articles, :method7, :text
    add_column :articles, :method8, :text
    add_column :articles, :method9, :text
    add_column :articles, :method10, :text
  end
end
