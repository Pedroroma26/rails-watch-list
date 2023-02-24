# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Bookmark.destroy_all
Movie.destroy_all
puts 'Movies destroyed'
5.times do
  Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::LoremFlickr.image(size: '50x60', search_terms: ['movies']),
    rating: rand(0.0..10.0).round(1)
  )
  puts 'Movie Created'
end

List.destroy_all
puts 'List destroyed'
