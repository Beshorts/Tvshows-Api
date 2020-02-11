class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end
  # get tvshows genres from upcomings today
  def genre
    @genre = TvShows::IndexConnection.new(params[:search])
  end
end
