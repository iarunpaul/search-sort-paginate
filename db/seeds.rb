# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
50.times do
  Product.create(name: Faker::Movies::LordOfTheRings.character, price: Faker::Number.decimal(l_digits: 3, r_digits: 2), released_at: Faker::Date.between(from: '2014-09-23', to: '2020-04-25'))
end
