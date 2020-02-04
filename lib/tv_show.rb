module TvmazeApi
  module TvShow
    extend self

    def get_upcoming_today
      response = HTTParty.get("#{BASE_URL}/schedule?country=US&date")
      show_data = JSON.parse(response.body)
    end

    def show_details(show_id)
      response = HTTParty.get("#{BASE_URL}/shows/#{show_id}?embed=cast")
      show_data = JSON.parse(response.body)
    end

    def search(query)
      response = HTTParty.get("#{BASE_URL}/search/shows?q=#{query}")
      show_data = JSON.parse(response.body)
    end
  end
end
