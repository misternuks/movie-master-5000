class CreateMovieBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_bookmarks do |t|
      t.string :comment
      t.references :movie_movie, null: false, foreign_key: true
      t.references :movie_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
