Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/get-weather-info', to: 'weather#get_weather'
    end
  end
end
