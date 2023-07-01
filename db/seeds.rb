# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user1 = User.create!(
  email: "christiancooney@gmail.com",
  password: "Nomenclature29!"
)

user2 = User.create!(
  email: "rosiedunningham@hotmail.co.uk",
  password: "Terracotta02!"
)

country1 = Country.create!(
  name: "United Kingdom"
)


location1 = Location.create!(
  name: "London",
  country_id: 1
)
