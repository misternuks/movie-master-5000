class CreateMovieMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_movies do |t|
      t.string :title
      t.string :summary
      t.string :image_url
      t.float :rating

      t.timestamps
    end
  end
end
