# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Estate.destroy_all
Client.destroy_all
User.destroy_all

User.create!(
  email: "naii@gmail.com",
  password: 123456
)

50.times do
  Client.create!(
    first_name: Faker::Name.first_name,
    name: Faker::Name.last_name,
    address: Faker::Address.street_name,
    place: "Rothenburg",
    postal_code: 6023,
    phone1: Faker::PhoneNumber.cell_phone,
    phone2: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    remarks: "Super Kunde. Judihui",
    date_of_birth: Date.today,
    user: User.first
  )
end

c = Client.first
c.follow_up = Date.today
c.save

c = Client.second
c.follow_up = Date.tomorrow
c.save

c = Client.third
c.follow_up = Date.yesterday
c.save


Estate.create!(
  estate_type: "Wohnung",
  details: "3.5 Wohnung",
  street: Faker::Address.street_name,
  postal_code: 6000,
  place: "Luzern",
  client: Client.first
  )

