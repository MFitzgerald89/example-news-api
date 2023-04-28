class WeatherController < ApplicationController

  def index
    response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=pittsburgh&appid=#{Rails.application.credentials.new_api[:weather_key]}")

    data = JSON.parse(response.body)
    render json: data
  end

end
