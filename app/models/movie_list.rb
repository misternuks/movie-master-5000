class MovieList < ApplicationRecord
  has_many :movie_bookmarks, dependent: :destroy
  has_many :movie_movies, through: :movie_bookmarks

  validates :name, presence: true
end
