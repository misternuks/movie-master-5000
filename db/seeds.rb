require 'rest-client'

def tmdb_key
  ENV['TMDB_API_KEY']
end
puts 'Removing previous seeds...'
MovieMovie.destroy_all
puts 'Seeds destroyed.'

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
