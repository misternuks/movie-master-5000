class MovieList < ApplicationRecord
  has_many :movie_bookmarks
  has_many :movie_movies, through: :movie_bookmarks
end
