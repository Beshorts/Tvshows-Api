module GenreHelper
  #create helper if params don't match any Tv shows
  def genre_found?
    genre_path(@genre.shows).include?(params[:genre])
  end
end
