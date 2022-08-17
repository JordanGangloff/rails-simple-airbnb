# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

6.times do
  flat = Flat.new(
    name: Faker::Hipster.sentence(word_count: 3, supplemental: false, random_words_to_add: 4),
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph(sentence_count: 3, supplemental: true),
    price_per_night: Faker::Number.between(from: 50, to: 150),
    number_of_guests: Faker::Number.between(from: 1, to: 6)
  )
  flat.save!
end
