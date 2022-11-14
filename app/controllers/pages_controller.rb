class PagesController < ApplicationController
  def home

  end

  def sports

  end

  def economie

  end

  def search
    countries = find_country(params[:country])
    unless countries
      flash[:alert] = 'Country not found'
      return render action: :home
    end
  end

  # change to accept all caps
  # @country = country
  # @headlines = find_headlines(@country['capital'], @country['alpha2Code'])

  def find_country(country_code)
    query = URI.encode("#{country_code}")
    request_api(
      "https://newsapi.org/v2/top-headlines?q=#{query}"
      # "https://newsapi.org/v2/top-headlines?country?&category?apiKey=da39ecad288a4d8782dd37d3771880fa"
    )
  end

private

  def request_api(url)
    response = Excon.get(
      url,
      headers: {
        'X-RapidAPI-Host' => URI.parse(url).host,
        'X-RapidAPI-Key' => ENV.fetch('da39ecad288a4d8782dd37d3771880fa')
      }
    )
    return nil if response.status != 200
    JSON.parse(response.body)
  end


  def find_country(name)
    request_api(
      "https://newsapi.org/v2/top-headlines?&/#{URI.encode(name)}"
    )
  end
end
