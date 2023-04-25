# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

require 'faker'

10.times do
  street_num = Faker::Address.building_number
  street_name = Faker::Address.unique.street_name
  city = Faker::Address.unique.city
  zip_code = Faker::Address.zip_code

  address = "#{street_num} #{street_name}, #{city} #{zip_code}"

  @client = Client.create!(
    name: Faker::Name.unique.name_with_middle,
    address: address,
    company: Faker::Company.unique.name,
    phone_number: Faker::PhoneNumber.unique.cell_phone_with_country_code
  )
end
