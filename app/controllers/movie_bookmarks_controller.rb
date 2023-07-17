class MovieBookmarksController < ApplicationController
  def new
    @bookmark = MovieBookmark.new
    @list = MovieList.find(params[:movie_list_id])
  end

  def create
    @list = MovieList.find(params[:movie_list_id])
    @bookmark = MovieBookmark.new(movie_bookmark_params)
    @bookmark.movie_list = @list
    if @bookmark.save
      redirect_to movie_list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = MovieBookmark.find(params[:id])
    @bookmark.destroy
    redirect_to movie_lists_path, status: :see_other
  end

  private

  def movie_bookmark_params
    params.require(:movie_bookmark).permit(:comment, :movie_movie_id)
  end
end
