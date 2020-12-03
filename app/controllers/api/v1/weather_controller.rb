class Api::V1::WeatherController < ApplicationController
    def
        get_weather
        render :json => get_weather_helper
    end

    private
    
    def get_weather_helper
        return OpenWeather::GetWeather.by_coords(33.748997, -84.387985)
    end

    def weather_params
        params.require(:coords).permit(:longitude, :latitude)
    end
end
