require 'index_connection'
require 'show_connection'
require 'tv_show'
require 'tvmaze_api'

class TvshowsController < ApplicationController

  def index
    @tvshows = TvShows::IndexConnection.new(params[:search])
  end

  def show
    @tvshow = TvShows::ShowConnection.new(params[:id])
  end
end
