class AddCountryToLocations < ActiveRecord::Migration[7.0]
  def change
    add_reference :locations, :country, null: true, foreign_key: true
  end
end
