class MovieListsController < ApplicationController
  def index
    @lists = MovieList.all
  end

  def show
    @list = MovieList.find(params[:id])
  end

  def new
    @list = MovieList.new
  end

  def create
    @list = MovieList.new(movie_list_params)
    if @list.save
      redirect_to movie_lists_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @list = MovieList.find(params[:id])
    @list.delete
    redirect_to movie_lists_path, status: :see_other
  end

  private

  def movie_list_params
    params.require(:movie_list).permit(:name)
  end
end
