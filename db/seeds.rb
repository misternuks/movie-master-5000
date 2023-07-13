# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'rest-client'

def tmdb_key
  ENV['TMDB_API_KEY']
end

puts 'Seeding movies...'
api_data = { key: tmdb_key }
movies = RestClient.get("https://api.themoviedb.org/3/movie/top_rated?api_key=#{api_data[:key]}")
movies_array = JSON.parse(movies)['results']
movies_array.first(5).each do |m|
  MovieMovie.create!(
    title: m['title'],
    summary: m['overview'],
    image_url: m['backdrop_path'],
    rating: m['vote_average']
  )
end
puts 'Finished!'
