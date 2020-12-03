class Api::V1::WeatherController < ApplicationController
    def get_weather
        render :json => { message: 'Test weather data' }
    end
end
