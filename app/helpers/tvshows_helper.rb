module TvshowsHelper
  # to avoid tv shows who don't fit cards parameters -BEA
  def shows_filter
    @tvshows.shows.select do |item|
      unless item['show']['genres'].empty? || item['show']['genres'].nil?
        unless item['show']['genres'][0] == 'DIY' || item['show']['genres'][0] == 'Adult'
          item
        end
      end
    end
  end
end
