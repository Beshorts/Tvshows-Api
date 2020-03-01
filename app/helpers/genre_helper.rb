module GenreHelper
  # create helper if params don't match any Tv shows
  def genre_found?
    genre_path(@genre.shows).include?(params[:genre])
  end

  # to avoid tv shows who don't fit cards parameters as upcoming cards
  def genre_filter
    @genre.shows.select do |item|
      unless item['show']['image'].nil?
        unless item['show']['genres'].empty? || item['show']['genres'].nil?
          unless item['show']['genres'][0] == 'DIY' || item['show']['genres'][0] == 'Adult'
            item
          end
        end
      end
    end
  end
end
