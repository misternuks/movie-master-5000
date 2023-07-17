class MovieBookmarksController < ApplicationController
  def new
    @bookmark = MovieBookmark.new
  end

  def create
    @bookmark = MovieBookmark.new(movie_bookmark_params)
    @list = MovieList.find(params[:movie_list_id])
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def movie_bookmark_params
    params.require(:movie_bookmark).permit(:comment, :movie_id)
  end
end
