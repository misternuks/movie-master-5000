class MovieMovie < ApplicationRecord
  has_many :movie_bookmarks
  has_many :movie_lists, through: :movie_bookmarks

  validates :title, presence: true
end
