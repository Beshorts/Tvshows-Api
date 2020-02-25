module TvShows
  class IndexConnection
    attr_reader :search_params

    def initialize(search_params)
      @search_params = search_params
    end

    def show_description
      @search_params ? "Results for '#{@search_params}' " : " Upcoming today "
    end

    def shows
      if @search_params
        TvmazeApi::TvShow.search(@search_params)
      else
        TvmazeApi::TvShow.get_upcoming_today
      end
    end
  end
end
