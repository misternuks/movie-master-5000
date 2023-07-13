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
  end
end
