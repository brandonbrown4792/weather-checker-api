class Api::V1::WeatherController < ApplicationController
    def get_weather
        render :json => get_weather_helper(weather_params[:latitude], weather_params[:longitude]), :status => :ok
    end

    private
    
    def get_weather_helper(latitude, longitude)
        return OpenWeather::GetWeather.by_coords(latitude, longitude)
    end

    def weather_params
        params.require(:coords).permit(:latitude, :longitude)
    end
end
