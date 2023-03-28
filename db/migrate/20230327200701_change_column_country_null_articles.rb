class ChangeColumnCountryNullArticles < ActiveRecord::Migration[7.0]
  def change
    change_column_null :articles, :country_id, from: false, to: true
  end
end
