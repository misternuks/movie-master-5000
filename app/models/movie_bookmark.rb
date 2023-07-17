class MovieBookmark < ApplicationRecord
  belongs_to :movie_movie
  belongs_to :movie_list

  validates :movie_movie_id, uniqueness: { scope: :movie_list_id }
end
