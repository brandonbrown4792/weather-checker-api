require 'net/http'
require 'json'

module OpenWeather
    class GetWeather
        @base_url = 'https://api.openweathermap.org/data/2.5/weather'

        def self.by_city(city)
            params = { :q => city, :appid => ENV['API_KEY']}
            
            return get_response(params)
        end

        def self.by_coords(latitude, longitude)
           params = { :lat => latitude, :lon => latitude, :appid => ENV['API_KEY']}

           return get_response(params)
        end

        private

        def self.get_response(params)
            uri = URI(@base_url)
            uri.query = URI.encode_www_form(params)

            response = Net::HTTP.get_response(uri)
            return JSON.parse(response.body)
        end
    end
end