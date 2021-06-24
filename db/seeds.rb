# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Book.count == 0
    10.times do |i|

       Book.create(
           author: Faker::Book.author,
           title: Faker::Book.title,
           genre: Faker::Book.genre,
           date_written: Faker::Date.between(from: 100.years.ago, to: Date.yesterday)
       )
       puts "Create #{i+0} book"
    end
end