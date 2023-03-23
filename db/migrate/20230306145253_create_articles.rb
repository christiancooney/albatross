class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.text :title
      t.text :country
      t.text :city
      t.float :latitude
      t.float :longitude
      t.text :author
      t.date :date
      t.text :text1
      t.text :text2
      t.text :text3
      t.text :text4
      t.text :text5
      t.text :text6
      t.text :text7
      t.text :text8
      t.text :text9
      t.text :text10
      t.text :text11
      t.text :text12
      t.text :text13
      t.text :text14
      t.text :text15
      t.text :text16
      t.text :text17
      t.text :text18
      t.text :text19
      t.text :text20
      t.text :text21
      t.text :text22
      t.text :text23
      t.text :text24
      t.text :text25
      t.text :text26
      t.text :text27
      t.text :text28
      t.text :text29
      t.text :text30

      t.timestamps
    end
  end
end
