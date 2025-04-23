class MoviesController < ApplicationController
  def index
  end

  def show
  end

  def favourites
  end

  def new
    @movie = Movie.new
  end
end
