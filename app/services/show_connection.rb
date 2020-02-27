module TvShows
  class ShowConnection
    attr_reader :show_data

    def initialize(show_id)
      @show_data = TvmazeApi::TvShow.show_details(show_id)
    end

    def cover_image
      show_data['image'].present?
      show_data['image']['medium']
    end

    def cover_image_original
      show_data['image']['original']
    end

    def show_name
      show_data['name']
    end

    def premiered
      show_data['premiered']
    end

    def status
      show_data['status']
    end

    def rating
      show_data['rating']['average']
    end

    def genres
      show_data['genres']
    end

    def cast
      show_data['_embedded']['cast']
    end

    def summary
      show_data["summary"].gsub(%r{</?[^>]+?>}, '')
    end
  end
end
