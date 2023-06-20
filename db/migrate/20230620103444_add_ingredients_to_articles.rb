class AddIngredientsToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :recipe-title1, :text
    add_column :articles, :recipe-title2, :text
    add_column :articles, :recipe-title3, :text
    add_column :articles, :recipe-title4, :text
    add_column :articles, :recipe-title5, :text
    add_column :articles, :recipe-title6, :text
    add_column :articles, :recipe-list1, :text
    add_column :articles, :recipe-list2, :text
    add_column :articles, :recipe-list3, :text
    add_column :articles, :recipe-list4, :text
    add_column :articles, :recipe-list5, :text
    add_column :articles, :recipe-list6, :text
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
