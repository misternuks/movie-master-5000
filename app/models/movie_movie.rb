class MovieMovie < ApplicationRecord
  has_many :movie_bookmarks

  validates :title, presence: true, uniqueness: true
end
