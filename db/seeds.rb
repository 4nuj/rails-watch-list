# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'


# create movies table entries
# 10.times do
#   title = Faker::Movie.title
#   while Movie.exists?(title: title)
#     title = Faker::Movie.title
#   end
#   Movie.create!(
#     title: title,
#     overview: Faker::Lorem.sentence(word_count: 20),
#     poster_url: Faker::Internet.url,
#     rating: rand(1..10)
#   )
# end

# #create lists table entries

# 10.times do
#   list = Faker::Book.genre
#   while List.exists?(name: list)
#     list = Faker::Book.genre
#   end
#     List.create!(
#     name: Faker::Book.genre
#   )
# end


# 10.times do
#   Movie.all.each do |movie|
#     bookmark = Bookmark.new(
#       comment: Faker::Lorem.words(number: rand(5..10)),
#       movie_id: movie.id
#     )
#     List.all.each do |list|
#       bookmark.list_id = list.id
#     end
#     bookmark.save!
#   end
# end




require 'faker'

# # Create 10 movies
# 10.times do
#   title = Faker::Movie.title
#   while Movie.exists?(title: title)
#     title = Faker::Movie.title
#   end
#   Movie.create!(
#     title: title,
#     overview: Faker::Lorem.sentence(word_count: 20),
#     poster_url: Faker::Internet.url,
#     rating: rand(1..10)
#   )
# end

# # Create 10 unique list names
# list_names = []
# 10.times do
#   name = Faker::Book.genre
#   while list_names.include?(name)
#     name = Faker::Book.genre
#   end
#   list_names << name
#   List.create!(
#     name: name
#   )
# end

10.times do
  Movie.all.each do |movie|
    bookmark = Bookmark.new(
      comment: Faker::Lorem.words(number: rand(5..10)),
      movie_id: movie.id
    )
    List.all.each do |list|
      bookmark.list_id = list.id
    end
    bookmark.save!
  end
end
